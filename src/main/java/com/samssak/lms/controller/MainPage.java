package com.samssak.lms.controller;

import com.samssak.lms.components.MailComponents;
import com.samssak.lms.entity.Member;
import com.samssak.lms.jwt.JWTUtil;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;

@Controller
@RequiredArgsConstructor
public class MainPage {

    // 메일 테스트
    private final MailComponents mailComponents;

    // 로그인 정보가져오기
    private final JWTUtil jwtUtil;

    @RequestMapping("/")
    public String main(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {

        String name = SecurityContextHolder.getContext().getAuthentication().getName();

        return "view/main";
    }

    @RequestMapping("/test")
    public String test(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {

        String name = SecurityContextHolder.getContext().getAuthentication().getName();

        return "page/test";
    }

}



