package com.samssak.lms.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import java.time.LocalDateTime;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Data
@Entity
public class Member {

  @Id
  private String email;

  private String name;
  private String password;
  private String phone;
  private String birth;

  @Column(name = "create_date")
  private LocalDateTime createDate;

  private String role;    // admin : 관리자, teacher : 강사, student : 학생
  private String category; // role이 teacher일 때만 작성 // 예시 ) 프론트엔드, 백엔드, 모바일앱개발, 알고리즘, 자격증
  private String active;  // 0 : 비활성화 , 1 : 활성화(이메일 인증시)
  private String active_key;  // 이메일 인증 키
  private String profile_image;

}

