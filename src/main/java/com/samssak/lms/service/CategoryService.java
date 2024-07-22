package com.samssak.lms.service;

import com.samssak.lms.entity.Category;
import com.samssak.lms.model.CategoryInput;
import java.util.List;

public interface CategoryService {

  /**
   * 카테고리 등록
   */
  public boolean categoryAdd(CategoryInput categoryInput);

  public Category findById(int id);

  public boolean categoryUpdate(CategoryInput categoryInput);

  public boolean categoryDelete(int id);

  public List<Category> findAll();

}
