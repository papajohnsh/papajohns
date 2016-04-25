<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
   Eventually by HTML5 UP
   html5up.net | @n33co
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
   <head>
      <title>Eventually by HTML5 UP</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
     
     <!-- 부트스트랩이랑 아래꺼 한줄이랑 겹침!! 아래꺼 주석하면 부투스트랩뜸 Ctrl+A -->
       <link rel="stylesheet" href="assets/css/main.css" />  
	
	<!-- 부트스트랩 기능 -->
      <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <style>
 
   </style>
   </head>
   <body>
  <div style="margin-top:-10%; margin-left: 10%; ">
   <font size="50em" ><h4>지금  이순간' <br>ClassRoom</h4></font>
   </div>
         <div class="container" style="position:absolute; top:30%; left:70%; ">

 
  <br>  <br>
  <form role="form" name="login" action="login.do">   
    <div class="form-group">
      <label for="id"><font size="4em">ID:</font></label>
      <input type="text" class="form-control" name="id" style="width: 23%; height:6%;" id="id" value="${cookie.saveid.value==null?'':cookie.saveid.value}" placeholder="Enter id">
    </div>
    <br><br>
    <div class="form-group">
      <label for="pwd" style="margin-top:4%;"><font size="4em">Password:</font></label>
      <input type="password" class="form-control" name="pwd" style="width:23%; height:6%;" id="pwd" placeholder="Enter password">
    </div>
   <div ><input type="submit" class="btn btn-danger btn-m" value="로그인"style="width: 23%; height:6%; margin-top:80px ; ">
   </div>
  </form>  
 
     <div style="margin-top:150px;">

    <label for="id"> &nbsp;<font size="3em"> <a data-toggle="modal" href="#myModal" style="color: white;">회원가입</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="idFindForm.do"  style="color: white;"><b>아이디 찾기</b></a></font>|
    <font size="3em"><a href="pwdFindForm.do"  style="color: white;"><b>비밀번호 찾기</b></a></font></label>
 </div>
<div style="margin-left: 25%;">

	<div id="top1" style="margin:auto; width:300px;">
	<div style="float:left">
   <%@ include file="member/naverLogin.jsp" %>
   </div>
   	<div style="float:left">
 <%@ include file="member/facebookLogin.jsp" %>
   </div>
   	<div style="float:left">
 <%@ include file="member/kakaLogin.jsp" %>
   </div>
   	<div style="float:left">
 <%@ include file="member/googleLogin.jsp" %>
   </div>
 </div>
</div>
</div> 
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
		     <label for="nickname">닉네임:</label>
		     <input type="text" required="required" class="form-control" name="nickname" id="nickname" placeholder="Enter nickname">
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
		     <input type="text" name="email"  id="email1" maxlength="25" placeholder="Enter email">
		     <input type="text" name="email" id="email2" maxlength="25">
		     <select style="width: 30%" name="edomain" id="sel_mail" onchange="chgdomain3()">
		     	<option value="" selected="selected">직접입력</option>
		     	<option value="@naver.com">@naver.com</option>
		     	<option value="@daum.net">@daum.net</option>
		     	<option value="@gmail.com">@gmail.com</option>
		     </select>		     
		   </div>
		   <div class="form-group">
		<label for="phone">핸드폰 번호:</label><br>
		     <select style="width: 20%" name="phonenumber">
		     	<option value="010" selected="selected">010</option>
		     	<option value="011">011</option>
		     	<option value="016">016</option>
		     </select>	
		   	 -<input type="text" name="phonenumber" maxlength="4">-<input type="text" name="phonenumber" maxlength="4">
		     
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
         <script src="assets/js/main.js"></script>
         
         <script src="assets/js/main.js"></script>
         
         
   </body>
</html>