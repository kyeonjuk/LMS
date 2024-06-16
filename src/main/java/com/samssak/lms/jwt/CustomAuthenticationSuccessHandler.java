package com.samssak.lms.jwt;

import com.samssak.lms.entity.Member;
import com.samssak.lms.entity.RefreshEntity;
import com.samssak.lms.repository.MemberRepository;
import com.samssak.lms.repository.RefreshRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

@RequiredArgsConstructor
@Component
// 로그인 성공시 실행되는 Handler (JWT 토큰 발급)
public class CustomAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

  // Refresh 토큰 저장 repository 주입
  private final RefreshRepository refreshRepository;

  private final MemberRepository memberRepository;

  // # 7. 로그인 토큰 발급을 위한 JWTUtil 주입
  private final JWTUtil jwtUtil;

  @Override
  public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
      Authentication authentication) throws IOException, ServletException {

    // 유저 정보
    String email = authentication.getName();


    Collection<? extends GrantedAuthority> authorities  = authentication.getAuthorities();
    Iterator<? extends GrantedAuthority> iterator = authorities.iterator();
    GrantedAuthority auth = iterator.next();
    String role = auth.getAuthority();
    Member member = memberRepository.findByEmail(email);
    String name = member.getName();

    // 토큰 생성 (Refresh, Access 토큰 )
    String access = jwtUtil.createJwt("access", email, role, 600000L, name);     // 10분
    String refresh = jwtUtil.createJwt("refresh", email, role, 86400000L, name); // 24시간

    // +) Refresh 토큰 서버 저장
    addRefreshEntity(email, refresh, 86400000L, name);

    request.getSession().setAttribute("name", name);
    request.getSession().setAttribute("email", email);
    request.getSession().setAttribute("role", role);

    // 응답 설정 (access : 로컬 스토리지, refresh : 쿠키 에 저장)
    response.setHeader("access", access);
    response.addCookie(createCookie("refresh", refresh));   // 쿠키에 refresh 토큰 저장
    response.sendRedirect("/");             // 로그인 성공 시 200

  }

  // 쿠키 생성 메소드
  private Cookie createCookie(String key, String value) {

    Cookie cookie = new Cookie(key, value);
    cookie.setMaxAge(24*60*60);   // 쿠키 생명주기 (24시간)
    //cookie.setSecure(true);     // https 통신을 진행할 경우 활성화!
    //cookie.setPath("/");        // 쿠키가 적용될 범위
    cookie.setHttpOnly(true);     // http로만 접근가능 (자바스크립트로 해당 쿠키 접근불가 설정) : XSS 방어

    return cookie;
  }


  // Refresh 토큰 서버저장 메소드
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

