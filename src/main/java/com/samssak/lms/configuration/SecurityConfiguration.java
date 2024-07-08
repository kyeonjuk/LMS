package com.samssak.lms.configuration;

import com.samssak.lms.jwt.CustomAuthenticationFailureHandler;
import com.samssak.lms.jwt.CustomAuthenticationSuccessHandler;
import com.samssak.lms.jwt.JWTFilter;
import com.samssak.lms.jwt.JWTUtil;
import com.samssak.lms.jwt.LoginFilter;
import com.samssak.lms.jwt.CustomLogoutFilter;
import com.samssak.lms.repository.RefreshRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.authentication.logout.LogoutFilter;

@Configuration
@EnableWebSecurity
@RequiredArgsConstructor
public class SecurityConfiguration {

  // SuccessHandler, FailureHander 커스텀 클래스 주입
  private final CustomAuthenticationSuccessHandler successHandler;
  private final CustomAuthenticationFailureHandler failureHandler;

  // [*] 로그인 커스텀 필터 등록에 필요한 AuthenticationConfiguration 주입
  private final AuthenticationConfiguration authenticationConfiguration;

  // [&] 로그인 토큰 발급을 위한 JWTUtil 주입
  private final JWTUtil jwtUtil;

  // [%] 로그인 시 -> Refresh 토큰을 서버에 저장 (RefreshRepository 의존성 주입)
  private final RefreshRepository refreshRepository;

  @Bean // 패스워드 암호화 메소드
  public BCryptPasswordEncoder bCryptPasswordEncoder() {

    return new BCryptPasswordEncoder();
  }

  @Bean // [*] 로그인 커스텀 필터 등록에 필요한 AuthenticationManager 필터 빈 등록
  public AuthenticationManager authenticationManager(AuthenticationConfiguration configuration) throws Exception {
    return configuration.getAuthenticationManager();
  }


  @Bean
  public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {

    // CSRF : disable
    http.csrf((auth) -> auth.disable());

    // Form 로그인 방식 (제공되는 기본 로그인 form) : disable
    //http.formLogin((auth) -> auth.disable());

    http
        .formLogin()                              // 로그인 설정
        .loginPage("/member/login")               // 로그인 페이지 링크
        .loginProcessingUrl("/member/loginPro")   // 해당 페이지로 전달되는 값을 가로채기
        .usernameParameter("email")               // form의 해당 파라미터값 가져오기
        .passwordParameter("password")
        .defaultSuccessUrl("/")                   // 로그인이 끝나고 보여줄 기본 주소
        .successHandler(successHandler)           // 로그인 성공시 실행될 핸들러
        .failureHandler(failureHandler);          // 로그인 실패시 실행될 핸들러

    // http basic 인증방식 : disable
    http.httpBasic((auth) -> auth.disable());

    // 경로 인가 작업
    http.authorizeHttpRequests((auth) -> auth
            .requestMatchers("/**","/member/**").permitAll()  // 해당 url로의 접근 무조건 허용
            .requestMatchers("/admin/**").hasRole("admin")     // 해당 url로의 접근은 ADMIN권한을 가진 인자만 접근 허용
            .requestMatchers("/reissue").permitAll()  // 해당 url로의 접근 무조건 허용
            .anyRequest().authenticated()     // 그 외 : 로그인을 해야 접근 가능
    );

    // 세션 설정 : stateless (서버측 메모리에 저장X -> 동일한 브라우저에서 요청해도 새로운 사용자로 인식)
    http
        .sessionManagement((session) -> session
                .sessionCreationPolicy(SessionCreationPolicy.STATELESS));

    // JWTFilter : 토큰 검증 커스텀 필터 등록
    http
        .addFilterBefore(new JWTFilter(jwtUtil), LoginFilter.class);

    // [*] 로그인 커스텀 필터 등록 (UsernamePasswordAuthenticationFilter를 커스텀한 필터)
    //  ㄴ addFilterAt(등록필터, 특정필터.class) : 특정한 필터 자리에 등록 (기존 Username~필터를 대체!)
    //  ㄴ addFilterBefore(등록필터, 특정필터.class) : 특정한 필터 이전에 등록
    //  ㄴ addFilterAfter(등록필터, 특정필터.class) : 특정한 필터 이후에 등록
    http
        .addFilterAt(new LoginFilter(authenticationManager(authenticationConfiguration), jwtUtil), UsernamePasswordAuthenticationFilter.class);


    // [~] 로그아웃 커스텀 필터 등록
    http
        .addFilterBefore(new CustomLogoutFilter(jwtUtil, refreshRepository), LogoutFilter.class);

    return http.build();
  }

}


