package com.samssak.lms.service;

import com.samssak.lms.entity.Category;
import com.samssak.lms.entity.Course;
import com.samssak.lms.entity.Member;
import com.samssak.lms.model.CourseInput;
import com.samssak.lms.model.MemberInput;
import java.io.IOException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.multipart.MultipartFile;

public interface AdminService {

  /**
   * 회원,강사 관리 목록 + 페이징
   */
  public Page<Member> pagingMember(String role, Pageable pageable);

  /**
   * 카테고리 목록 + 페이징
   */
  public Page<Category> pagingCategory(Pageable pageable);

  /**
   * 강의 패키지 목록 + 페이징
   */
  public Page<Course> pagingCourse(Pageable pageable);

  /**
   * 강사 등록
   */
  public boolean teacherAdd(MemberInput memberInput, MultipartFile file);


  /**
   * 회원 정보 조회
   */
  public Member findMember(String email);

  /**
   * 강의 패키지 등록
   */
  public boolean courseAdd(CourseInput courseInput);

  /**
   * 강의 패키지 수정
   */
  public boolean courseUpdate(CourseInput courseInput);

  /**
   * 강의 패키지 삭제
   */
  public boolean courseDelete(int id);

}
