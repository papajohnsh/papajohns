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
            <div class="pull-left image">
              <img src="img/강동원.jpg" class="img-circle" style="width: 40px" alt="User Image">
            </div>
            <div class="pull-left info">
              <p>${sname}</p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">Menu</li>
            <li>
              <a href="myInfo.do">
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
             <li>
              <a href="memberOutForm.do">
                <i class="fa fa-circle-o text-yellow"></i><span>회원탈퇴</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
          </ul>
           <ul class="sidebar-menu"></ul>
        </section>
        <!-- /.sidebar -->
      </aside>
      
      <!-- general form elements disabled -->
             <div class="container" style="width: 900px"> 
              <div class="box box-warning">
                <div class="box-header with-border">
                  <h3 class="box-title">회원탈퇴</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <form role="form" name="memberOut" action="memberOut.do">
                    <!-- text input -->
                    <div class="form-group">
                      <label>이름</label>
                      <input type="text" name="name" class="form-control" value="${sname}">
                    </div>
                    <div class="form-group">
                      <label>비밀번호</label>
                      <input type="password" name="pwd" class="form-control" value="">
                    </div>
                    <input type="submit" class="btn btn-default pull-right" value="회원탈퇴">
      			</form>
      		</div>
      	</div>
	</div><!-- container -->
	         
  	<%@ include file="../footer.jsp" %>
    <%@ include file="../controllSide.jsp" %>

</body>
</html>