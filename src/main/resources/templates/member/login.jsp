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
            <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FzrwWs%2FbtsFS2Jw7yE%2FM60JNZ20PSetT0iC8gbAok%2Fimg.png" alt="샘플 이미지"
                  style="margin-bottom:27px; margin-left:127px;"/>
          </a>

          <form method="post" action="/member/loginPro" id="login-form">
              <input type="text" name="email" placeholder="Email">
              <input type="password" name="password" placeholder="Password">

              <br>
              <br>
               <div style="text-align: center; color:dimgrey;" >
              		<a href="/member/register" class="">회원가입</a>
              		<span>&nbsp;|&nbsp;</span>
              		<a href="/member/findId" class="">아이디 찾기</a>
              		<span>&nbsp;|&nbsp;</span>
              		<a href="/member/findPassword" class="">비밀번호 찾기</a>
               </div>

              <input type="submit" value="Login">
          </form>
      </div>
  </div>
  </body>
</body>
</html>

