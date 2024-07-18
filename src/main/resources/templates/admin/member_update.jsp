<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lagn="ko" xmlns:th="http://www.thymeleaf.org" xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
	layout:decorate="~{layouts/default_layout}">

<head>


	<link rel="shortcut icon" type="image/x-icon" href="https://img.etoos.com/enp/front/main/icons/favicon.ico">
	<link rel="icon" type="image/x-icon" href="https://img.etoos.com/enp/front/main/icons/favicon.ico">

	<title> 샘싹 관리자 </title>

	<link rel="stylesheet" href="https://www.etoos.com/common/css/etoos.css?v=72072.05" type="text/css">
	<link rel="stylesheet" href="https://www.etoos.com/common/css/etoos_main2018.css?v=72072.05" type="text/css">

	<link rel="stylesheet" href="https://www.etoos.com/common/css/etoos_comm2023.css?v=72072.05" type="text/css">

	<script language="javascript" src="https://www.etoos.com/common/js/etoos.js?72072.05"
		type="text/javascript"></script>
	<script type="text/javascript" src="https://www.etoos.com/common/js/prototype.js"></script>


	<script language="javascript" src="https://www.etoos.com/common/js/jquery/jquery-1.8.3.min.js"
		type="text/javascript"></script>
	<script type="text/javascript">var $j = jQuery.noConflict(); </script>
	<script language="javascript">

	</script>
	<script type="text/javascript" async=""
		src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/10800810836/?random=1720436472855&amp;cv=11&amp;fst=1720436472855&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be4730za200&amp;gcd=13l3l3l3l1&amp;dma=0&amp;tag_exp=0&amp;u_w=2560&amp;u_h=1440&amp;url=https%3A%2F%2Fwww.etoos.com%2Fteacher%2Fdefault.asp&amp;ref=https%3A%2F%2Fwww.etoos.com%2Freport%2Fdefault.asp&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=%EC%9D%B4%ED%88%AC%EC%8A%A4%20-%203%EB%A7%8C%EC%9B%90%EB%8C%80%EB%A1%9C%20%EB%AA%A8%EB%93%A0%20%EC%9D%B8%EA%B0%95%20%EA%B5%AC%EB%8F%85&amp;npa=0&amp;pscdl=noapi&amp;auid=1017796135.1718341491&amp;uaa=x86&amp;uab=64&amp;uafvl=Not%252FA)Brand%3B8.0.0.0%7CChromium%3B126.0.6478.127%7CMicrosoft%2520Edge%3B126.0.2592.87&amp;uamb=0&amp;uam=&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;fdr=QA&amp;data=event%3Dgtag.config&amp;rfmt=3&amp;fmt=4"></script>
	<script type="text/javascript" async=""
		src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/1004640693/?random=1720436472941&amp;cv=11&amp;fst=1720436472941&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be4730v896309239z872087013za201zb72087013&amp;gcd=13l3l3l3l1&amp;dma=0&amp;tag_exp=0&amp;u_w=2560&amp;u_h=1440&amp;url=https%3A%2F%2Fwww.etoos.com%2Fteacher%2Fdefault.asp&amp;ref=https%3A%2F%2Fwww.etoos.com%2Freport%2Fdefault.asp&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=%EC%9D%B4%ED%88%AC%EC%8A%A4%20-%203%EB%A7%8C%EC%9B%90%EB%8C%80%EB%A1%9C%20%EB%AA%A8%EB%93%A0%20%EC%9D%B8%EA%B0%95%20%EA%B5%AC%EB%8F%85&amp;npa=0&amp;pscdl=noapi&amp;auid=1017796135.1718341491&amp;uaa=x86&amp;uab=64&amp;uafvl=Not%252FA)Brand%3B8.0.0.0%7CChromium%3B126.0.6478.127%7CMicrosoft%2520Edge%3B126.0.2592.87&amp;uamb=0&amp;uam=&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;fdr=QA&amp;rfmt=3&amp;fmt=4"></script>
	<meta http-equiv="origin-trial"
		content="AwnOWg2dzaxHPelVjqOT/Y02cSxnG2FkjXO7DlX9VZF0eyD0In8IIJ9fbDFZGXvxNvn6HaF51qFHycDGLOkj1AUAAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5jb206NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY5NTE2Nzk5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
	<script type="text/javascript" charset="UTF-8" defer=""
		src="https://kn.acrosspf.com/adn_check_1.0.2.ad?rb_adn_uid=rb-adn-1-2d806bf2441f7ebf379db6ab5c161a50"></script>
</head>

<body>

	<div layout:fragment="content">

		<div id="Sub840_conbody">
			<div id="Sub840_conbW">


				<!-- 좌측 네비바 start -->
				<div id="Sub840_Left">

					<div class="lnb_container">
						<!-- lnb_title -->
						<div class="lnb_title">
							<a href="/admin"><strong class="tit">관리자 페이지</strong></a>
						</div>
						<!-- // lnb_title -->

						<!-- lnb_info -->
						<div class="lnb_info" data-ga-action="마이룸_프로필">

							<div class="my_info">

								<p class="name" style="font-size: 25px;"><strong>관리자1</strong>님</p>
							</div>



						</div>
						<!-- // lnb_info -->

						<!-- lnb_menu -->
						<div class="lnb_menu" data-ga-action="마이룸_프로필">
							<strong class="menu_tit">회원 관리</strong>
							<ul class="lnb_menu_list">

								<li><a href="/admin"
										onmousedown="eval('try{ _trk_clickTrace(\'EVT\',\'마이룸_프로필_내강의실_수강중인강좌\');}catch(_e){}');"><span>회원
											정보 관리</span></a></li>


								<li><a href="/admin/teacher"
										onmousedown="eval('try{ _trk_clickTrace(\'EVT\',\'마이룸_프로필_내강의실_강좌수강신청\');}catch(_e){}');"><span>강사
											정보 관리</span></a>
								</li>
							</ul>
							<strong class="menu_tit">강좌 관리</strong>
							<ul class="lnb_menu_list">
								<li><a href="/admin/category-list"
										onmousedown="eval('try{ _trk_clickTrace(\'EVT\',\'마이룸_프로필_주문결제혜택_장바구니\');}catch(_e){}');"><span>카테고리
											관리</span></a>
								</li>
								<li><a href="/admin/"
										onmousedown="eval('try{ _trk_clickTrace(\'EVT\',\'마이룸_프로필_주문결제혜택_장바구니\');}catch(_e){}');"><span>강의
											패키지 등록</span></a>
								</li>
								<li><a href="/admin/"
										onmousedown="eval('try{ _trk_clickTrace(\'EVT\',\'마이룸_프로필_주문결제혜택_주문/배송조회\');}catch(_e){}');"><span>개별
											강의 등록</span></a>
								</li>
							</ul>
							<strong class="menu_tit">1대1 문의 관리</strong>
							<ul class="lnb_menu_list">
								<li><a href="/admin/"
										onmousedown="eval('try{ _trk_clickTrace(\'EVT\',\'마이룸_프로필_나의정보_개인정보수정\');}catch(_e){}');"><span>1대1
											문의 답변</span></a></li>

							</ul>
						</div>

					</div>
				</div>
				<!-- // 좌측 네비바 end -->

				<style>
					.cont_tit_type1 {
						position: relative;
						margin-top: 10px;
					}

					.tit {
						padding-left: 3px;
						font: bold 25px / 30px 'Malgun Gothic', '맑은고딕', sans-serif;
						color: #333;
						letter-spacing: -0.05em;
					}
				</style>

				<!-- 강사 등록 -->
				<div id="Sub840_con">

					<div class="wrapcustomer">

						<div class="cont_tit_type1 cont_tit_type1_1">
							<strong class="tit">회원/강사 수정</strong>

						</div>

						<!--//cont -->

						<form th:action="@{'/admin/member-update-pro/' + ${member.email}}" method="post" enctype="multipart/form-data">

							<div class="wr_tbl_board">
								<p class="list_t_desc">모든 항목 필수 입력</p>
								<table width="100%" class="tbl cstbl_input_st1 mt_10">
									<colgroup>
										<col style="width:148px">
										<col style="width:200px">
										<col style="width:200px">
									</colgroup>


									<tbody>
										<tr>
											<th>이름</th>
											<td colspan="4">
												<input name="name" type="text" class="csinp_txt" style="width:655px"
													maxlength="200" th:value="${member.name}">
											</td>
										</tr>

										<tr>
											<th>이메일</th>
											<td colspan="4">
												<input name="email" type="text" class="csinp_txt" style="width:655px"
													maxlength="200" th:value="${member.email}">
											</td>
										</tr>
										<tr>
											<th>비밀번호</th>
											<td colspan="4">
												<input name="password" type="password" class="csinp_txt"
													style="width:655px;" maxlength="200" th:value="${member.password}">
											</td>
										</tr>
										<tr>
											<th>핸드폰 번호</th>
											<td colspan="4">
												<input name="phone" type="text" class="csinp_txt" style="width:655px"
													maxlength="200" th:value="${member.phone}">
											</td>
										</tr>

										<tr>
											<th>생년월일</th>
											<td colspan="4">
												<input name="birth" type="text" class="csinp_txt" style="width:655px"
													maxlength="200" th:value="${member.birth}">
											</td>
										</tr>

										<tr>
											<th>가입 날짜</th>
											<td colspan="4">
												<input name="createDate" type="text" class="csinp_txt"
													style="width:655px" maxlength="200" th:value="${member.createDate}">
											</td>
										</tr>

										<tr>
											<th>권한</th>
											<td colspan="4">
												<input name="role" type="text" class="csinp_txt" style="width:655px"
													maxlength="200" th:value="${member.role}">
											</td>
										</tr>


										<tr>
											<th>현재 이미지</th>
											<td colspan="4">
												<img th:src="@{'/files/' + ${member.email} + ${member.profile_image}}" alt="현재 이미지" style="height: 100px;">
											</td>

										</tr>
										<tr>
											<th>새 이미지 업로드</th>
											<td colspan="4">
												<input type="file" name="newFile" style="height: 25px;" />
											</td>

										</tr>

									</tbody>

									<!-- 사용 여부 -->
									<tbody>
										<tr>
											<th>활성화 여부</th>
											<td colspan="4">
												<div class="csinp_select1" style="width:165px">
													<select name="active" th:field="${member.active}">
														<option value="1">활성화</option>
														<option value="0">비활성화</option>
													</select>
												</div>

											</td>
										</tr>
									</tbody>
								</table>
							</div>


							<div class="list_b_btn2 mt_30">
								<a href="/admin/category-add" class="btn_gr50" style="width:170px">취소</a>
								<button type="submit" class="btn_bg50" style="width:170px" id="check1_11">등록</button>
							</div>
							<!-- cont //-->
						</form>
					</div>

				</div>
				<!-- // 카테고리 등록 -->


			</div>
		</div>

	</div>

</body>

</html>