<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>


<script>
function statusChangeCallback(response) {
	  console.log('statusChangeCallback');
	  console.log(response);
		
	  FB.login(function(response) {
		    if (response.authResponse) {
		     console.log('Welcome!  Fetching your information.... ');
		     FB.api('/me', function(response) {
		    	 console.log('Successful login for: ' + response.name);	      
		          document.getElementById('fbname').value=response.name;
				  document.getElementById('fbid').value=response.id;

		          document.FBlogin.submit(); 
		       
		     });
		    } else {
		     console.log('User cancelled login or did not fully authorize.');
		    }
		});
	}


	function checkLoginState() {
	  FB.getLoginStatus(function(response) {
	    statusChangeCallback(response);
	  });
	}
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '632534183551089',
      xfbml      : true,
      version    : 'v2.5'
    });
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>
<img src="facebook_icon.png" onclick="checkLoginState()" width="48" height="48"/>
<script>

</script> 
<form name="FBlogin" action="facebookLogin.do" method="post">
<input type="hidden" id="fbname" name="name">
<input type="hidden" id="fbid" name="id">
<input type="hidden" name="interlock" value="f">
</form>
<!-- <script>
var oneClick = true; //중복호출 방지용 상태변수
function statusChangeCallback(response) {
  console.log('statusChangeCallback');
  console.log(response);
	
  if (response.status === 'connected') {
    testAPI();
  } else if (response.status === 'not_authorized') {
    document.getElementById('status').innerHTML = 'Please log ' +
      'into this app.';
  } else {
    document.getElementById('status').innerHTML = 'Please log ' +
      'into Facebook.';
    fblogout();
  }
}


function checkLoginState() {
  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });
}

  window.fbAsyncInit = function() {
    FB.init({
      appId      : '632534183551089',
      xfbml      : true,
      version    : 'v2.5'
    });
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
  function testAPI() {
	    console.log('Welcome!  Fetching your information.... ');
	    FB.api('/me', function(response) {
	      console.log('Successful login for: ' + response.name);	      
          document.getElementById('fbname').value=response.name;
		  document.getElementById('fbid').value=response.id;
          if( oneClick ){
              oneClick = false;
          document.FBlogin.submit();
          }
	    });
	  }
  
  
function fblogout(){
	FB.logout(function(response) {});
	location.href="logout.jsp";
}

</script>
  <fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
  </fb:login-button>
 -->

</body>
</html>