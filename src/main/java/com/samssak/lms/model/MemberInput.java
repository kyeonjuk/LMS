package com.samssak.lms.model;

import java.time.LocalDateTime;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class MemberInput {

    private String email;
    private String name;
    private String password;
    private String phone;
    private String birth;
    private LocalDateTime createDate;
    private String role;
    private String active;          // 이메일 인증 여부
    private String active_key;      // 이메일 인증 키
    private String profile_image;

}
