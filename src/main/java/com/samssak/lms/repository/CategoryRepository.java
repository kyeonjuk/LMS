package com.samssak.lms.repository;

import com.samssak.lms.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category, Integer> {

  Category findById(int id);

}
