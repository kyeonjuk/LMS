package com.samssak.lms.controller;

import com.samssak.lms.model.MemberInput;
import com.samssak.lms.service.MemberService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequiredArgsConstructor  // 생성자 생략 가능
@Controller
public class MemberController {

  private final MemberService memberService;

  // 회원가입 form
  @GetMapping("/member/register")
  public String register() {
    return "member/register";
  }

  // 이메일 중복 체크
  @GetMapping("/member/checkEmail")
  public ResponseEntity<Boolean> checkEmail(@RequestParam String email) {

    boolean result = memberService.checkEmail(email);

    return ResponseEntity.ok().body(result);
  }



  // 회원가입 pro
  @PostMapping("/member/registerPro")
  public String registerPro(HttpServletRequest request,
      HttpServletResponse response, MemberInput parameter, Model model) {

    // 회원가입 문구
    String msg;
    String url;

    // 회원가입 저장
    boolean result = memberService.register(parameter);

    if (result) {
      msg = "회원가입이 성공적으로 완료되었습니다.\n이메일 인증 완료 후 로그인해주세요.";
      url = "/member/login";

    } else {
      msg = "<p>회원가입에 실패하였습니다.\n다시 시도해주세요.";
      url = "/member/register";
    }

    model.addAttribute("msg", msg);
    model.addAttribute("url", url);

    return "alert.html";
  }
  

  // 이메일 인증 확인
  @GetMapping("/member/active_key")
  public String active(@RequestParam String active_key, @RequestParam String email, Model model) {

    boolean check = memberService.checkActive_key(email, active_key);

    String msg = "";
    String url = "/member/login";

    if (check) {
      msg = "이메일 인증이 성공적으로 완료되었습니다. \n로그인하여 서비스를 이용하세요.";
    } else {
      msg = "이메일 인증에 실패했습니다. \n다시 시도해주세요.";
    }

    model.addAttribute("msg", msg);
    model.addAttribute("url", url);

    return "alert.html";
  }


  // 로그인 form
  @GetMapping("/member/login")
  public String login() {

    return "/member/login";
  }

  // 로그인 실패 form
  @GetMapping("/member/loginFail")
  public String loginFail(Model model) {

    String msg = "로그인에 실패했습니다. 아이디와 비밀번호를 확인해주세요.";
    String url = "/member/login";

    model.addAttribute("msg", msg);
    model.addAttribute("url", url);

    return "alert.html";
  }


  // 로그아웃 시 - 세션 삭제
  @GetMapping("/member/del-session")
  public String delSession(HttpServletRequest request, HttpServletResponse response) {

    HttpSession session = request.getSession(false); // false: 세션이 없으면 새로 생성하지 않음

    if (session != null) {
      // 세션 속성 제거
      session.setAttribute("name", null);
      session.setAttribute("email", null);
      session.setAttribute("role", null);
    }

    return "redirect:/";
  }


  // 비밀번호 찾기
  @GetMapping("/member/findPassword")
  public String findPassword() {
    return "/member/findPassword";
  }

  // 아이디 찾기
  @GetMapping("/member/findId")
  public String findId() {
    return "/member/findId";
  }



}
