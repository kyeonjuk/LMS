package com.samssak.lms.model;

import com.samssak.lms.entity.Category;
import java.time.LocalDateTime;
import lombok.Data;

@Data
public class CategoryInput {

  private int id;
  private String name;
  private String description;
  private Boolean active;
  private LocalDateTime createDate;


}
