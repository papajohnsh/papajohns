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
      <div class="content-wrapper" style="background-color: #ffffff">
      
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
              <div class="box box-primary">
                <div class="box-header with-border" align="center">
                 <div class="jumbotron" style="background-image: url('img/5.png');">
			    	<h1 style="color: white;">ClassRoom</h1>
                  <h3 class="box-title" style="color: white;"><span class="glyphicons glyphicons-table">본문내용보기</span></h3>
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body">
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
                		<td style="text-align: center;"><span class="badge bg-yellow">${dto.readnum}</span></td>
                	</tr>
                	<tr>
						<td align="center" colspan="4">
						${dto.content }
						</td>
					</tr>					
                  </table>
                  <div align="center">
		            <a href="faqList.do" class="btn btn-sm btn-warning btn-flat pull-center">목록으로</a>
        		</div>
                </div><!-- /.box-body -->
              </div><!-- /. box -->
               <div class="col-md-2"></div>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </section><!-- /.content -->
        </c:otherwise>
     </c:choose>
     
      </div><!-- /.content-wrapper -->
      <%@ include file="../footer.jsp" %>
    <%@ include file="../controllSide.jsp" %>
	 
</body>
</html>