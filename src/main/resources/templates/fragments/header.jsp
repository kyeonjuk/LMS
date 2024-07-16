<html lagn="ko" xmlns:th="http://www.thymeleaf.org">
<!--headerFragment 선언-->
<div th:fragment="headerFragment">

  <head>




<link rel="shortcut icon" type="image/x-icon" href="https://img.etoos.com/enp/front/main/icons/favicon.ico">
<link rel="icon" type="image/x-icon" href="https://img.etoos.com/enp/front/main/icons/favicon.ico">


    <TITLE>샘싹(SamSsak)</TITLE>

    		<link rel="stylesheet" href="https://www.etoos.com/common/css/etoos.css?v=72072.05" type="text/css">
    			<link rel="stylesheet" href="https://www.etoos.com/common/css/etoos_main2018.css?v=72072.05" type="text/css">

    				<link rel="stylesheet" href="https://www.etoos.com/common/css/etoos_comm2023.css?v=72072.05" type="text/css">




	<style>
		.header_container .common_logo .logo1 {
			position: relative;
			top: -10px;
			display: block;
			width: 133px;
			height: 50px;
			background: url(https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FzrwWs%2FbtsFS2Jw7yE%2FM60JNZ20PSetT0iC8gbAok%2Fimg.png) no-repeat;
			background-size: 100%;
		}
	</style>

  </HEAD>

<div id="etoosWrap">

<header id="header_container" class="header_container header_sub fixed"><!-- 서브페이지는 class="header_sub fixed" 추가 -->
		<!-- inner_container -->
		<div class="inner_container" data-ga-action="GNB">
			<!-- common_container -->
			<div class="common_container">
				<!-- common_logo -->
				<div class="common_logo">
					<h1><a href="/"
					class="logo1" data-ga-label="샘싹로고"><span class="blind">샘싹</span></a></h1>
				</div>
				<!-- // common_logo -->

				<!-- gnb_container -->


	<nav id="gnb_container" class="gnb_container" data-ga-action="GNB"><!-- on -->
		<h2 class="blind">전체메뉴 영역</h2>
		<ul class="tab_navi">

			          <li><a href="/" class="btn_tab">홈</a></li>

			          <li><a href="/" class="btn_tab">전체강좌</a></li>

      					<li><a href="/course/teacher" class="btn_tab">강사</a></li>

      					<li><a href="/myRoom" class="btn_tab">마이룸</a></li>

                <div th:if="${session['role']} == admin">
                   <li><a href="/admin" class="btn_tab">관리자페이지</a></li>
                </div>

      					<li>
                    <a href="/myRoom/cart" class="btn_tab">
                        <img src="/images/icon/cart.png" alt="장바구니" class="icon" style="width: 40px;"/>
                    </a>
                </li>
      	</ul>
	</nav>


				<!-- // gnb_container -->
			</div>
			<!-- // common_container -->

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

					if (str != "") { document.getElementById("txtG_H_DQ_KEYWORD").value = str; }

					strG_H_DQ_KEYWORD = document.getElementById("txtG_H_DQ_KEYWORD").value;
					strG_H_DQ_KEYWORD = strG_H_DQ_KEYWORD.replace(/\"/gi, "");
					strG_H_DQ_KEYWORD = strG_H_DQ_KEYWORD.replace(/\'/gi, "");
					document.getElementById("txtG_H_DQ_KEYWORD").value = strG_H_DQ_KEYWORD;

					if (document.getElementById("txtG_H_DQ_KEYWORD").value == "" || document.getElementById("txtG_H_DQ_KEYWORD").value.trim() == "") {
						alert("검색어를 입력해주세요."); document.getElementById("txtG_H_DQ_KEYWORD").focus(); return;
					} else {
						location.href = "https://www.etoos.com/search/default.asp?dq_keyword=" + escape(document.getElementById('txtG_H_DQ_KEYWORD').value) + "&txtSrch=" + escape(document.getElementById('txtG_H_DQ_KEYWORD').value);
					}
				}

				function fnG_H_DQ_SEARCH_FOCUS() {
					if (strG_H_DQ_KEYWORD_FOCUS == "N") {
						document.getElementById("txtG_H_DQ_KEYWORD").value = "";
						strG_H_DQ_KEYWORD_FOCUS = "Y";
					}
				}
			</script>
		</div>

<!--cache-ok-->
				<!-- // common_search -->

			</div>
			<!-- // common_utill -->
		</div>
		<!-- // inner_container -->

	</header>

</div>
</html>