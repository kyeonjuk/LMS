<html lagn="ko" xmlns:th="http://www.thymeleaf.org">
<!--headerFragment 선언-->
<div th:fragment="footerFragment">

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

  <!-- Footer -->
  		<div>

  			<footer id="etoosFoot" class="footer" data-ga-action="PC-main">


  			<!-- Content_RightScrollBanner -->
  			<div class="box_floating_banner">
  				<div class="container">
  					<div class="floating_banner_right"
  						style="position: fixed; z-index: 111; top: 300px;">



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
</html>