# 🌱 학습관리 사이트 (LMS) "샘싹(SamSsak)"
: 온라인 학습 환경을 제공하여 교육과정 관리와 학습 활동을 지원하는 사이트

<br>

+) 싹이 돋는 새싹의 이미지를 상징적으로 사용하여, <br>
새로움과 성장, 발전, 사용자들에게 새로운 지식과 경험을 제공하며 성장할 수 있는 기회를 제공한다는 의미를 담고 있습니다.

<br>

## 0. 🌼 노션 링크 
  https://www.notion.so/LMS-6c8dd5ac369148ff9d729b33dbff282f?pvs=4

<br>

## 1. 🌿 프로젝트 기능 및 설계 

```
1. 회원 정보 관련 
    - 1) 회원 가입 : 이메일 인증 (Gmail API)
        - 이메일 중복 확인 (비동기)
        - 이메일 유효성 검사
            - 유효한 이메일 주소가 있으면 메일을 전달 → 링크 클릭 시 회원 활성화
            - 이메일 유효성 검사를 하지 않은 경우 → 회원 가입은 가능, 로그인 불가
    - 2) 로그인 : Spring Security, JWT
        - 로그인 성공 시 : JWT Refresh / Access 로 다중 토큰 생성
            - Access 토큰 : 권한이 필요한 모든 요청 헤더에 사용하는 JWT (생명주기 : 10분)
            - Refresh 토큰 : Access 토큰이 만료되었을 때 재발급 받기 위한 용도로만 사용 (생명주기 : 24시간)
    - 3) 비밀번호 초기화 (수정)
        - 이메일과 연락처를 확인해서
        
    - 4) 개인정보 수정

2. 통합 검색 (메인페이지)
    - 1) 강좌명 검색
    - 2) 강사명 검색
    - 3) 게시판 검색

3. 마이룸 (마이페이지)
    - 1) 수강중인 강좌
    - 2) 주문 / 배송 조회
    - 3) 개인정보 수정

4. 장바구니 & 결제
    - 1) 선택된 강좌 구매
    - 2) 결제 페이지 구현

5. 강좌 
    - 1) 강좌 목록
        - 장바구니 추가
        - 강좌 신청
        - 강좌 정보 (상세페이지)
        - 강좌 출력 필터 (개강순, 조회순)
    - 2) 강좌 상세페이지
        - 구매하기
        - 장바구니 추가
        - 강좌정보, 교재정보, 강의구성 정보
    - 3) 강좌별 QnA 게시판
    - 4) 강좌 별점(후기) 기능

6. 고객센터 
    - 1) 1대1 문의 게시판
        - 고객 : 1대1 상담 등록 & 1대1 상담 조회 게시판

7. 관리자 페이지
    - 1) 회원 정보 관리 (학생 / 강사)
    - 2) 강좌 정보 관리
    - 3) 1대1 문의 관리

```
<br>

## 2. 🌳 ERD 

![samssak-erd](https://github.com/kyeonjuk/LMS/assets/155602382/72ee0084-68d8-432d-85ca-829bcb3e86ab)

<br>


```
<br>



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
