<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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
              <p>${snickname}</p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
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
          </ul>
           <ul class="sidebar-menu"></ul>
        </section>
        <!-- /.sidebar -->
      </aside>   
      <!-- general form elements disabled -->
    
             <<!-- Content Wrapper. Contains page content -->
   			<div class="content-wrapper">
              <div class="box box-warning">
                <div class="box-header with-border">
                  <h3 class="box-title">내정보수정</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <form role="form" name="infoMod" action="myInfo.do">
                    <!-- text input -->
            
                    <div class="form-group">
                      <label for="name">이름</label>
                      <input type="text" class="form-control" name="name" value="${sname}" readonly="readonly">
                    </div>
                    <div class="form-group">
                      <label for="nickname">닉네임</label>
                      <input type="text" class="form-control" name="nickname" value="${snickname}">
                    </div>
                    <div class="form-group">
                      <label for="pwd">비밀번호</label>
                      <input type="password" name="pwd" class="form-control" value="${spwd}">
                    </div>
                    <div class="form-group">
                      <label for="email">이메일</label>
                      <input type="text" name="email" class="form-control" value="${semail}">
                    </div>
                    <div class="form-group">
                      <label for="phonenumber">핸드폰번호</label>
                      <input type="text" name="phonenumber" class="form-control" value="${sphone}">
                    </div>
                   
                    <!-- checkbox -->
                     <div class="form-group">
                     <label>정보수신</label>
                      <div class="checkbox">
                       <span>
                        <label>
                          <input type="checkbox">
                           mailing
                        </label>
                        </span>
                        <span>
                        <label>
                          <input type="checkbox">
                           SNS
                        </label>
                        </span>
                      </div>
                    </div>
                   <div align="center">
                   <input type="submit" class="btn btn-success pull-center" value="수정하기">
                  </div>
                  <div>
                  	<input type="button" class="btn btn-default pull-right" value="탈퇴하기" onclick="location.href='memberOutForm.do'">
                  </div>
                
         </form>
        </div>
       </div>
 </div><!-- container -->
      <%--  <%@ include file="javascript/example/a.jsp" %> --%>
   

</body>
</html>