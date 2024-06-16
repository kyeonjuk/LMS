package com.samssak.lms.repository;

import com.samssak.lms.entity.Member;
import org.springframework.data.jpa.repository.JpaRepository;


public interface MemberRepository extends JpaRepository<Member, String> {

    boolean existsByEmail(String email);

    Member findByEmail(String email);
}
