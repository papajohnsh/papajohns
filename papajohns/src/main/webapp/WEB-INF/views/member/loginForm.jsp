<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="css/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="css/dist/css/skins/_all-skins.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="css/plugins/iCheck/flat/blue.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="css/plugins/morris/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="css/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="css/plugins/datepicker/datepicker3.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="css/plugins/daterangepicker/daterangepicker-bs3.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="css/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<script type="text/javascript" src="js/httpRequest.js"></script>
<script>
function show(){//id중복체크

	   var params='id='+document.loginForm.id.value;
	sendRequest('idCheckOk.do', params, showResult, 'POST');	
}

function showResult(){//응답함수
	if(XHR.readyState==4){
		if(XHR.status==200){
			var msg=XHR.responseText;
			var spanTag=document.getElementById('idmsg');
			spanTag.innerHTML=msg;
		}
	}
}

function pwdCheck(){//비밀번호 확인

	var pwd=document.loginForm.pwd.value;
	var repwd=document.loginForm.repwd.value;
	
	if(pwd && repwd){

	if(pwd==repwd){
		var msg="<font color='blue'>비밀번호가 일치합니다.</font>"
		var spanTag=document.getElementById('pwdmsg');
		spanTag.innerHTML=msg;
		
	}else{
		var msg="<font color='red'>비밀번호가 일치하지 않습니다.</font>"
			var spanTag=document.getElementById('pwdmsg');
			spanTag.innerHTML=msg;
	}
	
	}else{
		
		var msg="<font color='black'>비밀번호를 입력해주세요.</font>"
			var spanTag=document.getElementById('pwdmsg');
			spanTag.innerHTML=msg;
	}
}	
</script>
<script type="text/javascript">
var now=new Date();
var year = now.getFullYear();
var month=now.getMonth()+1;
var date = now.getDate();
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
 <%@include file="../header.jsp" %>
 
<div class="container" style="width: 500px">

  <h2>ClassRoom</h2>
  <form role="form" name="login" action="login.do">
    <div class="form-group">
      <label for="id">ID:</label>
      <input type="text" class="form-control" name="id" id="id" value="${cookie.saveid.value==null?'':cookie.saveid.value}" placeholder="Enter id">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" name="pwd" id="pwd" placeholder="Enter password">
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="saveid" value="on" ${cookie.saveid.value==null?"":"checked"}> Remember me</label>
    </div>
     <input type="submit" class="btn btn-default" value="login">
    <button type="button" class="btn btn-info btn-default" data-toggle="modal" data-target="#myModal">회원가입</button>
  </form>
  <br>
 <div align="right">
 	<span><a href="idFindForm.do">아이디 찾기</a></span> |
 	<span><a href="pwdFindForm.do">비밀번호 찾기</a></span>
 </div>
</div>
<div align="center">
  <%@ include file="naverLogin.jsp" %>
  </div>
<br>

<div class="container">
  <!-- Modal -->
 <form role="form" name="loginForm" action="memberAdd.do" method="POST">
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">회원가입</h4>
        </div>

        <div class="modal-body">
		   <div class="form-group">
		     <label for="id">회원아이디:</label>
		     <input type="text" required="required" class="form-control" name="id" id="id" placeholder="Enter id" onkeyup="show();">
				 <span id="idmsg" style="display:;color:blue;"></span>
		   </div>
		   <div class="form-group">
		     <label for="pwd">비밀번호:</label>
		     <input type="password" required="required" class="form-control" name="pwd" id="pwd" maxlength="15" placeholder="Enter password">
		   </div>
		   <div>
		   	<label for="repwd">비밀번호 확인:</label>
		   	<input type="password" class="form-control" name="repwd" id="repwd" maxlength="15" onkeyup="pwdCheck();" placeholder="Enter password">
		   	<span id="pwdmsg"></span>
		   </div>
		   <div class="form-group">
		     <label for="name">이름:</label>
		     <input type="text" required="required" class="form-control" name="name" id="name" placeholder="Enter name">
		   </div>
		   <div class="form-group">
		     <label for="gender">성별:</label>
		     <input type="radio"  name="gender" value="0" checked="true">남자
		     <input type="radio"  name="gender" value="1">여자
		     <input type="radio"  name="gender" value="2">기타
		   </div>
		   <div class="form-group">
		   	<label for="birthday">생년월일:</label><br>
		   	 
		   	 <script type="text/javascript">
		   	 document.write('<select name=birthday>');
		   	 for(var i=1950;i<=2020;i++){
		   		 if(i==year){
		   			 document.write('<option selected="selected">'+year+'</option>');
		   		 
		   		 }else{
		   		 	document.write('<option value='+i+'>'+i+'</option>');
		   	 	}
		   	 }
		   		document.write('</select>');
		   	 </script>년
		   	 <select name="birthday">
		   	 	<script>
		   	 		for(var i=1;i<=12;i++){
		   	 			if(i==month){
		   	 			document.write('<option value='+i+'>'+i+'</option>');	
		   	 			
		   	 			}else{
		   	 				document.write('<option value='+i+'>'+i+'</option>');
		   	 			}
		   	 		}
		   	 		
		   	 	</script>
		   	 </select>월
		   	 <select name="birthday">
		   	 	<script>
		   	 		for(var i=1;i<=31;i++){
		   	 			if(i==date){
		   	 				document.write('<option selected="selected">'+date+'</option>');
		   	 			}else{
		   	 				document.write('<option value='+i+'>'+i+'</option>');
		   	 			}
		   	 		}
		   	 	</script>
		   	 </select>일
		   </div>
		   <div class="form-group">
		     <label for="email">email:</label>
		     <input type="text" name="email"  id="email" placeholder="Enter email">
		     <select style="width: 30%" name="email">
		     	<option value="직접입력">직접입력</option>
		     	<option value="@naver.com">@naver.com</option>
		     	<option value="@daum.net">@daum.net</option>
		     	<option value="@gmail.com">@gmail.com</option>
		     </select>		     
		   </div>
		   <div class="form-group">
		<label for="phone">핸드폰 번호:</label><br>
		     <input type="text" required="required" name="phonenumber" id="phonenumber" placeholder="010"maxlength="3">-<input type="text" name="phonenumber" maxlength="4">-<input type="text" name="phonenumber" maxlength="4">
		     
		   </div>
        </div>
        <div class="modal-footer">

        <!-- <input type="submit" class="btn btn-default" value="login">-->
        <button type="submit" class="btn btn-default">Submit</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

        </div>
	</div>
	</div>
</div>
        </form>
</div>

<%@ include file="../controllSide.jsp" %>
 <!-- jQuery 2.1.4 -->
    <script src="css/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.5 -->
    <script src="css/bootstrap/js/bootstrap.min.js"></script>
    <!-- Morris.js charts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="css/plugins/morris/morris.min.js"></script>
    <!-- Sparkline -->
    <script src="css/plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- jvectormap -->
    <script src="css/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="css/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="css/plugins/knob/jquery.knob.js"></script>
    <!-- daterangepicker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
    <script src="css/plugins/daterangepicker/daterangepicker.js"></script>
    <!-- datepicker -->
    <script src="css/plugins/datepicker/bootstrap-datepicker.js"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="css/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <!-- Slimscroll -->
    <script src="css/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="css/plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="css/dist/js/app.min.js"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="css/dist/js/pages/dashboard.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="css/dist/js/demo.js"></script>

</body>
</html>
