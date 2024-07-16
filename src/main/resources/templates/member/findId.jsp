<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" th:href="@{/css/register.css}" />


    <script>

    </script>


</head>

<body>

    <body>
        <div style="margin-top:300px">
            <div class="login-wrapper">

                <!-- 로고 -->
                <a href="/">
                    <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FzrwWs%2FbtsFS2Jw7yE%2FM60JNZ20PSetT0iC8gbAok%2Fimg.png"
                        alt="샘플 이미지" style="margin-bottom:27px; margin-left:127px;" />
                </a>

                <h2 class="title" style="
                    color: green;
                    font-size: 15px;
                    font-weight: 600;
                    margin-left: 90px;
                ">
                    이름과 핸드폰번호를 입력해주세요.
                </h2>

                <form method="post" action="/member/findIdPro" id="login-form">
                    <input type="text" name="name" placeholder="이름">
                    <input type="text" name="phone" placeholder="01012341234">

                    <input type="submit" value="아이디 찾기">
                </form>
        <br>
                <div style="text-align: center; color:dimgrey;">

                                        <a href="/member/findPassword">비밀번호 찾기</a>
                                    </div>
            </div>
        </div>
    </body>
</body>

</html>