package com.samssak.lms.controller;

import com.samssak.lms.entity.Category;
import com.samssak.lms.entity.Member;
import com.samssak.lms.model.CategoryInput;
import com.samssak.lms.model.MemberInput;
import com.samssak.lms.service.AdminService;
import com.samssak.lms.service.CategoryService;
import com.samssak.lms.service.MemberService;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequiredArgsConstructor
public class AdminController {

  private final AdminService adminService;
  private final CategoryService categoryService;
  private final MemberService memberService;

  // 회원 정보 관리 페이지 + pageable
  // 넘어올 Pageable 의 주요 파라미터
  // page : 요청할 페이지 번호
  // size : 한 페이지당 조회 할 갯수 (default : 20)
  // sortBy : Sorting 에 대한 값 설정하는 파라미터 (default : 오름차순)
  // ㄴ sort 표기 - 정렬할필드명, 정렬기준 (ex. createDate,desc / ex. createDate,asc)
  @GetMapping("/admin")
  public String admin(final Pageable pageable, Model model,
      @RequestParam(defaultValue="null") String sortName) {

    // 학생
    String role = "student";

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
    Page<Member> memberList = adminService.pagingMember(role, pageable);

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

  // [회원 + 강사] 회원, 강사 정보 상세 페이지
  @GetMapping("/admin/member/{email}")
  public String memberDetail(@PathVariable String email, Model model) {

    Member member = adminService.findMember(email);

    model.addAttribute("member", member);


    return "/admin/member_detail";
  }


  // [강사] 강사 정보 관리 목록 페이지
  @GetMapping("/admin/teacher")
  public String teacher(final Pageable pageable, Model model,
      @RequestParam(defaultValue="null") String sortName) {

    // 강사
    String role = "teacher";

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
    Page<Member> memberList = adminService.pagingMember(role, pageable);

    // 1 페이지 ~ 마지막 페이지
    List<Integer> pageList = new ArrayList<>();
    for (int i = 1; i <= memberList.getTotalPages(); i++) {
      pageList.add(i);
    }

    model.addAttribute("memberList", memberList);
    model.addAttribute("sortName", sortName);
    model.addAttribute("sort", sort);
    model.addAttribute("pageList", pageList);

    return "/admin/admin_teacher";
  }

  /**
   * 카테고리 목록
   */
  @GetMapping("/admin/category-list")
  public String categoryList(final Pageable pageable, Model model,
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
    Page<Category> categoryList = adminService.pagingCategory(pageable);

    // 1 페이지 ~ 마지막 페이지
    List<Integer> pageList = new ArrayList<>();
    for (int i = 1; i <= categoryList.getTotalPages(); i++) {
      pageList.add(i);
    }

    model.addAttribute("categoryList", categoryList);
    model.addAttribute("sortName", sortName);
    model.addAttribute("sort", sort);
    model.addAttribute("pageList", pageList);

    return "/admin/category_list";
  }

  /**
   * [관리자] 카테고리 등록 form
   */
  @GetMapping("/admin/category-add")
  public String categoryAdd() {

    return "/admin/category_add";
  }


  /**
   * [관리자] 카테고리 등록 pro
   */
  @PostMapping("/admin/category-add-pro")
  public String categoryAddPro(CategoryInput category, Model model) {

    Boolean result = categoryService.categoryAdd(category);

    String msg = "";
    String url = "";

    if (result) {
      msg = "카테고리가 정상적으로 등록되었습니다.";
      url = "/admin/category-list";

    } else {
      msg = "카테고리가 정상적으로 등록되지 않았습니다.\n다시 시도해주세요.";
      url = "/admin/category-add";
    }

    model.addAttribute("msg", msg);
    model.addAttribute("url", url);

    return "alert.html";
  }

  /**
   * [관리자] 카테고리 수정 form
   */
  @GetMapping("/admin/category-update/{id}")
  public String categoryUpdate(@PathVariable int id, Model model) {

    Category category = categoryService.findById(id);

    model.addAttribute("category", category);

    return "/admin/category_update";
  }

  /**
   * [관리자] 카테고리 수정 Pro
   */
  @PostMapping("/admin/category-update-pro/{id}")
  public String categoryUpdatePro(@PathVariable int id, CategoryInput categoryInput, Model model) {

    boolean result = categoryService.categoryUpdate(categoryInput);

    String msg = "카테고리 수정 성공!";
    String url = "/admin/category-list";

    if (result) {

    } else {
      msg = "카테고리 수정 실패\n다시 시도해주세요.";
      url = "/admin/category-update/" + id;
    }

    model.addAttribute("msg", msg);
    model.addAttribute("url", url);

    return "alert.html";
  }

  /**
   * [관리자] 카테고리 삭제
   */
  @GetMapping("/admin/category-delete/{id}")
  public String categoryDelete(@PathVariable int id, Model model) {

    Boolean result = categoryService.categoryDelete(id);

    String msg = "카테고리 삭제 성공!";
    String url = "/admin/category-list";

    if (result) {

    } else {
      msg = "카테고리 삭제 실패\n다시 시도해주세요.";
    }

    model.addAttribute("msg", msg);
    model.addAttribute("url", url);

    return "alert.html";
  }



  /**
   * [관리자] 강사 등록 form
   */
  @GetMapping("/admin/teacher-add")
  public String teacherAdd() {
    return "/admin/teacher_add";
  }

  /**
   * [관리자] 강사 등록 pro
   */
  @PostMapping("/admin/teacher-add-pro")
  public String teacherAddPro(MemberInput memberInput, Model model,
      MultipartFile file) {

    Boolean result = adminService.teacherAdd(memberInput, file);

    String msg = "";
    String url = "";

    if (result) {
      msg = "정상적으로 등록되었습니다.";
      url = "/admin/teacher";

    } else {
      msg = "정상적으로 등록되지 않았습니다.\n다시 시도해주세요.";
      url = "/admin/teacher-add";
    }

    model.addAttribute("msg", msg);
    model.addAttribute("url", url);

    return "alert.html";
  }

  /**
   * 회원/강사 수정 form
   */
  @GetMapping("/admin/member-update/{email}")
  public String memberUpdate(@PathVariable String email, Model model) {

    MemberInput member = memberService.findByEmail(email);

    if (member != null) {

      model.addAttribute("member", member);

      return "/admin/member_update";

    } else {
      String msg = "없는 회원 정보입니다.\n 다시 시도해주세요.";
      String url = "/admin";

      model.addAttribute("msg", msg);
      model.addAttribute("url", url);

      return "alert.html";
    }

  }

  /**
   * 회원/강사 수정 pro
   */
  @PostMapping("/admin/member-update-pro/{email}")
  public String memberUpdatePro(@PathVariable String email, MemberInput memberInput, Model model,
      MultipartFile newFile) {

    String msg = "회원/강사 정보 수정 완료!";
    String url = "/admin/member/" + memberInput.getEmail();

    // 기존 값 가져오기
    MemberInput before = memberService.findByEmail(email);

    // file 교체 (없으면 기존 값 유지)
    if (newFile.isEmpty()) {
      memberInput.setProfile_image(before.getProfile_image());
    } else {
       Boolean result = adminService.teacherAdd(memberInput, newFile);

       if (!result) {
         msg = "회원/강사 정보 수정 실패!\n 다시 시도해주세요.";
         url = "/admin/member-update/" + email;
       }

    }

    model.addAttribute("msg", msg);
    model.addAttribute("url", url);

    return "alert.html";
  }

  /**
   * 회원/강사 삭제
   */
  @GetMapping("/admin/member-delete/{email}")
  public String memberDelete(@PathVariable String email, Model model) {

    boolean result = memberService.deleteByEmail(email);

    String msg = "";
    String url = "";

    if (result) {
      msg = "정상적으로 삭제되었습니다.";
      url = "/admin";

    } else {
      msg = "정상적으로 삭제되지 않았습니다.\n다시 시도해주세요.";
      url = "/admin/member/" + email;
    }

    model.addAttribute("msg", msg);
    model.addAttribute("url", url);

    return "alert.html";
  }

}
