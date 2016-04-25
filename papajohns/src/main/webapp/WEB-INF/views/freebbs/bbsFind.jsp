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
	          <a href="bbsListForm.do">
	             <i class="fa fa-circle-o text-red"></i><span>자유게시판</span>
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
                      		<c:when test="${empty list3}">
                      			<tr>
                      				<td colspan="4" align="center">
                      					해당 게시글이 없습니다.
                      				</td>
                      			</tr>
                      		</c:when>
                        <c:otherwise>
                        	<c:forEach var="dto" items="${list3}">
                        	<tr>
                        		<td>${dto.idx}</td>
                        		<td>${dto.subject}</td>
                        		<td>${dto.writer}</td>
                        		<td><span class="badge bg-red">${dto.readnum}</span></td>
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