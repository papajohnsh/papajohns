<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <i class="fa fa-circle-o text-aqua"></i><span>Q & A</span>
             <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
           </a>
         </li>
         <li>
           <a href="designList.do">
            <i class="fa fa-circle-o text-yellow"></i><span>디자인게시판</span>
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
          <div class="row">
            
            <div class="col-md-12">
              <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">본문내용보기</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example2" class="table table-bordered">
                  <tr>
                		<td>번호</td>
                		<td>${dto.idx}</td>
                		<td>작성자</td>
                		<td>${dto.writer}</td>
                	</tr>
                	<tr>
                		<td>제목</td>
                		<td>${dto.subject}</td>
                		<td>조회수</td>
                		<td><span class="badge bg-red">${dto.readnum}</span></td>
                	</tr>
                	<tr>
						<td align="center" colspan="4">
						${dto.content }
						</td>
					</tr>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /. box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
        </section><!-- /.content -->
        </c:otherwise>
     </c:choose>
     
     <!-- Chat box -->
              <div class="box box-success">
                <div class="box-header">
                  <i class="fa fa-comments-o"></i>
                  <h3 class="box-title">Chat</h3>
                </div>
                <div class="box-body chat" id="chat-box">
                  <!-- chat item -->
                  <c:set var="designReList" value="${reList}"></c:set>
                  <c:if test="${empty designReList}">
                  	등록된 댓글이 없습니다.
                  </c:if>
                  <c:forEach var="dto" items="${designReList}">
                  <div class="item">
                    <img src="img/송중기.jpg" alt="user image" class="online">
                    <p class="message">
                      <a href="#" class="name">
                        <small class="text-muted pull-right"><i class="fa fa-clock-o"></i>${dto.write_date}</small>
                        	${dto.writer}
                      </a>
                      		${dto.content}
                    </p>
                    
                  </div><!-- /.item -->
                  </c:forEach>
                  <!-- chat item -->
                </div><!-- /.chat -->
              </div><!-- /.box (chat box) -->
     
      </div><!-- /.content-wrapper -->
      <%@ include file="../footer.jsp" %>
    <%@ include file="../controllSide.jsp" %>
	 
</body>
</html>