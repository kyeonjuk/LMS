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

  private String role;    // 123 : 관리자, teacher : 강사, student : 학생
  private String active;  // 0 : 비활성화 , 1 : 활성화(이메일 인증시)
  private String active_key;  // 이메일 인증 키
  private String profile_image;

}

