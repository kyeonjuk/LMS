<html lagn="ko"
      xmlns:th="http://www.thymeleaf.org"
       xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
       layout:decorate="~{layouts/default_layout}">

<head>
    <!-- index.html 고유 CSS 추가 -->
    <th:block layout:fragment="css">
        <!--    <link rel="stylesheet" th:href="@{/css/page/home.css}" >-->
    </th:block>
    <!-- index.html 고유 스크립트 추가 -->
    <th:block layout:fragment="script">
        <!--    <script th:src="@{/js/page/home.js}"></script> -->
    </th:block>

</head>


<body>

    <div layout:fragment="content">
        <h1>Content</h1>
    </div>
</body>

</html>