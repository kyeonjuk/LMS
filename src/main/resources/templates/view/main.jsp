<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<HTML>
<head>



<link rel="shortcut icon" type="image/x-icon"
	href="/" />
<link rel="icon" type="image/x-icon"
	href="/" />

<TITLE>샘싹(SamSsak)</TITLE>

<link rel="canonical" href="http://www.etoos.com/">
<!-- 사이트 대표 URL (2018-02-27) -->

<link rel="stylesheet"
	href="https://www.etoos.com/common/css/etoos_main2023.css?v=38074.63"
	type="text/css">

<!-- 샘싹 css -->
<link th:href="@{css/main.css}" rel="stylesheet" type="text/css" />

<script language="javascript"
	src="https://www.etoos.com/common/js/etoos.js?38074.63"
	type="text/javascript"></script>



</HEAD>


<body>


<!-- 로그인 값 가져오기
<div th:if="${session['name'] != null}">
       <p>Welcome, <span th:text="${session['name']}"></span>!</p>
       <p>Email: <span th:text="${session['email']}"></span></p>
       <p>Role: <span th:text="${session['role']}"></span></p>
    </div>
-->

	<!-- wrap_container -->
	<div id="wrap_container" class="wrap_container main type_go123">
		<!-- 고123 메인 class="type_go123" -->

		<!-- header_container -->

		<link rel="shortcuticon" href="https://img.etoos.com/common/etoos.ico">
		<script type="text/javascript"
			src="https://www.etoos.com/common/js/jquery/jquery-1.8.3.min.js"></script>
		<script language="JavaScript">var J$ = jQuery.noConflict();</script>

		<script
			src="https://www.etoos.com/common/js/jquery/jquery.bxslider.min.js"></script>
		<script type="text/javascript"
			src="https://www.etoos.com/common/js/etoos_float_img.js"></script>


		<!-- header_container -->
		<header id="header_container" class="header_container"> <!-- common_banner -->


		<!-- // common_floating --> <!-- inner_container -->
		<div class="inner_container" data-ga-action="GNB">
			<!-- common_container -->
			<div class="common_container">
				<!-- common_logo -->
				<div class="common_logo">
					<h1>
						<a href="/" class="logo"
							data-ga-label="샘싹로고"><span class="blind">SamSsak</span></a>
					</h1>
				</div>
				<!-- // common_logo -->

				<!-- gnb_container -->


				<nav id="gnb_container" class="gnb_container" data-ga-action="GNB"><!-- on -->
				<h2 class="blind">전체메뉴 영역</h2>
				<ul class="tab_navi">
					<li><a href="https://www.etoos.com/lecture/default.asp"
						data-ga-label="H_주요메뉴_전체강좌" class="btn_tab"
						data-target="gnb_lecture">전체강좌</a></li>

					<li><a href="https://www.etoos.com/teacher/default.asp"
						data-ga-label="H_주요메뉴_선생님" class="btn_tab"
						data-target="gnb_teacher">강사</a></li>

				</ul>

				</nav>
				<!-- // gnb_container -->
			</div>
			<!-- // common_container -->

			<!-- common_utill -->
			<div class="common_utill">
				<!-- common_search -->

				<div class="common_search">
					<!-- search_input -->
					<div class="search_input">
              <div class="input_box">
                  <input type="text" id="keyword"
                         name="keyword" onFocus="fnG_H_DQ_SEARCH_FOCUS();"
                         class="input_search" placeholder="검색어를 입력하세요."
                         onkeydown="if (event.keyCode == 13) { fnG_H_DQ_SEARCH(''); }
                                    else if(event.keyCode == 222) { event.returnValue = false; }">
                  <a href="javascript:void(0);" onClick="fnG_H_DQ_SEARCH(''); document.getElementById('keyword').focus();"
                     class="btn_search" data-ga-label="검색돋보기"><span
                     class="blind">검색</span></a>
              </div>

						<a href="javascript:void(0);" class="btn_search_open" onClick="document.getElementById('keyword').focus();":><span
							class="blind">검색 열기</span></a>
					</div>
					<!-- // search_input -->
          <script>console.log("keyword")</script>

					<script language="JavaScript">
				let keywordIndex = 0;
				//jQuery('.suggest_keyword').hide();
				var bgheight;
				var strG_H_DQ_KEYWORD = "";
				var strG_H_DQ_KEYWORD_URL = "";
				var strG_H_DQ_KEYWORD_FOCUS = "N";
				var intG_H_DQ_KEYWORD_ROLL = 0;
				var intG_H_DQ_KEYWORD_MAX_ROLL = 0;

				function fnG_H_DQ_SEARCH(str) {
					if (strG_H_DQ_KEYWORD_FOCUS == "N" && strG_H_DQ_KEYWORD_URL != "" && str == "") { location.href = strG_H_DQ_KEYWORD_URL; return false; }

					if (str != "") { document.getElementById("keyword").value = str; }

					strG_H_DQ_KEYWORD = document.getElementById("keyword").value;
					strG_H_DQ_KEYWORD = strG_H_DQ_KEYWORD.replace(/\"/gi, "");
					strG_H_DQ_KEYWORD = strG_H_DQ_KEYWORD.replace(/\'/gi, "");
					document.getElementById("keyword").value = strG_H_DQ_KEYWORD;

					if (document.getElementById("keyword").value == "" || document.getElementById("keyword").value.trim() == "") {
						alert("검색어를 입력해주세요."); document.getElementById("keyword").focus(); return;
					} else {
						location.href = "https://www.etoos.com/search/default.asp?dq_keyword=" + escape(document.getElementById('keyword').value) + "&txtSrch=" + escape(document.getElementById('keyword').value);
					}
				}

				function fnG_H_DQ_SEARCH_FOCUS() {
					if (strG_H_DQ_KEYWORD_FOCUS == "N") {
						document.getElementById("keyword").value = "";
						strG_H_DQ_KEYWORD_FOCUS = "Y";
					}
				}
			</script>
				</div>

				<!--cache-ok-->
				<!-- // common_search -->


				<ul class="link_list scroll_off">

              <div th:if="${session['name']} == null">
                  <li><a href="/member/login"
                  						data-ga-label="로그인"><span>로그인</span></a></li>
                  					<li><a href="/member/register" id="inte_signUp"
                  						data-ga-label="회원가입"><span>회원가입</span></a></li>
              </div>

      <div th:if="${session['name']} != null">
        <li><a href="/member/logout" id="inte_signUp" data-ga-label="로그아웃"><span>로그아웃</span></a></li>
    </div>

					<li><a href="javascript:void(0);" id="inte_myRoom1"
						onclick="fnIntegrationMyStudyRoom('1')" class="myroom_on" data-ga-label="마이룸"><span>마이룸</span></a>

						<div class="myroom_list myroom_layer">
							<div class="myroom_inner">

								<p class="member">환영합니다!</p>

								<div class="myroom_status flex_between">
									<div class="flex_box">

									<div th:if="${session['name']} == null">
										<p class="desc">
											<a href="/member/login"
												data-ga-label="로그인">로그인이
												필요해요</a> <span>&#128525;</span>
										</p>
									</div>
									<div th:if="${session['name']} != null">
									<p class="desc">

                  											<a href="/" onClick="fnG_H_LOGIN_LAYER();"
                  												data-ga-label="로그인"><span th:text="${session['name']}"></span> <span>님!</span></a>
                  												<span>&#128525;</span>
                  										</p>
									</div>
									</div>

								</div>


								<div class="myroom_btn flex_between">
									<a href="https://www.etoos.com/mystudyroom/Order/Cartlist.asp"
										class="cart" data-ga-label="장바구니"><span>장바구니</span></a>
									<a
										href="https://www.etoos.com/mystudyroom/lecture/lecturewatchSubScr.asp?ModuleType=subscr"
										class="qna" data-ga-label="수강중인강좌"><span>수강중인강좌</span></a>
								</div>
								<div class="myroom_btn flex_between">
									<a href="https://www.etoos.com/mystudyroom/" class="lect"
										data-ga-label="마이룸바로가기"><span>마이룸
											바로가기</span></a>
								</div>
								<div class="link">
									<ul>
										<li><a
											href="https://www.etoos.com/mystudyroom/lecture/LectureWatch.asp?lecture_list_type=subscr"
											data-ga-label="수강신청"><span
												class="txt">수강신청</span></a></li>
										<li><a href="https://www.etoos.com/report/my/"
											data-ga-label="성적관리"><span
												class="txt">성적관리</span></a></li>
										<li><a
											href="https://www.etoos.com/mystudyroom/Order/OrderList.asp?DUMY=Y"
											data-ga-label="주문배송조회"><span
												class="txt">주문/배송 조회</span></a></li>
										<li><a href="javascript:void(0);"
											onclick="fnIntegrationMyInfo(this);" data-ga-label="개인정보수정"><span
												class="txt">개인정보 수정</span></a></li>
									</ul>
								</div>
							</div>
						</div></li>

					<li><a href="/"
						data-ga-label="고객센터">고객센터</a></li>
				</ul>

			</div>
			<!-- // common_utill -->
		</div>
		<!-- // inner_container -->

		</header>
		<!-- //header_container -->





		<!-- // header_container -->

		<!-- main_container -->
		<main id="main_container" class="main_container">
		<h2 class="blind">컨텐츠 영역</h2>


		<div class="main_contents">

			<!-- ranking chart -->
			<div class="box_ranking" id="tab_ranking">
				<div class="inner_container">
					<div class="ranking_head" data-ga-action="main_랭킹존타이틀">
						<h3 class="title">
							<strong class="tit">샘싹 Picks<br>이번주 업데이트 차트
							</strong>
							<p class="desc">지금 가장 핫한 샘싹 콘텐츠를 만나보세요</p>
						</h3>
						<ul class="tab_ranking">
							<li class="on"><a href="javascript:;" class="btn_tab"
								data-ga-label="조회수"><span class="emoji">&#128200;</span>실시간 업데이트 강의는?</a></li>
						</ul>


					</div>
					<!-- tab cont case -->

					<div class="ranking_cont on">
						<div class="ranking_list">
							<ul>

								<li data-ga-action="main_랭킹존_조회수1"><a
									href="/images/ranking/pick1.png"
									class="link">
										<div class="thumbnail">
											<img
												src="images/ranking/pick1.png"
												alt="">
										</div>
										<div class="description">
											<span class="spr_main num_ranking num01">01</span> <span
												class="tit_sec">월간구독권</span>
											<div class="tit_cont">
												<p class="desc">~3.19 16시까지만</p>
												<strong class="tit">1달만 들어도 환급&#128184;</strong>
											</div>
										</div>
								</a></li>

								<li data-ga-action="main_랭킹존_조회수2"><a
									href="/images/ranking/pick2.png"
									class="link">
										<div class="thumbnail">
											<img
												src="images/ranking/pick2.png"
												alt="">
										</div>
										<div class="description">
											<span class="spr_main num_ranking num02">02</span> <span
												class="tit_sec">3월 학평 대비</span>
											<div class="tit_cont">
												<p class="desc">A-Z 까지 샘싹로 확실하게</p>
												<strong class="tit">수능 성공의 첫 단추,<br>3월
													학평&#127979;
												</strong>
											</div>
										</div>
								</a></li>

								<li data-ga-action="main_랭킹존_조회수3"><a
									href="/images/ranking/pick3.png"
									class="link">
										<div class="thumbnail">
											<img
												src="images/ranking/pick3.png"
												alt="">
										</div>
										<div class="description">
											<span class="spr_main num_ranking num03">03</span> <span
												class="tit_sec">연계 대비 기획전</span>
											<div class="tit_cont">
												<p class="desc">교과서 밖 연계ㅣ수능 내 연계</p>
												<strong class="tit">국어ㅣ영어<br>연계 대비 강좌 LIST
												</strong>
											</div>
										</div>
								</a></li>

								<li data-ga-action="main_랭킹존_조회수4"><a
									href="/images/ranking/pick4.png"
									class="link">
										<div class="thumbnail">
											<img
												src="images/ranking/pick4.png"
												alt="">
										</div>
										<div class="description">
											<span class="spr_main num_ranking num04">04</span> <span
												class="tit_sec">수학 정승제</span>
											<div class="tit_cont">
												<p class="desc">지금부터 수강하세요</p>
												<strong class="tit">개념때려잡기만으로 <br>1등급 만들기!
												</strong>
											</div>
										</div>
								</a></li>

								<li data-ga-action="main_랭킹존_조회수5"><a
									href="/images/ranking/pick5.png"
									class="link">
										<div class="thumbnail">
											<img
												src="images/ranking/pick5.png"
												alt="">
										</div>
										<div class="description">
											<span class="spr_main num_ranking num05">05</span> <span
												class="tit_sec">사탐 이지영</span>
											<div class="tit_cont">
												<p class="desc">2025 이지영의 심기일전</p>
												<strong class="tit">만점을 만드는<br>심.기.일.전
												</strong>
											</div>
										</div>
								</a></li>

								<li data-ga-action="main_랭킹존_조회수6"><a
									href="/images/ranking/pick6.png"
									class="link">
										<div class="thumbnail">
											<img
												src="images/ranking/pick6.png"
												alt="">
										</div>
										<div class="description">
											<span class="spr_main num_ranking num06">06</span> <span
												class="tit_sec">국어 김민정</span>
											<div class="tit_cont">
												<p class="desc">무의식 독해과정 표면화!</p>
												<strong class="tit">김민정 시그니처 <br> 단 1%만 아는 비밀
												</strong>
											</div>
										</div>
								</a></li>

								<li data-ga-action="main_랭킹존_조회수7"><a
									href="/images/ranking/pick7.png"
									class="link">
										<div class="thumbnail">
											<img
												src="images/ranking/pick7.png"
												alt="">
										</div>
										<div class="description">
											<span class="spr_main num_ranking num07">07</span> <span
												class="tit_sec">영어 주혜연</span>
											<div class="tit_cont">
												<p class="desc">하나로 열을 예측, 논리의 힘</p>
												<strong class="tit">불변의 '7개 논리코드'<br>신규런칭
													[코드독해]
												</strong>
											</div>
										</div>
								</a></li>

								<li data-ga-action="main_랭킹존_조회수8"><a
									href="/images/ranking/pick8.png"
									class="link">
										<div class="thumbnail">
											<img
												src="images/ranking/pick8.png"
												alt="">
										</div>
										<div class="description">
											<span class="spr_main num_ranking num08">08</span> <span
												class="tit_sec">물리 이규철</span>
											<div class="tit_cont">
												<p class="desc">우리, 물리학 처리하자!</p>
												<strong class="tit">문제 풀이의 전부,<br>처리의 쓰낄풀 OPEN
												</strong>
											</div>
										</div>
								</a></li>

							</ul>
						</div>
					</div>



					<iframe name="ifrmCartForm2" id="ifrmCartForm2" frameborder="0"
						style="width: 0px; height: 0px; display: block;"></iframe>
					<!--// tab cont case -->
				</div>
			</div>
			<!--// ranking chart -->

			<!--  TCC ▼  -->


			<!--  주요강사 홍보 ▼  -->

			<div class="box_eteacher" id="box_eteacher">
				<div class="inner_container" data-ga-action="main_주요강사">
					<h3 class="title">
						<strong class="tit">E-선생님이 궁금해요</strong>
						<p class="desc">샘싹 대표 선생님을 낱낱히 파헤쳐드립니다</p>
					</h3>

					<div class="eteacher_cont module_tab">
						<ul class="tab_navi">
							<li class="on"><a href="javascript:void(0);" class="btn_tab"
								data-ga-label="주요강사 국어">국어</a></li>
							<li><a href="javascript:void(0);" class="btn_tab"
								data-ga-label="주요강사 수학">수학</a></li>
							<li><a href="javascript:void(0);" class="btn_tab"
								data-ga-label="주요강사 영어">영어</a></li>
							<li><a href="javascript:void(0);" class="btn_tab"
								data-ga-label="주요강사 사탐">사탐</a></li>
							<li><a href="javascript:void(0);" class="btn_tab"
								data-ga-label="주요강사 과탐">과탐</a></li>
							<li><a href="javascript:void(0);" class="btn_tab"
								data-ga-label="주요강사 신규입성">신규입성</a></li>

						</ul>
						<div class="tab_panel">

							<div class="panel on">
								<div class="eteacher_list">
									<ul class="swiper-wrapper">

										<li class="swiper-slide"><a
											href="https://www.etoos.com/teacher/event/2023/12/kmj_27/"
											class="link" data-ga-label="김민정_김민정시그니처단1%만아는비밀"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_김민정_김민정시그니처단1%만아는비밀\');}catch(_e){}');">
												<div class="description teacher">

													<em class="tch_name">국어 <br>김민정
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200209/m300x300.png"
														alt="김민정선생님 이미지">
												</div>
												<div class="description cont">
													<em class="txt_info ellipsis2">무의식 독해과정을<br>표면화하는
														훈련
													</em> <strong class="tit_cont ellipsis2">김민정 시그니처<br>단
														1%만 아는 비밀
													</strong>
												</div>
										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/Lecture/LectureDetail.asp?LType=PROMOTION&CHOICE_CD=&AREA_CD=&GRADE_CD=0008&CHOICE_LEVEL_ID=&LECTURE_ID=L69107&PROMO_ID="
											class="link" data-ga-label="신영균_신의한수EBS-분석의神"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_신영균_신의한수EBS-분석의神\');}catch(_e){}');">
												<div class="description teacher">

													<em class="tch_name">국어 <br>신영균
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200248/m300x300.png"
														alt="신영균선생님 이미지">
												</div>
												<div class="description cont">
													<em class="txt_info ellipsis2">수능 국어?<br>한글만 알면
														된다!
													</em> <strong class="tit_cont ellipsis2">신의 한수<br>EBS
														- 분석의 神
													</strong>
												</div>
										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/Lecture/LectureDetail.asp?LType=PROMOTION&CHOICE_CD=&AREA_CD=&GRADE_CD=0008&CHOICE_LEVEL_ID=&LECTURE_ID=L68189&PROMO_ID=024636"
											class="link" data-ga-label="그믐달_제대로읽으면저절로풀린다"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_그믐달_제대로읽으면저절로풀린다\');}catch(_e){}');">
												<div class="description teacher">

													<em class="tch_name">국어 <br>그믐달
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200345/m300x300.png"
														alt="그믐달선생님 이미지">
												</div>
												<div class="description cont">
													<em class="txt_info ellipsis2">그읽그풀,와리가리<br>이제
														그만하라!
													</em> <strong class="tit_cont ellipsis2">제대로 읽으면<br>저절로
														풀린다
													</strong>
												</div>
										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/Lecture/LectureDetail.asp?LType=PROMOTION&CHOICE_CD=&AREA_CD=&GRADE_CD=0008&CHOICE_LEVEL_ID=&LECTURE_ID=L67582&PROMO_ID=025896"
											class="link" data-ga-label="방동진_2025수능국어의완성방동진"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_방동진_2025수능국어의완성방동진\');}catch(_e){}');">
												<div class="description teacher">

													<em class="tch_name">국어 <br>방동진
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200238/m300x300.png"
														alt="방동진선생님 이미지">
												</div>
												<div class="description cont">
													<em class="txt_info ellipsis2">너의 찬란한 1교시를 위한<br>최적의
														선택
													</em> <strong class="tit_cont ellipsis2">2025 수능 국어의 완성<br>방동진
													</strong>
												</div>
										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/teacher/event/2023/11/jo_08/"
											class="link" data-ga-label="정온_미련하게공부하고요령있게훈련하자!"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_정온_미련하게공부하고요령있게훈련하자!\');}catch(_e){}');">
												<div class="description teacher">

													<em class="tch_name">국어 <br>정온
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200457/m300x300.png"
														alt="정온선생님 이미지">
												</div>

										</a></li>

									</ul>
								</div>
							</div>

							<div class="panel ">
								<div class="eteacher_list">
									<ul class="swiper-wrapper">

										<li class="swiper-slide"><a
											href="https://www.etoos.com/teacher/event/2023/12/jsj_26/"
											class="link" data-ga-label="정승제_새로운수능에맞춰업그레이드된개때잡"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_정승제_새로운수능에맞춰업그레이드된개때잡\');}catch(_e){}');">
												<div class="description teacher">

													<em class="tch_name">수학 <br>정승제
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200180/m300x300.png"
														alt="정승제선생님 이미지">
												</div>
												<div class="description cont">
													<em class="txt_info ellipsis2">개념때려잡기만으로<br> 1등급
														만들기!
													</em> <strong class="tit_cont ellipsis2">새로운 수능에 맞춰<br>업그레이드된
														개때잡
													</strong>
												</div>
										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/teacher/event/2023/09/kyg_14/?_gl=1*19bkg74*_ga*MTI2NjQ1NDI1MC4xNjk1NzAyMjY2*_ga_HLGHNSZF7Z*MTcwMDAzNDkyNC4xNjUuMS4xNzAwMDM1NjAzLjUzLjAuMA..*_ga_RGQDH0TL2H*MTcwMDAzNDgzOC4xNjMuMS4xNzAwMDM1NjAzLjAuMC4w"
											class="link" data-ga-label="강윤구_확신의'수능수학'1등급일관된해답'4점공략법'"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_강윤구_확신의'수능수학'1등급일관된해답'4점공략법'\');}catch(_e){}');">
												<div class="description teacher">

													<em class="tch_name">수학 <br>강윤구
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200462/m300x300.png"
														alt="강윤구선생님 이미지">
												</div>
												<div class="description cont">
													<em class="txt_info ellipsis2">'수능 수학'의 기초부터 수리논술까지<br>NEW2025
														강윤구 커리큘럼
													</em> <strong class="tit_cont ellipsis2">확신의 '수능수학'1등급<br>일관된
														해답'4점공략법'
													</strong>
												</div>
										</a></li>

										<li class="swiper-slide"><a
											href="https://go3.etoos.com/teacher/main.asp?teacher_id=200429&etgrd=go3"
											class="link" data-ga-label="한정윤_개념X기출을동시에,제로로시작해한큐로완성!"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_한정윤_개념X기출을동시에,제로로시작해한큐로완성!\');}catch(_e){}');">
												<div class="description teacher">

													<em class="tch_name">수학 <br>한정윤
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200429/m300x300.png"
														alt="한정윤선생님 이미지">
												</div>
												<div class="description cont">
													<em class="txt_info ellipsis2">최소의 시간투자로 최대의 결과를<br>한쌤의
														개념X기출시리즈
													</em> <strong class="tit_cont ellipsis2">개념x기출을 동시에,<br>제로로
														시작해 한큐로 완성!
													</strong>
												</div>
										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/Lecture/LectureDetail.asp?LType=PROMOTION&CHOICE_CD=&AREA_CD=&GRADE_CD=0008&CHOICE_LEVEL_ID=&LECTURE_ID=L67767&PROMO_ID=027043"
											class="link" data-ga-label="이하영_수학개념은오늘부터이하영"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_이하영_수학개념은오늘부터이하영\');}catch(_e){}');">
												<div class="description teacher">

													<em class="tch_name">수학 <br>이하영
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200428/m300x300.png"
														alt="이하영선생님 이미지">
												</div>
												<div class="description cont">
													<em class="txt_info ellipsis2">함께 만들어갈<br>가슴 설레는
														새로운 수학
													</em> <strong class="tit_cont ellipsis2">수학 개념은<br>오늘부터
														이하영
													</strong>
												</div>
										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/teacher/event/2024/03/kdh_12/"
											class="link" data-ga-label="김동환_1등급이목표라면2025알고리즘"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_김동환_1등급이목표라면2025알고리즘\');}catch(_e){}');">
												<div class="description teacher">

													<span class="spr_main update_sticker">update</span> <em
														class="tch_name">수학 <br>김동환
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200480/m300x300.png"
														alt="김동환선생님 이미지">
												</div>
												<div class="description cont">
													<em class="txt_info ellipsis2">수능 트렌드에 맞는<br>개념X스킬X논리적접근
													</em> <strong class="tit_cont ellipsis2">1등급이 목표라면<br>2025
														알고리즘
													</strong>
												</div>
										</a></li>

									</ul>
								</div>
							</div>

							<div class="panel ">
								<div class="eteacher_list">
									<ul class="swiper-wrapper">

										<li class="swiper-slide"><a
											href="https://www.etoos.com/teacher/event/2024/03/jhy_14/"
											class="link" data-ga-label="주혜연_변하지않는'7개논리코드'코드독해"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_주혜연_변하지않는'7개논리코드'코드독해\');}catch(_e){}');">
												<div class="description teacher">

													<span class="spr_main update_sticker">update</span> <em
														class="tch_name">영어 <br>주혜연
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200439/m300x300.png"
														alt="주혜연선생님 이미지">
												</div>
												<div class="description cont">
													<em class="txt_info ellipsis2">모두가 기다린 신규강좌<br>하나로
														열을 예측하는 논리의 힘
													</em> <strong class="tit_cont ellipsis2">변하지 않는 '7개
														논리코드'<br>코드독해
													</strong>
												</div>
										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/teacher/event/2024/02/kbg_02/"
											class="link" data-ga-label="김범구_LUMINOUS평가원기출분석"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_김범구_LUMINOUS평가원기출분석\');}catch(_e){}');">
												<div class="description teacher">

													<span class="spr_main update_sticker">update</span> <em
														class="tch_name">영어 <br>김범구
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200481/m300x300.png"
														alt="김범구선생님 이미지">
												</div>
												<div class="description cont">
													<em class="txt_info ellipsis2">반드시 알아야 할 유형별 <br>핵심
														전략 총 망라
													</em> <strong class="tit_cont ellipsis2">Luminous <br>
														평가원 기출 분석
													</strong>
												</div>
										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/teacher/main.asp?teacher_id=200411"
											class="link" data-ga-label="권조이_트렌드를앞서가는2025심플시리즈"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_권조이_트렌드를앞서가는2025심플시리즈\');}catch(_e){}');">
												<div class="description teacher">

													<span class="spr_main update_sticker">update</span> <em
														class="tch_name">영어 <br>권조이
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200411/m300x300.png"
														alt="권조이선생님 이미지">
												</div>
												<div class="description cont">
													<em class="txt_info ellipsis2">안정적인 1등급을 만드는 <br>
														SIMPLE한 방법론
													</em> <strong class="tit_cont ellipsis2">트렌드를 앞서가는 <br>
														2025 심플 시리즈
													</strong>
												</div>
										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/teacher/board/sub01/board_read.asp?teacher_id=200331&BOARD_ID=2005&BOARD_ARTI_ID=33461250"
											class="link" data-ga-label="그레이스_등급별맞춤시리즈그레이스'S개념바이블"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_그레이스_등급별맞춤시리즈그레이스'S개념바이블\');}catch(_e){}');">
												<div class="description teacher">

													<span class="spr_main update_sticker">update</span> <em
														class="tch_name">영어 <br>그레이스
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200331/m300x300.png"
														alt="그레이스선생님 이미지">
												</div>
												<div class="description cont">
													<em class="txt_info ellipsis2">개념부터 실전까지<br>빠르고
														효율적으로!
													</em> <strong class="tit_cont ellipsis2">등급별 맞춤 시리즈<br>그레이스's
														개념바이블
													</strong>
												</div>
										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/teacher/event/2024/02/oce_21/"
											class="link" data-ga-label="오채은_유형별독해1등급전략쇼미더시리즈"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_오채은_유형별독해1등급전략쇼미더시리즈\');}catch(_e){}');">
												<div class="description teacher">

													<span class="spr_main update_sticker">update</span> <em
														class="tch_name">영어 <br>오채은
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200505/m300x300.png"
														alt="오채은선생님 이미지">
												</div>

										</a></li>

									</ul>
								</div>
							</div>

							<div class="panel ">
								<div class="eteacher_list">
									<ul class="swiper-wrapper">

										<li class="swiper-slide"><a
											href="https://www.etoos.com/teacher/event/2024/01/ljy_02/"
											class="link">
												<div class="description teacher">

													<em class="tch_name">일반사회/윤리 <br>이지영
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200391/m300x300.png"
														alt="이지영선생님 이미지">
												</div>
												<div class="description cont">
													<em class="txt_info ellipsis2">단순한 풀이를 넘어<br>집요한
														분석과 정리
													</em> <strong class="tit_cont ellipsis2">진도별 기출문제로<br>개념완성
													</strong>
												</div>
										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/teacher/event/2024/01/khs_02/"
											class="link" data-ga-label="김현수_신규개강완료JUSTTHIS개념완성"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_김현수_신규개강완료JUSTTHIS개념완성\');}catch(_e){}');">
												<div class="description teacher">

													<span class="spr_main update_sticker">update</span> <em
														class="tch_name">일반사회/윤리 <br>김현수
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200482/m300x300.png"
														alt="김현수선생님 이미지">
												</div>
												<div class="description cont">
													<em class="txt_info ellipsis2">노베부터 만점까지<br>JUST
														THIS 하나로
													</em> <strong class="tit_cont ellipsis2">신규 개강 완료<br>JUST
														THIS 개념완성
													</strong>
												</div>
										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/Lecture/LectureDetail.asp?LType=PROMOTION&CHOICE_CD=&AREA_CD=&GRADE_CD=0008&CHOICE_LEVEL_ID=&LECTURE_ID=L67560&PROMO_ID=027675"
											class="link" data-ga-label="이남승_유쾌함으로때려박는1등급지리의시작과끝"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_이남승_유쾌함으로때려박는1등급지리의시작과끝\');}catch(_e){}');">
												<div class="description teacher">

													<em class="tch_name">지리 <br>이남승
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200322/m300x300.png"
														alt="이남승선생님 이미지">
												</div>
												<div class="description cont">
													<em class="txt_info ellipsis2">수능 지리를 선택했다면,<br>만점의
														출발은 당연히 이남승
													</em> <strong class="tit_cont ellipsis2">유쾌함으로 때려박는<br>1등급
														지리의 시작과 끝
													</strong>
												</div>
										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/teacher/event/2023/02/ld_23/"
											class="link" data-ga-label="이도_3월학평필수템33℃의모의고사"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_이도_3월학평필수템33℃의모의고사\');}catch(_e){}');">
												<div class="description teacher">

													<span class="spr_main update_sticker">update</span> <em
														class="tch_name">지리 <br>이도
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200484/m300x300.png"
														alt="이도선생님 이미지">
												</div>
												<div class="description cont">
													<em class="txt_info ellipsis2">모의고사 파일 무료 제공<br>지금
														바로 다운로드!
													</em> <strong class="tit_cont ellipsis2">3월 학평 필수템<br>33℃의
														모의고사
													</strong>
												</div>
										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/Lecture/LectureDetail.asp?LType=PROMOTION&CHOICE_CD=&AREA_CD=&GRADE_CD=0008&CHOICE_LEVEL_ID=&LECTURE_ID=L69033&PROMO_ID=031093"
											class="link" data-ga-label="양호승_선거와선거제도의철저한대비"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_양호승_선거와선거제도의철저한대비\');}catch(_e){}');">
												<div class="description teacher">

													<span class="spr_main update_sticker">update</span> <em
														class="tch_name">일반사회/통합사회 <br>양호승
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200502/m300x300.png"
														alt="양호승선생님 이미지">
												</div>
												<div class="description cont">
													<em class="txt_info ellipsis2">최근 4개년 3평 문항 분석과<br>무료
														PDF 파일 제공!
													</em> <strong class="tit_cont ellipsis2">선거와 선거제도의<br>철저한
														대비
													</strong>
												</div>
										</a></li>

									</ul>
								</div>
							</div>

							<div class="panel ">
								<div class="eteacher_list">
									<ul class="swiper-wrapper">

										<li class="swiper-slide"><a
											href="https://www.etoos.com/teacher/event/2024/02/lgc_01/"
											class="link" data-ga-label="이규철_네가찾던쉬운물리,NEW2025<쓰낄풀>"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_이규철_네가찾던쉬운물리,NEW2025<쓰낄풀>\');}catch(_e){}');">
												<div class="description teacher">

													<span class="spr_main update_sticker">update</span> <em
														class="tch_name">물리학 <br>이규철
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200483/m300x300.png"
														alt="이규철선생님 이미지">
												</div>
												<div class="description cont">
													<em class="txt_info ellipsis2">기출 분석은 문제 풀이의 전부!<br>남들보다
														쉽고 빠르게 물리 만점 받기
													</em> <strong class="tit_cont ellipsis2">네가 찾던 쉬운 물리,<br>NEW
														2025 <쓰낄풀></strong>
												</div>
										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/teacher/event/2024/01/asj_11/"
											class="link" data-ga-label="안성진_실력이배가되는,2025VEGA개념개강"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_안성진_실력이배가되는,2025VEGA개념개강\');}catch(_e){}');">
												<div class="description teacher">

													<span class="spr_main update_sticker">update</span> <em
														class="tch_name">지구과학 <br>안성진
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200431/m300x300.png"
														alt="안성진선생님 이미지">
												</div>
												<div class="description cont">
													<em class="txt_info ellipsis2">수강 후기 이벤트 진행<br>
														추첨 후 스타벅스 증정
													</em> <strong class="tit_cont ellipsis2">실력이 배가되는, <br>
														2025 VEGA 개념 개강
													</strong>
												</div>
										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/Lecture/LectureDetail.asp?LType=PROMOTION&CHOICE_CD=&AREA_CD=&GRADE_CD=0008&CHOICE_LEVEL_ID=&LECTURE_ID=L67674&PROMO_ID=026152"
											class="link" data-ga-label="양진석_근본부터다른화학의신(神)"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_양진석_근본부터다른화학의신(神)\');}catch(_e){}');">
												<div class="description teacher">

													<em class="tch_name">화학 <br>양진석
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200432/m300x300.png"
														alt="양진석선생님 이미지">
												</div>
												<div class="description cont">
													<em class="txt_info ellipsis2">단지 떠먹기만 하면 되는 <br>화신의
														만점 커리큘럼
													</em> <strong class="tit_cont ellipsis2">근본부터 다른<br>화학의
														신(神)
													</strong>
												</div>
										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/teacher/event/2024/02/lsh_05/"
											class="link" data-ga-label="이승후_문제풀이의신세계GT심화SKILL"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_이승후_문제풀이의신세계GT심화SKILL\');}catch(_e){}');">
												<div class="description teacher">

													<span class="spr_main update_sticker">update</span> <em
														class="tch_name">생명과학 <br>이승후
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200490/m300x300.png"
														alt="이승후선생님 이미지">
												</div>
												<div class="description cont">
													<em class="txt_info ellipsis2">GT 승후쌤이 <br> 스벅이랑
														교재 쏜다!
													</em> <strong class="tit_cont ellipsis2">문제 풀이의 신세계 <br>GT
														심화 SKILL
													</strong>
												</div>
										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/Lecture/LectureDetail.asp?LType=PROMOTION&CHOICE_CD=&AREA_CD=&GRADE_CD=0008&CHOICE_LEVEL_ID=&LECTURE_ID=L69126&PROMO_ID=031113"
											class="link" data-ga-label="양서현_빛나는3평성적을위한,SPARKLE모의고사"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_양서현_빛나는3평성적을위한,SPARKLE모의고사\');}catch(_e){}');">
												<div class="description teacher">

													<span class="spr_main update_sticker">update</span> <em
														class="tch_name">화학 <br>양서현
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200504/m300x300.png"
														alt="양서현선생님 이미지">
												</div>

										</a></li>

									</ul>
								</div>
							</div>

							<div class="panel ">
								<div class="eteacher_list">
									<ul class="swiper-wrapper">

										<li class="swiper-slide"><a
											href="https://www.etoos.com/teacher/event/2023/11/jo_08/"
											class="link" data-ga-label="정온_미련하게공부하고요령있게훈련하자!"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_정온_미련하게공부하고요령있게훈련하자!\');}catch(_e){}');">
												<div class="description teacher">

													<em class="tch_name">국어 <br>정온
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200457/m300x300.png"
														alt="정온선생님 이미지">
												</div>

										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/teacher/event/2024/02/yjy_07/"
											class="link" data-ga-label="양지용_양지용의문풀X스킬전수수능KILL필.살.기"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_양지용_양지용의문풀X스킬전수수능KILL필.살.기\');}catch(_e){}');">
												<div class="description teacher">

													<em class="tch_name">수학 <br>양지용
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200506/m300x300.png"
														alt="양지용선생님 이미지">
												</div>

										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/teacher/event/2024/02/oce_21/"
											class="link" data-ga-label="오채은_유형별독해1등급전략쇼미더시리즈"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_오채은_유형별독해1등급전략쇼미더시리즈\');}catch(_e){}');">
												<div class="description teacher">

													<span class="spr_main update_sticker">update</span> <em
														class="tch_name">영어 <br>오채은
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200505/m300x300.png"
														alt="오채은선생님 이미지">
												</div>

										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/teacher/event/2023/11/yhs_16/Default.asp"
											class="link" data-ga-label="양호승_끄덕임의연속,사회탐구양호승"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_양호승_끄덕임의연속,사회탐구양호승\');}catch(_e){}');">
												<div class="description teacher">

													<span class="spr_main update_sticker">update</span> <em
														class="tch_name">일반사회/통합사회 <br>양호승
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200502/m300x300.png"
														alt="양호승선생님 이미지">
												</div>

										</a></li>

										<li class="swiper-slide"><a
											href="https://www.etoos.com/Lecture/LectureDetail.asp?LType=PROMOTION&CHOICE_CD=&AREA_CD=&GRADE_CD=0008&CHOICE_LEVEL_ID=&LECTURE_ID=L69126&PROMO_ID=031113"
											class="link" data-ga-label="양서현_빛나는3평성적을위한,SPARKLE모의고사"
											onMouseDown="eval('try{ _trk_clickTrace(\'EVT\',\'main_주요강사_양서현_빛나는3평성적을위한,SPARKLE모의고사\');}catch(_e){}');">
												<div class="description teacher">

													<span class="spr_main update_sticker">update</span> <em
														class="tch_name">화학 <br>양서현
													</em>

												</div>
												<div class="thumbnail">
													<img class="lazy-img"
														data-src="https://img.etoos.com/teacher/teacher/200504/m300x300.png"
														alt="양서현선생님 이미지">
												</div>

										</a></li>

									</ul>
								</div>
							</div>

						</div>
					</div>

				</div>
			</div>

			<!--  주요강사 홍보 ▲  -->




		<!-- Footer -->
		<div>

			<footer id="etoosFoot" class="footer" data-ga-action="PC-main">


			<!-- Content_RightScrollBanner -->
			<div class="box_floating_banner">
				<div class="container">
					<div class="floating_banner_right"
						style="position: fixed; z-index: 111; top: 300px;">


						<!--EPMO-3920 삭제 2022-08-12-->
						<!-- // EPMO-3441 2022-06-07 -->
						<!--
						<div class="f_banner">
							<a href="/teacher/event/2022/05/lsh_30/" class="gifimage" data-ga-action="main_우측날개플로팅" data-ga-label="임수현르네상스프로젝트" onMouseDown="eval('try{ _trk_clickTrace( \'EVT\', \'고 메인_임수현르네상스프로젝트_우측사이드플로팅(220607)\' ); }catch(_e){ }');" target="_blank">
								<img src="/enp/front/2022/06/pmo/0607_113x165.png" class="lazy-img" alt="임수현르네상스프로젝트" width="113" height="165">
							</a>
						</div>-->
						<!-- // EPMO-3441 2022-06-07 -->

					</div>
				</div>
			</div>
			<!-- //Content_RightScrollBanner --> <!-- 회사 정보 및 사이트 연결 -->
			<div class="l_footer">
				<div class="container">

					<div class="copyright">
						<p class="txt">샘싹 주식회사</p>
						<p class="txt">
							사업자등록번호 : 111-11-11111&nbsp;&nbsp;|&nbsp;&nbsp;통신판매업신고 : 제
							1111-서울-1111호 &nbsp;&nbsp;|&nbsp;&nbsp;대표이사 : 샘싹
						</p>

					</div>
				</div>
			</div>
			<!-- 회사 정보 및 사이트 연결 -->
			 </footer>
		</div>
		<!-- //Footer -->



	</div>


</body>
</html>