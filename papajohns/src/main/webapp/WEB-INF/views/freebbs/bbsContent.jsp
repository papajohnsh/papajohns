<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
     <!-- /.sidebar -->
   </aside>
   
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper" style="background: #ffffff">
      
        <!-- Main content -->
        <c:set var="dto" value="${list}"></c:set>
		   <c:choose>
		   <c:when test="${empty dto}">
		
		    <tr>
		     <td colspan="5" align="center">
		      	잘못된 접근입니다.
		     </td>
		    </tr>
		   </c:when>
		   <c:otherwise>  
        
        <section class="content">
          <div class="row" style="padding: 2%;">
            <div class="col-md-2"></div>
            <div class="col-md-8">
              <div class="box box-primary" align="center">
                <div class="box-header with-border">
                <div class="jumbotron" style="background-image: url('img/9.png');">
			    <h1 style="color: white;">ClassRoom</h1>
                  <h3 class="box-title" style="color: white;"><span class="glyphicons glyphicons-table">본문내용보기</span></h3>
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body" >
                  <table id="example2" class="table table-bordered">
                  <tr>
                		<td style="text-align: center;"><span class="glyphicons glyphicons-list-numbered">번호</span></td>
                		<td style="text-align: center;">${dto.idx}</td>
                		<td style="text-align: center;"><span class="glyphicons glyphicons-user">작성자</span></td>
                		<td style="text-align: center;">${dto.writer}</td>
                	</tr>
                	<tr>
                		<td style="text-align: center;"><span class="glyphicons glyphicons-list">제목</span></td>
                		<td style="text-align: center;">${dto.subject}</td>
                		<td style="text-align: center;"><span class="glyphicons glyphicons-mouse-middle-click">조회수</span></td>
                		<td style="text-align: center;"><span class="badge bg-red">${dto.readnum}</span></td>
                	</tr>
                	<tr style="height: 163px;">
						<td colspan="4" style="text-align: center;">
						${dto.content }
						</td>
					</tr>
                  </table>

                       <c:set var="bbsReList" value="${reList}"></c:set>
          
                  <table class="table table-striped">
                 
                      <c:if test="${empty bbsReList}">
                       <tr>
                  <td>
                     등록된 댓글이 없습니다.
                     </td>
                  </tr>
                  </c:if>
                  
                  <c:forEach var="dto" items="${bbsReList}">
                 <tr>
                  <td>
                    <img src="resource/data/${sid }/profile.jpg"
						onerror="this.src='//ssl.gstatic.com/accounts/ui/avatar_2x.png'"
						class="img-circle" alt="user image" class="online" width="30px;" height="30px;">
						${dto.writer}/ ${dto.write_date}  <br>
						${dto.content}
						</td>

                  </c:forEach>
                  <c:set var="dto" value="${list}"></c:set>
                 <tr>
                  <td align="center">
                    <a href="bbsReWriteAdd.do?idx=${dto.idx }&subject=${dto.subject}" class="btn btn-sm btn-danger btn-flat pull-center"> 댓글작성</a>
		            <a href="bbsListForm.do" class="btn btn-sm btn-warning btn-flat pull-center">목록으로</a>
                  </td>
                  </tr>
                  </table>
                     </div><!-- /.box-body -->
              </div><!-- /. box -->
             <div class="col-md-2"></div>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </section><!-- /.content -->
        </c:otherwise>
     </c:choose>
     
     <!-- Chat box -->

      </div><!-- /.content-wrapper -->
      
    <%@ include file="../controllSide.jsp" %>
	 
</body>
</html>