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
  public Page<Member> pagingMember(Pageable pageable) {

    Page<Member> memberList = memberRepository.findAll(pageable);

    return memberList;
  }

  @Override
  public boolean pagingCourse() {

    return false;
  }
}
