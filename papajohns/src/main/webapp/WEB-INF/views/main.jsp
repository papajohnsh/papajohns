
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
   #a{
   
   align: center;
   display: block;
   position:relative;
   top:80px;
   margin: 0 auto;
   }
   #b{
   font-size:50px;
   margin-top:500px;
   display: block;
   width:295px;
   top:-120px;
   margin: 0 auto;
   
   }
   #c{
   width:300px;
   align: center;
   display: block;
   position:relative;
   top:-70px;
   margin: 0 auto;
   font-family: Verdana, sans-serif;
   color: #d4d4d4;
   }
   
   </style>
   </head>
   <body>
   		<div class="container" style="width: 500px;margin-top:100px; margin: 0px auto; ">

  <h2>ClassRoom</h2>
  <br>  <br>
  <form role="form" name="login" action="login.do">
    <div class="form-group">
      <label for="id"><font size="4em">ID:</font></label>
      <input type="text" class="form-control" name="id" style="width: 400px;" id="id" value="${cookie.saveid.value==null?'':cookie.saveid.value}" placeholder="Enter id">
    </div>
    <br><br>
    <div class="form-group">
      <label for="pwd"><font size="4em">Password:</font></label>
      <input type="password" class="form-control" name="pwd" style="width: 400px;" id="pwd" placeholder="Enter password">
    </div><br><br>
    <div class="checkbox">
      <label><input type="checkbox" name="saveid" value="on" ${cookie.saveid.value==null?"":"checked"}> Remember me</label>
    </div>
    <div align="right">
 	<label for="id"><font size="2em"><a href="idFindForm.do"  style="color: white;"><b>아이디 찾기</b></a></font>|
 	<font size="2em"><a href="pwdFindForm.do"  style="color: white;"><b>비밀번호 찾기</b></a></font></label>
 </div>
 <br>
   <div style="margin-left:100px;"><input type="submit" class="btn btn-success pull-center" value="login"style="width: 80px;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button type="button" class="btn btn-success pull-center" style="height: 42px; width: 80px;" data-toggle="modal" data-target="#myModal" ><font color="white">회원가입</font></button></div>  
  </form>
  <br>

</div>

         <script src="assets/js/main.js"></script>
         
         <script src="assets/js/main.js"></script>
         
         
   </body>
   

   
      
</html>