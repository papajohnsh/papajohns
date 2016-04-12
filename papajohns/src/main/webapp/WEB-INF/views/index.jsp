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
          	<img id="profile-img" class="img-circle" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
          </div>
          </c:if>
          <c:if test="${!empty sid}">
            <div class="pull-left image">
              <img src="img/강동원.jpg" class="img-circle" style="width: 40px" alt="User Image">
            </div>
           </c:if>
            <div class="pull-left info">
              <c:if test="${empty sid}">
              <p>로그인 해주세요</p>
              <a href="#"><i class="fa fa-circle text-danger"></i> Offline</a>
              </c:if>
              <c:if test="${!empty sid}">
              <p>${snickname}</p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
              </c:if>
            </div>
          </div>
        </section>
        <!-- /.sidebar -->
      </aside>
		
		  <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">

		<!-- Small boxes (Stat box) -->
          <div class="row">
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3>150</h3>
                  <p>New Orders</p>
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

        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-md-12">
              <div class="box">
                <div class="box-header with-border" align="center">
                  <h3 class="box-title">공지사항</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table class="table table-bordered">
                     <thead>
                        <tr>
                          <th>번호</th>
                          <th>제목</th>
                          <th>작성자</th>
                          <th>조회수</th>
                        </tr>
                      </thead>
                    <tbody>
                        <tr>
                          <td>1.</td>
                          <td><a href="noticeShow.do">쪽지시험 관련 공지</a></td>
                          <td>송중기</td>
                          <td><span class="badge bg-red">50</span></td>
                        </tr>
                        <tr>
                          <td>2.</td>
                          <td><a href="#">수학 과제 제출 요망</a></td>
                          <td>송혜교</td>
                          <td><span class="badge bg-yellow">80</span></td>
                        </tr>
                        <tr>
                          <td>3.</td>
                          <td><a href="#">수업시간표 변경 관련 사항</a></td>
                          <td>이진욱</td>
                          <td><span class="badge bg-blue">20</span></td>
                        </tr>
                        <tr>
                      </tbody>
                  </table>
                </div><!-- /.box-body -->
                <div class="box-footer clearfix">
                  <ul class="pagination pagination-sm no-margin pull-right">
                    <li><a href="#">&laquo;</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">&raquo;</a></li>
                  </ul>
                </div>
                </div>
               </div> 
              </div><!-- /.box -->
 
				<div class="row">
            <div class="col-md-12">
              <div class="box">
                <div class="box-header with-border" align="center">
                  <h3 class="box-title">내강의실</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table class="table table-bordered">
                     <thead>
                        <tr>
                          <th>번호</th>
                          <th>강의명</th>
                          <th>강의시작일</th>
                          <th>강의종료일</th>
                        </tr>
                      </thead>
                     <tbody>
                        <tr>  
                          <td>1.</td>
                          <td><a href="classShow.do">Java basic</a></td>
                          <td>2014.05.05</td>
                          <td>2014.010.06</td>
                        </tr>
                        <tr>
                          <td>2.</td>
                          <td><a href="#">Java 열혈 강의</a></td>
                          <td>2015.01.10</td>
                          <td>2015.07.12</td>
                        </tr>
                        <tr>
                          <td>3.</td>
                          <td><a href="#">Hello Java</a></td>
                       	  <td>2016.03.06</td>
                       	  <td>2016.09.07</td>
                        </tr>
                        <tr>
                      </tbody>
                  </table>
                </div><!-- /.box-body -->
                <div class="box-footer clearfix">
                  <ul class="pagination pagination-sm no-margin pull-right">
                    <li><a href="#">&laquo;</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">&raquo;</a></li>
                  </ul>
                </div>
              </div><!-- /.box -->
			</div>
			</div>
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
 	<%@ include file="footer.jsp" %>
    <%@ include file="controllSide.jsp" %>

 
  </body>
</html>
