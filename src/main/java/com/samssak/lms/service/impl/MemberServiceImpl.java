package com.samssak.lms.service.impl;

import com.samssak.lms.components.MailComponents;
import com.samssak.lms.entity.Member;
import com.samssak.lms.model.MemberInput;
import com.samssak.lms.repository.MemberRepository;
import com.samssak.lms.service.MemberService;
import java.time.LocalDateTime;
import java.util.Optional;
import java.util.UUID;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {

  private final MemberRepository memberRepository;
  private final MailComponents mailComponents;
  private final BCryptPasswordEncoder bCryptPasswordEncoder;

  /**
   * 회원가입
   */
  @Override
  public boolean register(MemberInput parameter) {

    Optional<Member> optionalMember = memberRepository.findById(parameter.getEmail());

    // 가입 되어있을 경우
    if (optionalMember.isPresent()) {
      return false;

    } else {

      String email = parameter.getEmail();
      String name = parameter.getName();
      String password = parameter.getPassword();

      // 랜덤한 키값 생성 (이메일 인증키값)
      String uuid = UUID.randomUUID().toString();

      Member member = Member.builder()
          .email(email)
          .name(name)
          .phone(parameter.getPhone())
          .birth(parameter.getBirth())
          .password(bCryptPasswordEncoder.encode(password))
          .role("student")
          .createDate(LocalDateTime.now())
          .active("0")
          .active_key(uuid)
          .profile_image(parameter.getProfile_image())
          .build();

      memberRepository.save(member);

      // 이메일 인증
      String subject = "[샘싹] 회원가입을 축하드립니다.";
      String text = "<div class=\"mail_view_contents_inner\" data-translate-body-53082=\"\">"
          + "    <div>"
          + "        <table style=\"width:750px;margin:0 auto;background:#fff;\" cellpadding=\"0\" cellspacing=\"0\">"
          + "            <tbody>"
          + "                <tr>"
          + "                    <td style=\"padding:50px 50px 80px 50px;background:#fff\">"
          + "                        <p style=\"font-size:30px;font-weight:700;line-height:1em;margin:0 0 20px 0;\">샘싹 회원이 되신것을 축하드립니다.</p>"
          + "                        <p style=\"font-size:16px;line-height:26px;\">"
          + "                            안녕하세요. <strong>" + name + "</strong>님<br>"
          + "                            샘싹의 소식과 다양한 혜택을 만나보세요."
          + "                        </p>"
          + "                        <div style=\"border-top:solid 2px #222;border-bottom:solid 1px #ddd;padding:20px 30px;margin-top:30px;\">"
          + "                            <p style=\"line-height:32px;font-size:16px;\">"
          + "                                <span style=\"display:inline-block;width:90px\">이름</span>"
          + "                                <strong>" + name + "</strong>"
          + "                            </p>\n"
          + "                            <p style=\"line-height:32px;font-size:16px;\">"
          + "                                <span style=\"display:inline-block;width:90px\">아이디</span>"
          + "                                <strong>" + email + "</strong>"
          + "                            </p>"
          + "                        </div>"
          + "                        <div style=\'text-align:center;width:300px;margin:40px auto 0;\'>"
          + "                            <a href=\"http://localhost:8080/member/active_key?email="+ email + "&active_key=" + uuid + "\" style=\'display:block;color:#fff;background:#1d5b22;text-align:center;padding:15px 0;width:300px;font-size:18px;text-decoration:none;font-weight:500;\'>이메일 인증하기</a>"
          + "                        </div>"
          + "                    </td>"
          + "                </tr>"
          + "            </tbody>"
          + "        </table>"
          + "    </div>"
          + "</div>";

      mailComponents.sendMail(email, subject, text);

      return true;

    }
  }


  /**
   * 이메일 중복 검사
   */
  @Override
  public boolean checkEmail(String email) {

    if (memberRepository.existsByEmail(email)) {
      return true;
    }

    return false;
  }


  /**
   * 이메일 인증키 확인
   */
  @Override
  public boolean checkActive_key(String email, String key) {

    if (memberRepository.existsByEmail(email)) {
      Optional<Member> memberOptional = memberRepository.findById(email);

      Member member = memberOptional.get();
      String key1 = member.getActive_key();

      if (key1.equals(key)) {

        member.setActive("1");
        memberRepository.save(member);

        return true;
      }
    }

    return false;
  }

  @Override
  public MemberInput findByEmail(String email) {

    Member member = memberRepository.findByEmail(email);

    MemberInput memberInput = MemberInput.builder()
        .email(member.getEmail())
        .name(member.getName())
        .createDate(member.getCreateDate())
        .phone(member.getPhone())
        .password(member.getPassword())
        .role(member.getRole())
        .birth(member.getBirth())
        .active(member.getActive())
        .profile_image(member.getProfile_image())
        .build();

    return memberInput;
  }

  @Override
  public boolean deleteByEmail(String email) {

    try {
      memberRepository.deleteByEmail(email);
    } catch (Exception e) {
      return false;
    }

    return true;
  }


}
