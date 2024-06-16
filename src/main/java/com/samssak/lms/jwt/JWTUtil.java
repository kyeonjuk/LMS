package com.samssak.lms.jwt;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.Jwts.SIG;
import java.nio.charset.StandardCharsets;
import java.util.Date;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;


@Component
public class JWTUtil {  // JWTUtil : 0.12.3 버전

  // 암호화 키를 SecretKey 객체 타입으로 저장하기 위해 변수 생성
  private final SecretKey secretKey;

  // # 1. 암호화 키 불러오기 (application.xml의 spring.jwt.secret)
  public JWTUtil(@Value("${spring.jwt.secret}")String secret) {
    secretKey = new SecretKeySpec(secret.getBytes(StandardCharsets.UTF_8)
        , SIG.HS256.key().build().getAlgorithm());
  }


  // # 2. 검증 (email, 권한, 토큰 만료여부 검증)
  //    ㄴ .verifyWith(암호화키) : 해당 서버에서 발행한 토큰이 맞는지, 암호화 키랑 맞는지 확인! (위변조일 경우 : 예외가 발생)
  public String getEmail(String token) {
    return Jwts.parser().verifyWith(secretKey).build().parseSignedClaims(token).getPayload().get("email", String.class);
  }

  public String getName(String token) {
    return Jwts.parser().verifyWith(secretKey).build().parseSignedClaims(token).getPayload().get("name", String.class);
  }

  public String getRole(String token) {
    return Jwts.parser().verifyWith(secretKey).build().parseSignedClaims(token).getPayload().get("role", String.class);
  }

  public boolean isExpired(String token) {
    return Jwts.parser().verifyWith(secretKey).build().parseSignedClaims(token).getPayload().getExpiration().before(new Date());
  }

  public String getCategory(String token) {
    return Jwts.parser().verifyWith(secretKey).build().parseSignedClaims(token).getPayload().get("category", String.class);
  }

  // # 3. 토큰 생성
  public String createJwt(String category, String email, String role, Long expiredMs, String name) {

    return Jwts.builder()
        .claim("category", category)
        .claim("email", email)
        .claim("role", role)
        .claim("name", name)
        .issuedAt(new Date(System.currentTimeMillis()))   // 토큰 발행일
        .expiration(new Date(System.currentTimeMillis() + expiredMs))
        .signWith(secretKey)  // 암호화
        .compact();
  }

}


