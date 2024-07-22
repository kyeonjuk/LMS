package com.samssak.lms.service.impl;

import com.samssak.lms.entity.Category;
import com.samssak.lms.model.CategoryInput;
import com.samssak.lms.repository.CategoryRepository;
import com.samssak.lms.service.CategoryService;
import java.time.LocalDateTime;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CategoryServiceImpl implements CategoryService {

  private final CategoryRepository categoryRepository;

  @Override
  public boolean categoryAdd(CategoryInput categoryInput) {

    Category category = Category.builder()
            .id(categoryInput.getId())
                .name(categoryInput.getName())
                    .description(categoryInput.getDescription())
                        .active(categoryInput.getActive())
                            .createDate(LocalDateTime.now())
                                .build();

    try {
      categoryRepository.save(category);
    } catch (Exception e) {
      return false;
    }

    return true;
  }

  @Override
  public Category findById(int id) {

    Category category = categoryRepository.findById(id);

    return category;
  }

  @Override
  public boolean categoryUpdate(CategoryInput categoryInput) {

    Category category = Category.builder()
        .id(categoryInput.getId())
        .name(categoryInput.getName())
        .description(categoryInput.getDescription())
        .active(categoryInput.getActive())
        .createDate(LocalDateTime.now())
        .build();

    try {
      categoryRepository.save(category);
    } catch (Exception e) {
      return false;
    }

    return true;
  }

  @Override
  public boolean categoryDelete(int id) {

    try {
      categoryRepository.deleteById(id);
    } catch (Exception e) {
      return false;
    }

    return true;
  }

  @Override
  public List<Category> findAll() {
    return categoryRepository.findAll();
  }
}
