package com.samssak.lms.controller;

import com.samssak.lms.entity.Member;
import com.samssak.lms.service.AdminService;
import java.util.ArrayList;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class AdminController {

  private final AdminService adminService;

  // 회원 정보 관리 페이지 + pageable
  // 넘어올 Pageable 의 주요 파라미터
  // page : 요청할 페이지 번호
  // size : 한 페이지당 조회 할 갯수 (default : 20)
  // sortBy : Sorting 에 대한 값 설정하는 파라미터 (default : 오름차순)
  // ㄴ sort 표기 - 정렬할필드명, 정렬기준 (ex. createDate,desc / ex. createDate,asc)
  @GetMapping("/admin")
  public String admin(final Pageable pageable, Model model,
      @RequestParam(defaultValue="null") String sortName) {

    // 정렬 파라미터 값
    String sort = "";
    if (sortName == null) {

    } else if (sortName.equals("old")) {
      sort = "createDate,asc";
    } else if (sortName.equals("new")) {
      sort = "createDate,desc";
    } else if (sortName.equals("nameAsc")) {
      sort = "name,asc";
    } else if (sortName.equals("nameDesc")) {
      sort = "name,desc";
    }

    // 데이터 가져오기
    Page<Member> memberList = adminService.pagingMember(pageable);

    // 1 페이지 ~ 마지막 페이지
    List<Integer> pageList = new ArrayList<>();
    for (int i = 1; i <= memberList.getTotalPages(); i++) {
      pageList.add(i);
    }

    model.addAttribute("memberList", memberList);
    model.addAttribute("sortName", sortName);
    model.addAttribute("sort", sort);
    model.addAttribute("pageList", pageList);

    return "/admin/admin_member";
  }

}
