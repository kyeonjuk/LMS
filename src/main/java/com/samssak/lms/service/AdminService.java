package com.samssak.lms.service;

import com.samssak.lms.entity.Member;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface AdminService {

  public Page<Member> pagingMember(String role, Pageable pageable);

  // 회원 정보 조회
  public Member findMember(String email);

}
