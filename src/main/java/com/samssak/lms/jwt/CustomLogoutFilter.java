package com.samssak.lms.jwt;

import com.samssak.lms.repository.RefreshRepository;
import io.jsonwebtoken.ExpiredJwtException;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.GenericFilterBean;
import org.springframework.web.filter.OncePerRequestFilter;

@Component
@RequiredArgsConstructor
public class CustomLogoutFilter extends OncePerRequestFilter  {

  private final JWTUtil jwtUtil;
  private final RefreshRepository refreshRepository;


  @Override
  protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response,
      FilterChain filterChain) throws ServletException, IOException {
    doFilter(request, response, filterChain);
  }

  private void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
      throws IOException, ServletException {

    // path and method verify
    String requestUri = request.getRequestURI();
    if (!requestUri.matches("/member/logout$")) {
      filterChain.doFilter(request, response);
      return;
    }

    String requestMethod = request.getMethod();
    if (requestMethod.equals("POST")) {
      filterChain.doFilter(request, response);
      return;
    }

    // get refresh token
    String refresh = null;
    Cookie[] cookies = request.getCookies();
    for (Cookie cookie : cookies) {
      if (cookie.getName().equals("refresh")) {
        refresh = cookie.getValue();
      }
    }

    // refresh null check
    if (refresh == null) {
      response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
      return;
    }

    // expired check
    try {
      jwtUtil.isExpired(refresh);
    } catch (ExpiredJwtException e) {
      // response status code
      response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
      return;
    }

    // 토큰이 refresh 인지 확인 (발급시 페이로드에 명시)
    String category = jwtUtil.getCategory(refresh);
    if (!category.equals("refresh")) {
      // response status code
      response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
      return;
    }

    // DB에 저장되어 있는지 확인
    Boolean isExist = refreshRepository.existsByRefresh(refresh);
    if (!isExist) {
      // response status code
      response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
      return;
    }

    // 로그아웃 진행
    // Refresh 토큰 DB 에서 제거
    refreshRepository.deleteByRefresh(refresh);

    // access, refresh 토큰 null 로 변경
    Cookie cookie = new Cookie("refresh","");
    cookie.setMaxAge(0);
    cookie.setPath("/");
    cookie.setHttpOnly(true);

    response.setHeader("access", null);
    response.addCookie(cookie);
    response.sendRedirect("/member/delSession");
  }
}
