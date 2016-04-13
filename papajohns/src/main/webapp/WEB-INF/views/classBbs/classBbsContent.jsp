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
        
        <!-- login button -->
       	
	       	<c:if test="${empty sid }">
				<span><input type="button" class="btn btn-primary pull-right" value="login" onclick="location.href='loginForm.do'"></span>
			</c:if>
			<c:if test="${!empty sid}">
				<span><input type="button" class="btn btn-default pull-right" value="logout" onclick="location.href='logout.do'"></span>	
			</c:if>

         <div class="pull-left info">
            <c:if test="${empty sid}">
           	<script type="text/javascript">
          		window.alert('로그인 후 이용 가능한 서비스입니다.');
           		location.href="index.do";
           	</script>
           	</c:if>

           <c:if test="${!empty sid}">
           	<p>${snickname}</p>
           	<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
           	</c:if>
         </div>
       </div>

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

        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            <strong>본문내용 보기</strong>
          </h1>
        </section>

        <!-- Main content -->
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h4 class="box-title"></h4>
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
                  <div align="center">
                  <span><a href="classBbsReWriteForm.do?idx=${dto.idx }&subject\" class="btn btn-sm btn-danger btn-flat pull-center"> 답변글쓰기</a></span>
                  <span><a href="classBbsList.do" class="btn btn-sm btn-warning btn-flat pull-center">목록으로</a></span>
                  </div>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
              </div>
              </div>
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
                  <c:set var="classReList" value="${reList}"></c:set>
                  <c:if test="${empty classReList}">
                  	등록된 댓글이 없습니다.
                  </c:if>
                  <c:forEach var="dto" items="${classReList}">
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
             </div>

            <%@ include file="../footer.jsp" %>
    		<%@ include file="../controllSide.jsp" %>
        
             

</body>
</html>
