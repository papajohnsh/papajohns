<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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
    
    <link rel="stylesheet" href="css1/glyphicons.css">
    
<script type="text/javascript" src="js/httpRequest.js"></script>
</head>
<body>
	<header class="main-header">
		<!-- Logo -->
		<a href="index.do" class="logo" style="padding-bottom: 30px;">
			<!-- index로 이동 --> <!-- mini logo for sidebar mini 50x50 pixels --> <span
			class="logo-mini"><b>C</b>RM</span> <!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b>Class</b>Room</span>
		</a>
		<!-- Header Navbar: style can be found in header.less -->
		<nav class="navbar navbar-static-top" role="navigation">
			<!-- Sidebar toggle button-->
			<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
				role="button"> <span class="sr-only">Toggle navigation</span>
			</a>
			<div class="navbar-custom-menu">
				<ul class="nav navbar-nav">

						<!-- Myclass-menu -->
					<li class="myclass-menu"><a href="classRoomForm.do"><span>내강의실</span></a>
					</li>

					<!-- login-menu -->
					<c:if test="${empty sid }">
						<li class="login-menu"><a href="loginForm.do" style="padding-right: 20px;"><span>로그인</span></a>
						</li>
					</c:if>

					<c:if test="${!empty sid}">
						<li class="login-menu"><a href="logout.do" style="padding-right: 20px;"><span>로그아웃</span></a></li>
						<li class="Myinfo-menu"><a href="myInfoForm.do"><span>내정보</span></a>
						</li>
					</c:if>
					
					<!-- Find-menu -->
					<li class="Find-menu"><a href="classRoomNameSearchForm.do?num=1"><span>검색</span></a></li>
					
					<li class="Find-menu">
					<a href="#" onClick="javascript:window.open('myPlan.do','popup','scrollbars=no, resizable=no,channelmode=no, toolbar=no, width=900px,height=800px')"><span>스케줄러</span> </a>
					</li>
					<!-- bbs-menu -->
					<li class="bbs-menu"><a href="bbsListForm.do"><span>게시판</span></a>
					</li>
					<!-- support-menu -->
					<li class="support-menu"><a href="faqList.do"><span>고객지원</span></a>
					</li>
				</ul>
			</div>
		</nav>
	</header>
</body>
</html>