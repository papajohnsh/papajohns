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
<%@ include file="header.jsp" %>
   
    <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
       <section class="sidebar">
          <!-- Sidebar user panel -->
        <div class="user-panel">
          <c:if test="${empty sid}">
          <div class="pull-left image">
         <br>
          	<img id="profile-img" class="img-circle" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png"   style="height: 80px; max-width: 80px; width: 80px;">
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
            <div class="pull-left info" style="margin-left: 40px; margin-top:30px;">
              <c:if test="${empty sid}">
              <p><font size="2">로그인 해주세요</font></p>
              <a href="#"><i class="fa fa-circle text-danger"></i><font size="2"> Offline </font></a>
              </c:if>
            
            </div>
          </div>
        </section>
        <!-- /.sidebar -->
      </aside>

   <!-- Content Wrapper. Contains page content -->
   

        <!-- Main content -->
        <section class="content">
        
                
              </div><!-- /.box -->
          <div class="row">
            <div class="col-md-12">
              <div class="box">
                <div class="box-header with-border" align="center">
                  <h3 class="box-title">내강의실</h3>
                  <br><br><br>
                </div><!-- /.box-header -->
                   <div class="content-wrapper">
      <!-- Small boxes (Stat box) -->
          <div class="row">
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-aqua">
              
                <div class="inner">
                  <h3>내수업</h3>
                  <p>ㅋㅋㅋ</p>
                </div>
                <div class="icon">
                  <i class="ion ion-bag"></i>
                </div>
                <a href="#" class="small-box-footer">${sid } <i class="fa fa-arrow-circle-right"></i></a>
              </div>
                <div class="small-box bg-aqua">
              
                <div class="inner">
                  <h3>a</h3>
                  <p>ff</p>
                </div>
                <div class="icon">
                  <i class="ion ion-bag"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-green">
                <div class="inner">
                  <h3>53<sup style="font-size: 20px">%</sup></h3>
                  <p>Bounce Rate</p>
                </div>
                <div class="icon">
                  <i class="ion ion-stats-bars"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-yellow">
                <div class="inner">
                  <h3>44</h3>
                  <p>User Registrations</p>
                </div>
                <div class="icon">
                  <i class="ion ion-person-add"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3>65</h3>
                  <p>Unique Visitors</p>
                </div>
                <div class="icon">
                  <i class="ion ion-pie-graph"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
          </div><!-- /.row -->
          <div class="box-header with-border" align="center">
                  <h3 class="box-title">강의실 찾기</h3>
                
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
    <%@ include file="footer.jsp" %>
    <%@ include file="controllSide.jsp" %>

 
  </body>
</html>
