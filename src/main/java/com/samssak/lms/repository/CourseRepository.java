package com.samssak.lms.repository;

import com.samssak.lms.entity.Course;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CourseRepository extends JpaRepository<Course, Integer> {

  // findBy컬럼명Containing
  //  ㄴ findBy 뒤의 내용 : where 조건절에 해당
  //  ㄴ findBy컬럼명 + Containing : 해당 컬럼에 대한 keyword값의 like 검색이 가능!
  Page<Course> findByTitleContaining(String keyword, Pageable pageable);

  Course findById(int id);

}
