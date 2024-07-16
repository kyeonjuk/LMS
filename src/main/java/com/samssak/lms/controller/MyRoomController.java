package com.samssak.lms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyRoomController {

  // 마이룸 - 수강중인 강좌 (마이룸 메인페이지)
  @GetMapping("/myRoom")
  public String myRoom() {
    return "page/myRoom/purchase";
  }

  // 마이룸 - 장바구니
  @GetMapping("/myRoom/cart")
  public String cart() {
    return "page/myRoom/cart";
  }

}
