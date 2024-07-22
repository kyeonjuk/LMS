package com.samssak.lms.service;

import com.samssak.lms.entity.Course;
import com.samssak.lms.model.CourseInput;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface SearchService {

  /**
   * 강의 패키지 조회 findById
   */
  public CourseInput findCourseById(int id);

  /**
   * 강의 패키지 조회 + 페이징 + 검색 키워드
   */
  public Page<Course> searchCourse(String keyword, Pageable pageable);

  /**
   * 강의 패키지 조회 + 페이징
   */
  public Page<Course> pagingCourse(Pageable pageable);

}
