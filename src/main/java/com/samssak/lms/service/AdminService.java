package com.samssak.lms.service;

import com.samssak.lms.entity.Member;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface AdminService {

  public Page<Member> pagingMember(Pageable pageable);

  public boolean pagingCourse();
}
