package com.samssak.lms.service;

import com.samssak.lms.entity.Member;
import com.samssak.lms.dto.CustomUserDetails;
import com.samssak.lms.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CustomUserDetailService implements UserDetailsService {

  private final MemberRepository memberRepository;

  @Override
  public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

    // DB에서 조회
    Member member = memberRepository.findByEmail(username);

    if (member != null) {

      // UserDetails에 담아서 return하면 AuthenticationManager가 검증함
      return new CustomUserDetails(member);
    }

    return null;
  }

}
