<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<%@include file="../header.jsp" %>

<!-- Left side column. contains the logo and sidebar -->
     	<aside class="main-sidebar">

	<%@ include file="../side.jsp" %>

          <!-- sidebar menu: : style can be found in sidebar.less -->

          <ul class="sidebar-menu">
            <li class="header">Menu</li>
            <li>
              <a href="classRoomForm.do">
                <i class="fa fa-home"></i> <span>내강의실</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
            <li>
              <a href="classForm.do">
                <i class="fa fa-files-o"></i><span>내수업</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
               </a>
            </li>
            <li>
              <a href="makeClass.do">
                <i class="fa fa-book"></i><span>수업 만들기</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
            <li>
              <a href="classDesign.do?idx=${sidx }">
                <i class="fa fa-edit"></i><span>강의실 디자인</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
             <li>
              <a href="classBbsList.do">
                <i class="fa fa-edit"></i><span>수업게시판</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
          </ul>
           <ul class="sidebar-menu"></ul>
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper" style="background: #ffffff">

        <!-- Content Header (Page header) -->
          <div class="row" style="padding: 5%;">
            <div class="col-xs-2"></div>
         	<div class="col-xs-8">
              <div class="box">
                <div class="box-header" align="center">

                  <h3 class="box-title"><span class="glyphicons glyphicons-search">검색 결과</span></h3>

                </div><!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                  <table class="table table-hover">
                   <thead>
                        <tr>
                          <th><span class="glyphicons glyphicons-list-numbered">번호</span></th>
                          <th><span class="glyphicons glyphicons-list">제목</span></th>
                          <th><span class="glyphicons glyphicons-user">작성자</span></th>
                          <th><span class="glyphicons glyphicons-mouse-middle-click">조회수</span></th>
                        </tr>
                      </thead>

                    <tbody align="center">
                      	<c:choose>
                      		<c:when test="${empty list}">
                      			<tr>
                      				<td colspan="4" align="center">
                      					해당 게시글이 없습니다.
                      				</td>
                      			</tr>
                      		</c:when>
                        <c:otherwise>
                        	<c:forEach var="dto" items="${list}">
                        	<tr>
                        		<td>${dto.idx}</td>
                        		<td>${dto.subject}</td>
                        		<td>${dto.writer}</td>
                        		<td><span class="badge bg-blue">${dto.readnum}</span></td>
                        	</tr>
                        	</c:forEach>
                        </c:otherwise>
                        </c:choose>
                      </tbody>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
              <div class="col-xs-2"></div>
            </div>
		</div>
      </div><!-- /.content-wrapper -->
   
       <%@include file="../footer.jsp" %>
       <%@ include file="../controllSide.jsp" %>  
</body>
</html>