package com.samssak.lms.repository;

import com.samssak.lms.entity.Member;
import com.samssak.lms.entity.RefreshEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

public interface RefreshRepository extends JpaRepository<RefreshEntity, Long> {

  Boolean existsByRefresh(String refresh);

  // 갱신시 -> 기존 refresh 토큰 삭제
  @Transactional
  void deleteByRefresh(String refresh);

}



