package com.samssak.lms.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Data
@Entity
@Table(name = "Refresh")  // 테이블명
public class RefreshEntity {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)   // 자동 증가 키 생성
  private Long id;

  private String email;
  private String name;
  private String refresh;
  private String expiration;

}


