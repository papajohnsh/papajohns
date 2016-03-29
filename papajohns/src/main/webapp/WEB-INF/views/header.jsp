<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body> 
 <header class="main-header">
        <!-- Logo -->
        <a href="index.do" class="logo"><!-- index로 이동 -->
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>C</b>RM</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Class</b>Room</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              
              <!-- Myclass-menu -->
              <li class="myclass-menu">
                <a href="classRoomForm.do"><span>MyClass</span></a>
              </li>
              
              <!-- Myinfo-menu -->
              <li class="Myinfo-menu">
                <a href="myInfo.do"><span>MyInfo</span></a>
              </li>
              
              <!-- Find-menu -->
              <li class="Find-menu">
                <a href="findListForm.do"><span>Search</span></a>
              </li>
             
              <!-- bbs-menu -->
              <li class="bbs-menu">
                <a href="bbsListForm.do"><span>Bbs</span></a>
              </li>
              <!-- support-menu -->
              <li class="support-menu">
                <a href="supportForm.do"><span>Support</span></a>
              </li>
              <!-- Control Sidebar Toggle Button -->
		          <li>
		            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
		          </li>
            </ul>
          </div>
        </nav>
     </header>
</body>
</html>