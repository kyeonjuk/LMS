package com.samssak.lms.service.impl;

import com.samssak.lms.entity.Course;
import com.samssak.lms.model.CourseInput;
import com.samssak.lms.repository.CourseRepository;
import com.samssak.lms.service.SearchService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class SearchServiceImpl implements SearchService {

  private final CourseRepository courseRepository;

  @Override
  public CourseInput findCourseById(int id) {

    Course course = courseRepository.findById(id);

    CourseInput courseInput = CourseInput.builder()
        .email(course.getEmail())
        .name(course.getName())
        .price(course.getPrice())
        .id(course.getId())
        .title(course.getTitle())
        .createDate(course.getCreateDate())
        .active(course.isActive())
        .description(course.getDescription())
        .rating(course.getRating())
        .categoryId(course.getCategoryId())
        .updateDate(course.getUpdateDate())
        .build();

    return courseInput;
  }

  @Override
  public Page<Course> searchCourse(String keyword, Pageable pageable) {

    Page<Course> courseList = courseRepository.findByTitleContaining(keyword, pageable);

    return courseList;
  }

  @Override
  public Page<Course> pagingCourse(Pageable pageable) {

    Page<Course> courseList = courseRepository.findAll(pageable);

    return courseList;
  }


}
