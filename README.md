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
1. **회원 정보 관련** 
    - 1) 회원 가입 : 이메일 인증 (Gmail API)
        - 이메일 중복 확인 (비동기)
        - 이메일 유효성 검사
            - 유효한 이메일 주소가 있으면 메일을 전달 → 링크 클릭 시 회원 활성화
            - 이메일 유효성 검사를 하지 않은 경우 → 회원 가입은 가능, 로그인 불가
    - 2) 로그인 : Spring Security, JWT
        - 로그인 성공 시 : JWT Refresh / Access 로 다중 토큰 생성
            - Access 토큰 : 권한이 필요한 모든 요청 헤더에 사용하는 JWT (생명 주기 : 10분)
            - Refresh 토큰 : Access 토큰이 만료되었을 때 재발급 받기 위한 용도로만 사용 (생명 주기 : 24시간)
    - 3) 로그아웃
        - 로그아웃 버튼 클릭 시
            - 프론트엔드 : 로컬 스토리지에 존재하는 Access 토큰 삭제 및 서버 측 로그아웃 경로로 Refresh 토큰 전송
            - 백엔드 : 전송 받은 Refresh 토큰을 받아 쿠키 초기화 후 Refresh DB에서 해당 Refresh토큰 삭제 (모든 계정에서 로그아웃 구현 시 email 기반으로 모든 Refresh 토큰 삭제)
                - DB에 저장하고 있는 Refresh 토큰 삭제
                - Refresh 토큰 쿠키 null로 변경
    - 4) 비밀번호 찾기 (수정)
        - 이메일 정보를 입력 받아 해당 이메일 주소로 이메일 변경  발송
        - 인증 번호가 일치하면 새 비밀번호 변경 페이지로 이동
    - 5) 개인정보 수정
        - 로그인한 상태에서 비밀번호를 입력 받아 개인정보를 수정할 수 있다.

2. **통합 검색**
    - 1) 전체 검색
        - 통합검색 시 강좌명, 강사명, 게시판 내용을 각 항목별로 출력할 수 있도록 한다.
    - 2) 강좌명 검색
        - 통합 검색 시 강좌명으로 pagination / slice 기반으로 제공 할 수 있도록 한다.
        - 한 page 당 20개씩 데이터를 노출하고, 정렬 조건은 최신 순 / 강좌 명 순 정렬 조건을 제공한다.
    - 3) 강사 명 검색
        - 통합 검색 시 강사 명으로 pagination / slice 기반으로 제공 할 수 있도록 한다.
        - 한 page 당 20개씩 데이터를 노출하고, 정렬 조건은 최신 순 / 강사 명 순 정렬 조건을 제공한다.
    - 3) 게시판 검색
        - 통합검색 시 게시판 제목, 내용으로 pagination / slice 기반으로 제공 할 수 있도록 한다.
        - 한 page 당 20개씩 데이터를 노출하고, 정렬 조건은 최신순 / 게시판 제목순 정렬 조건을 제공한다.


3. **마이룸 (마이페이지)**
    - 1) 수강 중인 강좌
        - 현재 수강 중인 강좌를 조회해 한 page당 20개씩 데이터를 노출하고, 정렬 조건은 결제 순으로 제공한다.
        - 각 강좌별 강의 홈 바로 가기 버튼을 활성화해 해당 강좌 바로 가기 기능을 제공한다.
    - 2) 주문 조회
        - 현재까지 구매했던 강좌를 pagination / slice 기반으로 제공 할 수 있도록 한다.
        - 한 page당 20개씩 데이터를 노출하고, 정렬 조건은 구매순 으로 제공 한다.
    - 3) 개인정보 수정
        - 로그인 시에만 개인정보를 수정할 수 있다.
        - 로그인 시에 비밀번호를 한번 더 확인 한 후 해당 계정의 정보 수정이 가능하다.

4. **장바구니 & 결제** 
    - 1) 선택된 강좌 구매
        - 장바구니로 이동된 강좌 목록 중 체크박스를 활성화 해 원하는 강좌 선택시 해당 강좌만 구매할 수 있다.
    - 2) 결제
        - 장바구니에서 선택된 강좌를 기준으로 결제를 진행한다.
        - TossTest API를 사용해 토스결제 기능을 제공한다.

5. **강좌** 
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

6. **관리자 페이지** 
    - 1) 회원 정보 관리
        - 회원 정보 관리는 `Pageable`  을 활용해 제공할 수 있도록 한다.
        - 한 page 당 20개씩 데이터를 노출하고, 정렬 조건은 가입 날짜 순 / 이름 순 정렬 조건을 제공한다.
    - 2) 강사 정보 관리
        - 강사 정보 관리는 `Pageable`  을 활용해 제공할 수 있도록 한다.
        - 한 page 당 20개씩 데이터를 노출하고, 정렬 조건은 가입 날짜 순 / 이름 순 정렬 조건을 제공한다.
    - 3) 강좌 정보 관리
    - 4) 1대1 문의 관리


**[ 추가 구현 기능 ]**

1. **고객센터** 
    - 1) 1대1 문의 게시판
        - 고객 : 1대1 상담 등록 & 1대1 상담 조회 게시판

```

<br>

## 2. 🌳 ERD - 수정중

![samssak-erd](https://github.com/kyeonjuk/LMS/assets/155602382/72ee0084-68d8-432d-85ca-829bcb3e86ab)

<br>
<br><br><br><br>

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
