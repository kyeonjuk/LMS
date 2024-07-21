package com.samssak.lms.service.impl;

import com.samssak.lms.entity.Category;
import com.samssak.lms.entity.Course;
import com.samssak.lms.entity.Member;
import com.samssak.lms.model.CategoryInput;
import com.samssak.lms.model.CourseInput;
import com.samssak.lms.model.MemberInput;
import com.samssak.lms.repository.CategoryRepository;
import com.samssak.lms.repository.CourseRepository;
import com.samssak.lms.repository.MemberRepository;
import com.samssak.lms.service.AdminService;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.time.LocalDateTime;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Service
@RequiredArgsConstructor
public class AdminServiceImpl implements AdminService {

  private final MemberRepository memberRepository;
  private final CategoryRepository categoryRepository;
  private final BCryptPasswordEncoder bCryptPasswordEncoder;
  private final CourseRepository courseRepository;

  @Override
  public Page<Member> pagingMember(String role, Pageable pageable) {

    Page<Member> memberList = memberRepository.findByRole(role, pageable);

    return memberList;
  }

  @Override
  public Member findMember(String email) {

    Member member = memberRepository.findByEmail(email);

    return member;
  }

  @Override
  public boolean courseAdd(CourseInput courseInput) {

    Course course = Course.builder()
        .name(courseInput.getName())
        .email(courseInput.getEmail())
        .price(courseInput.getPrice())
        .description(courseInput.getDescription())
        .title(courseInput.getTitle())
        .categoryId(courseInput.getCategoryId())
        .active(courseInput.isActive())
        .createDate(LocalDateTime.now())
        .build();

    Course check = courseRepository.save(course);

    if (check != null) {
      return true;
    }

    return false;
  }

  @Override
  public boolean courseUpdate(CourseInput courseInput) {

    Course course = Course.builder()
        .id(courseInput.getId())
        .name(courseInput.getName())
        .email(courseInput.getEmail())
        .price(courseInput.getPrice())
        .description(courseInput.getDescription())
        .title(courseInput.getTitle())
        .categoryId(courseInput.getCategoryId())
        .active(courseInput.isActive())
        .rating(courseInput.getRating())
        .createDate(courseInput.getCreateDate())
        .updateDate(LocalDateTime.now())
        .build();

    Course check = courseRepository.save(course);

    if (check != null) {
      return true;
    }

    return false;
  }

  @Override
  public boolean courseDelete(int id) {

    try {
      courseRepository.deleteById(id);
    } catch (Exception e) {
      return false;
    }

    return true;
  }

  @Override
  public Page<Category> pagingCategory(Pageable pageable) {

    Page<Category> categoryList = categoryRepository.findAll(pageable);

    return categoryList;
  }

  @Override
  public Page<Course> pagingCourse(Pageable pageable) {

    Page<Course> courseList = courseRepository.findAll(pageable);

    return courseList;
  }

  @Override
  public boolean teacherAdd(MemberInput memberInput, MultipartFile file) {

    String namePath = "";

    if (file != null) {
      String localPath = new File("").getAbsolutePath(); // 프로젝트 루트 디렉토리 경로
      String filePath = "/src/main/resources/static/files/";
      namePath = memberInput.getEmail() + file.getOriginalFilename();
      String savePath = localPath + filePath + namePath;

      File newFile = new File(savePath);

      try {
        FileCopyUtils.copy(file.getInputStream(), new FileOutputStream(newFile));
      } catch (IOException e) {
      }

      Member member = Member.builder()
          .email(memberInput.getEmail())
          .name(memberInput.getName())
          .phone(memberInput.getPhone())
          .birth(memberInput.getBirth())
          .password(bCryptPasswordEncoder.encode(memberInput.getPassword()))
          .role("teacher")
          .createDate(LocalDateTime.now())
          .active("1")
          .profile_image(namePath)
          .build();

      try {
        memberRepository.save(member);
      } catch (Exception e) {
        return false;
      }

    }

    return true;
  }
}