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
                <i class="fa fa-circle-o text-red"></i><span>FAQ</span>
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
      <div class="content-wrapper">

        <!-- Content Header (Page header) -->
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header" align="center">
                  <h3 class="box-title">검색 결과</h3>
                  <div class="box-tools">
                    <div class="input-group" style="width: 150px;">      
                    </div>
                  </div>

                </div><!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                  <table class="table table-hover">
                   <thead>
                        <tr>
                          <th>번호</th>
                          <th>제목</th>
                          <th>작성자</th>
                          <th>조회수</th>
                        </tr>
                      </thead>

                    <tbody>
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
                        		<td><span class="badge bg-red">${dto.readnum}</span></td>
                        	</tr>
                        	</c:forEach>
                        </c:otherwise>
                        </c:choose>
                      </tbody>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>
		</div>
      </div><!-- /.content-wrapper -->
   
       <%@include file="../footer.jsp" %>
       <%@ include file="../controllSide.jsp" %>  
</body>
</html>