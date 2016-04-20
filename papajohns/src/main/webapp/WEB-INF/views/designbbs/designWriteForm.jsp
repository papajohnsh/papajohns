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
<%@include file="../header.jsp" %>
<!-- Left side column. contains the logo and sidebar -->
    	<aside class="main-sidebar">

	<%@ include file="../side.jsp" %>
          
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">Menu</li>
            <li>
              <a href="faqList.do">
                <i class="fa fa-circle-o text-red"></i> <span>FAQ</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
            <li>
              <a href="qnaList.do">
                <i class="fa fa-circle-o text-aqua"></i><span>Q & A</span></a>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
            </li>
            <li>
              <a href="designList.do">
                <i class="fa fa-circle-o text-yellow"></i><span>디자인게시판</span></a>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
            </li>
          </ul>
           <ul class="sidebar-menu"></ul>
        </section>
        <!-- /.sidebar -->
      </aside>


 <!-- Content Wrapper. Contains page content -->
     
       <!-- Content Wrapper. Contains page content -->
   		<div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <h3 align="center">디자인 공유 게시판 글쓰기</h3>
        <section class="content-header">

          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Forms</a></li>
            <li class="active">Editors</li>
          </ol>
        </section>

        <!-- Main content -->
       
  			<div class="box box-info">
                 <form name="designWrite" action="designWrite.do" method="post">
                 <table class="table table-bordered">
                 
                  <tr>
					<th>작성자</th>
        			<td><input type="text" name="writer" value="${snickname}"></td>
        			<th>조회수</th>
        			<td><span class="badge bg-red">0</span></td>
                  </tr>
        			<tr>
        				<th>제목</th>
        				<td><input type="text" name="subject" placeholder="subject"></td>
        				<th>Img</th>
        				<td><input type="text" name="path"></td>
        			</tr>
 				</table>
                <div class="box-body pad">
                  
                    <textarea id="content" name="content" rows="10" cols="80"></textarea>
                  <br>
                  <!-- writeAdd button -->
                  <div>
                	<input type="submit" class="btn btn-primary pull-right" value="글올리기">
				  </div>
				  <!-- file -->
                	<div class="form-group" align="center">
          				<span><input type="file" id="exampleInputFile"></span>
      				</div>
             	</div>
             	</form>
           </div>

      <!-- TABLE: LATEST ORDERS -->
 			<div class="box-header with-border"></div><!-- /.box-header -->
                <div class="box-body">
                  <div class="table-responsive">
                    <table class="table no-margin">
                      <thead>
                        <tr>
                          <th>번호</th>
                          <th>제목</th>
                          <th>작성자</th>
                          <th>조회수</th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:set var="dto" value="${list}"></c:set>
				      	<c:if test="${empty dto}">
				      		<tr>
				      			<td colspan="5" align="center">
				      				등록된 게시글이 없습니다.
				      			</td>
				      		</tr>
				      	</c:if>
                      <c:forEach var="dto" items="${list}">
                        <tr>
                          <td>${dto.idx}</td>
                          <td>${dto.subject}</td>
                          <td>${dto.writer}</td>
                          <td><span class="badge bg-red">${dto.readnum}</span></td>
                        </tr>
                      </c:forEach>
                      </tbody>
                    </table>
                  </div><!-- /.table-responsive -->

                <div class="box-footer clearfix" align="center">
    				<ul class="pagination pagination-sm no-margin pull-center">
                    <li><a href="#">&laquo;</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">&raquo;</a></li>
                  </ul>
                </div><!-- /.box-footer -->
              </div><!-- /.box -->
            <!-- search form -->
       </div><!-- container -->  
       
      <%@include file="../footer.jsp" %>
    <%@ include file="../controllSide.jsp" %>  
</body>
</html>