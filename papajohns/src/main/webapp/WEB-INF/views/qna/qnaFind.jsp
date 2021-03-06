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
             <a href="faqList.do">
                <i class="fa fa-circle-o text-yellow"></i><span>FAQ</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
            <li>
              <a href="qnaList.do">
               <i class="fa fa-circle-o text-aqua"></i><span>Q&A</span>
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
          <div class="row" style="padding: 2%;">
            <div class="col-xs-2"></div>
         	<div class="col-xs-8">
              <div class="box">
                <div class="box-header" align="center">
                 <div class="jumbotron" style="background-image: url('img/7.jpg');">
			    <h1 style="color: white;">ClassRoom</h1>
                  <h3 class="box-title" style="color: white;"><span class="glyphicons glyphicons-search">검색 결과</span></h3>
                  </div>
                  <div class="box-tools">
                    <div class="input-group" style="width: 150px;">      
                    </div>
                  </div>

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