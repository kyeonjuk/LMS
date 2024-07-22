package com.samssak.lms.model;

import com.samssak.lms.entity.Member;
import java.time.LocalDateTime;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class CourseInput {

  private int id;
  private String title;
  private String email;   // 강사이메일
  private String name;    // 강사 이름
  private int categoryId;
  private float rating;
  private String description;
  private int price;
  private boolean active;
  private LocalDateTime createDate;
  private LocalDateTime updateDate;

}
