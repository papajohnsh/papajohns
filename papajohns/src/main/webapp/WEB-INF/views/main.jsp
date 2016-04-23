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
      
      <link rel="stylesheet" href="assets/css/main.css" />
      
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
    <label for="id"> &nbsp;<font size="3em"> <a href="loginForm.do" style="color: white;">회원가입</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="idFindForm.do"  style="color: white;"><b>아이디 찾기</b></a></font>|
    <font size="3em"><a href="pwdFindForm.do"  style="color: white;"><b>비밀번호 찾기</b></a></font></label>
 </div>
<div style="margin-left: 25%;">

	<div id="top" style="margin:0 auto; width:300px;">
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

         <script src="assets/js/main.js"></script>
         
         <script src="assets/js/main.js"></script>
         
         
   </body>
</html>