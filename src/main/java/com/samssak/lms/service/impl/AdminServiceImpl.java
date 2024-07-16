package com.samssak.lms.service.impl;

import com.samssak.lms.entity.Member;
import com.samssak.lms.repository.MemberRepository;
import com.samssak.lms.service.AdminService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AdminServiceImpl implements AdminService {

  private final MemberRepository memberRepository;

  @Override
  public Page<Member> pagingMember(String role, Pageable pageable) {

    Page<Member> memberList = memberRepository.findByRole(role, pageable);

    return memberList;
  }

  @Override
  public Member findMember(String email) {

    Member member = memberRepository.findByEmail(email);

    return member;
  }


}
