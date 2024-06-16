<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" th:href="@{/css/register.css}" />

<style>

  .cal {
    font-weight:600;
    margin-top:10px;
    margin-bottom:10px;
  }

   .error_email {
      padding-bottom: 10px;
      font-size: 13px;
      line-height: 18px;
      color: #ff3f3f;
      padding-top: 5px;
      margin-left: 5px;
    }

   .check_message {
         padding-bottom: 10px;
         font-size: 13px;
         line-height: 18px;
         color: gray;
         padding-top: 5px;
         margin-left: 5px;
   }

   .error_pw {
      padding-bottom: 10px;
      font-size: 13px;
      line-height: 18px;
      color: #ff3f3f;
      padding-top: 5px;
      margin-left: 5px;
    }


  #checkEmail {
    color: #fff;
    font-size: 16px;
    background-color: #5eb656;
    margin-top: 20px;
    height: 48px;
    padding: 0 10px;
    box-sizing: border-box;
    margin-bottom: 2px;
    border-radius: 6px;
  }

</style>

<script>
    // 이메일 중복체크
    $(document).ready(function() {
        $('#email').keyup(function() {

            let email = $('#email').val();

            $.ajax({
                url:'/member/checkEmail?email=' + email,
                type:'get',
                success:function(result){   // result : boolean타입

                    let msg = '';
                    let color = '';

                    if (result) {   // 존재하는 이메일
                        msg = '이미 존재하는 이메일 입니다.';
                        color = '#ff3f3f';
                    } else {
                        msg = '사용 가능한 이메일 입니다.';
                        color = 'green';
                    }

                    $('.error_email').html(msg).css('color', color);

                },
                error:function(req, status) {
                    alert(status);
                }
            });
        });

    });

    // 비밀번호 확인 체크
    $(document).ready(function() {
        $('#rePw').keyup(function() {
            let pw = $('#pw').val();
            let rePw = $('#rePw').val();

            let msgPw = '';
            let colorPw = '';

            if (pw != rePw) {
                msgPw = '비밀번호 확인을 위해 다시 입력해주세요.';
                colorPw = '#ff3f3f';
            } else {
                msgPw = '사용가능한 비밀번호 입니다.';
                colorPw = 'green';
            }

            $('.error_pw').html(msgPw).css('color', colorPw);

        });
    });
</script>


</head>
<body>


  <div style="margin-top:100px">
      <div class="login-wrapper">

          <!-- 로고 -->
          <a href="/">
              <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FzrwWs%2FbtsFS2Jw7yE%2FM60JNZ20PSetT0iC8gbAok%2Fimg.png" alt="샘플 이미지"
                        style="margin-bottom:30px; margin-left:120px;"/>
          </a>


          <form method="post" action="registerPro" id="login-form">

             <div class="cal">이메일</div> <input type="email" name="email" id="email" placeholder="이메일주소" required>

             <!-- 이메일 중복 확인 -->
             <div class="error_email"></div>
             <div class="check_message">회원가입 후 해당 이메일로 전송된 링크를 클릭해야 로그인 가능</div>
              <div class="cal">비밀번호</div> <input type="password" name="password" id="pw" placeholder="비밀번호" required>

              <div class="cal">비밀번호 재확인</div> <input type="password" name="rePw" id="rePw" placeholder="비밀번호 재확인">
              <div class="error_pw"></div>

              <div class="cal">이름</div> <input type="text" name="name" placeholder="이름" required>

              <div class="cal">생년월일</div> <input type="text" name="birth" placeholder="생년월일 8자리">

              <div class="cal">휴대전화</div> <input type="tel" name="phone" placeholder="휴대전화번호">

              <input type="submit" value="회원가입">
          </form>



      </div>
  </div>

</body>
</html>

