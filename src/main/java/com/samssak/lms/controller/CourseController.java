package com.samssak.lms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CourseController {


  // 강사조회
  @GetMapping("/course/teacher")
  public String teacher() {

    return "page/teacher";
  }



}
