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
	
	var userid=document.memberAdd.id.value;//userid 값을 가져옴
	var params='userid='+userid;//파라미터 구축
	sendRequest('idCheckOk.do', params, showResult, 'GET');

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
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
 <%@include file="../header.jsp" %>
 
<div class="container" style="width: 500px">

  <h2>ClassRoom</h2>
  <form role="form" name="login" action="loginOk.do">
    <div class="form-group">
      <label for="id">ID:</label>
      <input type="text" class="form-control" name="id" id="id" placeholder="Enter id">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" name="pwd" id="pwd" placeholder="Enter password">
    </div>
    <div class="checkbox">
      <label><input type="checkbox"> Remember me</label>
    </div>
     <input type="submit" class="btn btn-default" value="login">
    <button type="button" class="btn btn-info btn-default" data-toggle="modal" data-target="#myModal">회원가입</button>
  </form>
 
</div>


<div class="container">
  <!-- Modal -->
 <form role="form" name="memberAdd" action="memberAdd.do">
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

		     <input type="button" class="btn btn-info" value="중복확인" onclick="show()">
		     <span id="idmsg"></span>
		     <input type="text" class="form-control" name="id" id="id">

		   </div>
		   <div class="form-group">
		     <label for="pwd">비밀번호:</label>
		     <input type="password" class="form-control" name="pwd" id="pwd" maxlength="15" placeholder="Enter password">
		   </div>
		   <div class="form-group">
		     <label for="name">이름:</label>

		     <input type="text" class="form-control" name="name" id="name" placeholder="Enter name">
		   </div>
		   <div class="form-group">
		     <label for="gender">성별:</label>
		     <input type="radio"  name="gender" value="0" checked="true">남자
		     <input type="radio"  name="gender" value="1">여자
		     <input type="radio"  name="gender" value="2">기타

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
<<<<<<< HEAD
		     <label for="phone">핸드폰 번호:</label><br>
		     <input type="text" name="phonenumber" id="phonenumber" placeholder="010"maxlength="3">-<input type="text" name="phonenumber" maxlength="4">-<input type="text" name="phonenumber" maxlength="4">
=======
		     <label for="phonenumber">핸드폰 번호:</label><br>
		     <input type="text" id="phonenumber" placeholder="010"maxlength="3">-<input type="text" maxlength="4">-<input type="text" maxlength="4">
>>>>>>> branch 'master' of https://github.com/papajohnsh/papajohns.git
		   </div>
<<<<<<< HEAD
=======
  	
>>>>>>> branch 'master' of https://github.com/papajohnsh/papajohns.git
        </div>
        <div class="modal-footer">
<<<<<<< HEAD
        <input type="submit" class="btn btn-default" value="가입">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
=======
        <!-- <input type="submit" class="btn btn-default" value="login">-->
        <button type="submit" class="btn btn-default">Submit</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          
>>>>>>> branch 'master' of https://github.com/papajohnsh/papajohns.git
        </div>
<<<<<<< HEAD
       
=======
        </form>
>>>>>>> branch 'master' of https://github.com/papajohnsh/papajohns.git
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