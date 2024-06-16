package com.samssak.lms.jwt;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@RequiredArgsConstructor
// 안쓰는중
public class LoginFilter extends UsernamePasswordAuthenticationFilter {

  // # 3. 토큰 정보 검증을 위한 AuthenticationManager 필터 주입
  private final AuthenticationManager authenticationManager;

  // # 7. 로그인 토큰 발급을 위한 JWTUtil 주입
  private final JWTUtil jwtUtil;

  @Override
  public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response) throws AuthenticationException {

    // # 1. 클라이언트 요청에서 아이디, 패스워드 가로채기 (request의 obtainUsername, obtainPassword)
    String username = obtainUsername(request);
    String password = obtainPassword(request);

    // # 2. 1의 정보를 token에 담기 ( 다음필터<authenticationManager>로 전달하기 위해 )
    UsernamePasswordAuthenticationToken authToken = new UsernamePasswordAuthenticationToken(username, password, null);

    // # 4. 토큰 정보를 검증하기 위해 AuthenticationManager 필터로 전달
    return authenticationManager.authenticate(authToken);
  }


}
