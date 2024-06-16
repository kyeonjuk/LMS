package com.samssak.lms.controller;

import com.samssak.lms.entity.RefreshEntity;
import com.samssak.lms.jwt.JWTUtil;
import com.samssak.lms.repository.RefreshRepository;
import io.jsonwebtoken.ExpiredJwtException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Date;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
// Refresh 토큰 검증 -> Access 토큰 재발급 ( Refresh 토큰도 갱신해서 보안성 강화, 로그인 유지시간 ↑)
public class ReissueController {

  private final JWTUtil jwtUtil;

  // [+] Refresh 토큰 데이터 repository
  private final RefreshRepository refreshRepository;


  @PostMapping("/reissue")
  public ResponseEntity<?> reissue(HttpServletRequest request, HttpServletResponse response) {

    // # 1. 쿠키에서 -> Refresh 토큰 가져오기
    String refresh = null;
    Cookie[] cookies = request.getCookies();

    for (Cookie cookie : cookies) {
        if (cookie.getName().equals("refresh")) {
          refresh = cookie.getValue();
        }
    }

    // # 2. Refresh 토큰이 없을 경우
    if (refresh == null) {

      return new ResponseEntity<>("refresh token null", HttpStatus.BAD_REQUEST);
    }

    // # 3. Refresh 토큰 만료기한 체크
    try {
      jwtUtil.isExpired(refresh);
    } catch (ExpiredJwtException e) {
      return new ResponseEntity<>("refresh token expired", HttpStatus.BAD_REQUEST);
    }

    // # 4. Refresh 토큰 검사 (발급시 페이로드에 명시)
    String category = jwtUtil.getCategory("refresh");

    if (!category.equals("refresh")) {
      return new ResponseEntity<>("invalid refresh token", HttpStatus.BAD_REQUEST);
    }

    // ==== 정상 Refresh 토큰 ====

    // DB에 저장되어있는 Refresh 토큰인지 확인
    Boolean isExist = refreshRepository.existsByRefresh(refresh);

    if (!isExist) {
      return new ResponseEntity<>("invalid refresh token", HttpStatus.BAD_REQUEST);
    }

    String email = jwtUtil.getEmail(refresh);
    String role = jwtUtil.getRole(refresh);
    String name = jwtUtil.getName(refresh);

    // # 5. Access 토큰 재발급 (refresh 토큰도 갱신)
    String newAccess = jwtUtil.createJwt("access", email, role, 600000L, name);
    String newRefresh = jwtUtil.createJwt("refresh", email, role, 86400000L, name);

    // [+] Refresh 토큰 저장 DB에 기존의 Refresh토큰 삭제 후 새 Refresh 토큰으로 저장
    refreshRepository.deleteByRefresh(refresh);
    addRefreshEntity(email, refresh, 86400000L, name);

    // # 6. 응답 보내기 (access 토큰 Header 로 전달, refresh 토큰 쿠키저장)
    response.setHeader("access", newAccess);
    response.addCookie(createCookie("refresh", newRefresh));

    return new ResponseEntity<>(HttpStatus.OK);
  }

  // # 7. 쿠키 생성 메소드 (Refresh 토큰 재발급시)
  private Cookie createCookie(String key, String value) {
    Cookie cookie = new Cookie(key, value);
    cookie.setMaxAge(24*60*60); // 24시간
    //cookie.setSecure(true);
    //cookie.setPath("/");
    cookie.setHttpOnly(true);

    return cookie;
  }

  // [+] Refresh 토큰 서버에 추가
  private void addRefreshEntity(String email, String refresh, Long expiredMs, String name) {

    Date date = new Date(System.currentTimeMillis() + expiredMs);

    RefreshEntity refreshEntity = new RefreshEntity();
    refreshEntity.setEmail(email);
    refreshEntity.setName(name);
    refreshEntity.setRefresh(refresh);
    refreshEntity.setExpiration(date.toString());

    refreshRepository.save(refreshEntity);
  }

}


