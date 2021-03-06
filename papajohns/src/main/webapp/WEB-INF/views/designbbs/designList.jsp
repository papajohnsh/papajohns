<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

     <!-- Content Header (Page header) -->
       <div class="row">
         <div class="col-xs-12">
           <div class="box">
             <div class="box-header" align="center">
               <h3 class="box-title">디자인 공유 게시판</h3>
               <div class="box-tools">
                 <div class="input-group" style="width: 150px;">
                 <form name="search" action="designFind.do" method="post">
                 <input type="text" name="fvalue" required="required" class="form-control input-sm pull-right" placeholder="Search">
                 	<select name="fkey">
                 		<option value="subject">제목</option>
                 		<option value="writer">작성자</option>     		
                 	</select>
      					<input type="submit" class="btn btn-sm btn-default" value="검색">
					</form>
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
                   	<c:set var="designList" value="${list}"></c:set>
                   	<c:if test="${empty designList}">
                   		<tr>
                   			<td colspan="4" align="center">
                   			 	등록된 게시글이 없습니다.
                   			</td>
                   		</tr>
                   	</c:if>

                   	<c:forEach var="dto" items="${designList}">
                     <tr>
                       <td>${dto.idx}</td>
                       <td><a href="designContent.do?idx=${dto.idx}">${dto.subject}</a></td>
                       <td>${dto.writer}</td>
                       <td><span class="badge bg-red">${dto.readnum}</span></td>
                     </tr>
                     </c:forEach>
                   </tbody>
               </table>

               <div class="box-footer clearfix" align="center">

               <a href="designWriteForm.do" class="btn btn-sm btn-info btn-flat pull-right">글쓰기</a>

           <ul class="pagination pagination-sm no-margin pull-center">
                 <li><a href="#">&laquo;</a></li>
                 <li><a href="#">1</a></li>
                 <li><a href="#">2</a></li>
                 <li><a href="#">3</a></li>
                 <li><a href="#">&raquo;</a></li>
               </ul>
             </div><!-- /.box-body -->
           </div><!-- /.box -->
         </div>
       </div>
     </section><!-- /.content -->

</div>
     </div><!-- /.content-wrapper -->

    <%@include file="../footer.jsp" %>
    <%@ include file="../controllSide.jsp" %>  

</body>
</html>