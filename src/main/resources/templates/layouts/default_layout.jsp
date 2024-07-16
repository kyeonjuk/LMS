<html lang="ko"
      xmlns:th="http://www.thymeleaf.org"
      xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout">

<head>
     <!-- content script -->
    <th:block layout:fragment="css"></th:block>
    <!-- content script -->
    <th:block layout:fragment="script"></th:block>
</head>


<body>
    <!-- header fragment 사용 -->
    <th:block th:replace="fragments/header :: headerFragment"></th:block>
    <!-- content fragment 사용 -->
    <th:block layout:fragment="content"></th:block>
    <!-- footer fragment 사용 -->
    <th:block th:replace="fragments/footer :: footerFragment"></th:block>
</body>

</html>


