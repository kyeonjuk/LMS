package com.samssak.lms.repository;

import com.samssak.lms.entity.Member;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;


public interface MemberRepository extends JpaRepository<Member, String> {

    boolean existsByEmail(String email);

    Member findByEmail(String email);

    Page<Member> findByRole(String role, Pageable pageable);

    @Modifying
    @Transactional
    @Query("DELETE FROM Member m WHERE m.email = :email")
    void deleteByEmail(String email);

    @Query("SELECT m FROM Member m WHERE m.email = :email and m.role = :role")
    Member findByEmailWhereRole(String email, String role);

}
