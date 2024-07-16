package com.samssak.lms.service;

import com.samssak.lms.model.MemberInput;

public interface MemberService {

  // 회원가입
  public boolean register(MemberInput parameter);

  // 이메일 중복 체크
  public boolean checkEmail(String email);

  // active_key 체크
  public boolean checkActive_key(String email, String key);


}
