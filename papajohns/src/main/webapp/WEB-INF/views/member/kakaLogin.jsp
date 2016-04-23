<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<title>Login </title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
</head>
<body>
<a id="kakao-login-btn"></a>
<a href="http://alpha-developers.kakao.com/logout"></a>

<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('ed30b6eb1fb27f5725880f040f63f1e0');
    // 카카오 로그인 버튼을 생성합니다.
   Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      success: function(authObj) {
        // 로그인 성공시, API를 호출합니다.
        Kakao.API.request({
          url: '/v1/user/me',
          success: function(res) {
            alert(JSON.stringify(res));
            alert(JSON.stringify(res.id));
            alert(JSON.stringify(res.properties.nickname));
            var id=JSON.stringify(res.id);
            var nickname=JSON.stringify(res.properties.nickname);
            window.location.href="JLogin.do?id="+id; 

          },
          fail: function(error) {
            alert(JSON.stringify(error));
          }
        });
      },
      fail: function(err) {
        alert(JSON.stringify(err));
      }

      
      
    });
    

 

</script>

</body>
</html>
