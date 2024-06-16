package com.samssak.lms.jwt;

import com.samssak.lms.dto.CustomUserDetails;
import com.samssak.lms.entity.Member;
import io.jsonwebtoken.ExpiredJwtException;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.OncePerRequestFilter;

@RequiredArgsConstructor
public class JWTFilter extends OncePerRequestFilter {

  // JWTUtil 주입
  private final JWTUtil jwtUtil;

  @Override
  protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response,
      FilterChain filterChain) throws ServletException, IOException {

    // # 1. 헤더에서 access키에 담긴 토큰 가져오기
    String accessToken = request.getHeader("access");

    // # 2. 토큰이 없을 경우 : 다음필터로 넘기기
    if (accessToken == null) {
      filterChain.doFilter(request, response);

      return;
    }

    // 3. 토큰 만료 여부 확인 : 만료시 다음 필터로 넘기지 않음
    try {

      jwtUtil.isExpired(accessToken);

    } catch (ExpiredJwtException e) {
      // response body
      PrintWriter writer = response.getWriter();
      writer.print("access token expired");

      // response status code
      response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);  // 401번 오류
      return;
    }

    // # 4. 토큰이 access인지 검증 (발급시 페이로드에 명시)
    String category = jwtUtil.getCategory(accessToken);

    if (!category.equals("access")) { // 아닐 경우
      // response body
      PrintWriter writer = response.getWriter();
      writer.print("invalid access token");

      // response status code
      response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);  // 401번 오류
      return;
    }

    // # 5. 유효한 정상적인 access 토큰일 경우 : email, role값 획득
    String email = jwtUtil.getEmail(accessToken);
    String role = jwtUtil.getRole(accessToken);

    Member member = new Member();
    member.setEmail(email);
    member.setRole(role);
    // 가져온 정보로 DB조회 + 해당하는 데이터 가져오기
    CustomUserDetails customUserDetails = new CustomUserDetails(member);

    Authentication authToken = new UsernamePasswordAuthenticationToken(customUserDetails,
        null, customUserDetails.getAuthorities());
    SecurityContextHolder.getContext().setAuthentication(authToken);

    filterChain.doFilter(request, response);

  }
}



