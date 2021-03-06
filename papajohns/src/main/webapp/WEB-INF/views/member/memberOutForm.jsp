<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<%@ include file="../header.jsp" %>
     
     <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
           <!-- Sidebar user panel -->

    <div class="user-panel">
          <c:if test="${empty sid}">
          <div class="pull-left image">
          	<img id="profile-img" class="img-circle" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
          </div>
          </c:if>
          <c:if test="${!empty sid}">
        <div class="pull-left image" style="height: 100px; width: 80px;">

					<img src="resource/data/${sid }/profile.jpg"
						onerror="this.src='//ssl.gstatic.com/accounts/ui/avatar_2x.png'"
						class="img-circle"
						style="max-width: 80px; height: 80px; width: 80px; margin-top: 10px;">
				</div>
				<div style="margin-left: 85px; margin-top: -5px;">
					<a href="myInfoForm.do"><font size="2">내정보</a>&nbsp;
					&nbsp; <a href="logout.do"><font size="2">로그아웃</a>
				</div>
				<br>
				<br>
				<div style="margin-top: -20px;">
					<font size="2" color="white">&nbsp;&nbsp;&nbsp;${snickname}</font>
				</div>
				<div style="margin-left: 120; margin-top: 8px;">
					&nbsp;&nbsp;&nbsp;<a href="#"><i
						class="fa fa-circle text-success"></i><font color="white">&nbsp;&nbsp;Online</font>
					</a>
				</div>

           </c:if>
            <div class="pull-left info">
              <c:if test="${empty sid}">
              <p>로그인 해주세요</p>
              <a href="#"><i class="fa fa-circle text-danger"></i> Offline</a>
              </c:if>
            
            </div>
          </div>
          
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">Menu</li>
            <li>
              <a href="myInfoForm.do">
                <i class="fa fa-circle-o text-red"></i> <span>내정보</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
            <li>
              <a href="myPlan.do">
                <i class="fa fa-circle-o text-aqua"></i><span>스케줄</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
            	<li><a href="memberOutForm.do"> <i
						class="fa fa-circle-o text-yellow"></i><span>회원탈퇴</span> <span
						class="pull-right"><i
							class="glyphicon glyphicon-chevron-right"></i></span>
				</a></li>
          </ul>
           <ul class="sidebar-menu"></ul>
        </section>
        <!-- /.sidebar -->
      </aside>
      
      <!-- general form elements disabled -->
             <<!-- Content Wrapper. Contains page content -->
   			<div class="content-wrapper" style="background-color: #ffffff; padding: 5%;">
   			 <div class="col-xs-2"></div>
         	<div class="col-xs-8">
              <div class="box box-warning">
                <div class="box-header with-border">
                  <h3 class="box-title">회원탈퇴</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <form role="form" name="memberOut" action="memberOut.do">
                  <input type="hidden" name="idx" value="${sidx}">
                    <!-- text input -->
                    <div class="form-group">
                      <label>이름</label>
                      <input type="text" name="name" class="form-control" readonly="readonly" value="${sname}">
                    </div>
                    <div class="form-group">
                      <label>비밀번호</label>
                      <input type="password" name="pwd" class="form-control" value="">
                    </div>
                    <input type="submit" class="btn btn-warning pull-right" value="회원탈퇴">
      			</form>
      		</div>
      	</div>
      	<div class="col-xs-2"></div>
      	</div>
	</div><!-- container -->
	         
  	<%@ include file="../footer.jsp" %>
    <%@ include file="../controllSide.jsp" %>

</body>
</html>