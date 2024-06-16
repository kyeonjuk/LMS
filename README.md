# 🌱 학습관리 사이트 (LMS) "샘싹(SamSsak)"

: 싹이 돋는 새싹의 이미지를 상징적으로 사용하여, <br>
새로움과 성장, 발전, 사용자들에게 새로운 지식과 경험을 제공하며 성장할 수 있는 기회를 제공한다는 의미를 담고 있습니다.

<br>

## 0. 노션 링크 
  https://www.notion.so/LMS-6c8dd5ac369148ff9d729b33dbff282f?pvs=4

<br>

## 1. 🌿 프로젝트 기능 및 설계 
  https://www.notion.so/LMS-6c8dd5ac369148ff9d729b33dbff282f?pvs=4

 <br>

  1. 회원 정보 관련
      - 1) 회원 가입 : 이메일 인증
          - 이메일 중복 확인 (비동기)
          - 이메일 유효성 검사
              - 유효한 이메일 주소가 있으면 메일을 전달 → 링크 클릭 시 회원 활성화
              - 이메일 유효성 검사를 하지 않은 경우 → 회원 가입은 가능, 로그인 불가
          - 
          
      - 2) 로그인 : Spring Security 활용
          - 로그인 성공 시 : JWT Refresh / Access 로 다중 토큰 생성
              - Access 토큰 : 권한이 필요한 모든 요청 헤더에 사용하는 JWT (생명주기 : 10분)
              - Refresh 토큰 : Access 토큰이 만료되었을 때 재발급 받기 위한 용도로만 사용 (생명주기 : 24시간)
          
         
      - 3) 비밀번호 초기화 (수정) :
          - 이메일과 연락처를 확인해서
 



## Tech Stack
<div> 
<img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white">
<img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white">
<img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white">
<img src="https://img.shields.io/badge/mysql-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
<img src="https://img.shields.io/badge/springboot-6DB33F?style=for-the-badge&logo=springboot&logoColor=white">
<img src="https://img.shields.io/badge/gradle-02303A?style=for-the-badge&logo=gradle&logoColor=white">
</div>


# My Plant Project
🌿

## Features

- 🌱 Indoor Plant Monitoring
- 🌳 Tree Growth Analysis
- 🌼 Flower Care Tips
