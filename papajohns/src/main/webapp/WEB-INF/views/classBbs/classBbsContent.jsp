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
<%@ include file="../header.jsp" %>

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
            <div class="pull-left info">
               <c:if test="${empty sid}">
              	<script type="text/javascript">
              		window.alert('로그인 후 이용 가능한 서비스입니다.');
              		location.href="index.do";
              	</script>
              	</c:if>
              <c:if test="${!empty sid}">
              	<p>${sname}</p>
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
              <div class="container" style="width: 900px">
                <div class="box-header with-border" align="center">
                  <h3 class="box-title">본문내용보기</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table class="table table-bordered">
                    <tr>
                      <th>번호</th>
                      <td>${dto.idx}</td>
                      <th>작성자</th>
                      <td>${dto.writer}</td>
                    </tr>
                    <tr>
                      <th>제목</th>
                      <td>${dto.subject}</td>
                      <th>조회수</th>
                      <td><span class="badge bg-red">${dto.readnum}</span></td>
                    </tr>
                    <tr>
                      <td colspan="4">
                      <textarea rows="20" cols="180">${dto.content}</textarea>
                      </td>
                    </tr>
                  </table>
                  <div align="center">
                  <span><a href="classBbsReWriteForm.do?subject=${dto.subject}&ref=${dto.ref}&lev=${dto.lev}&sunbun=${dto.sunbun}" class="btn btn-sm btn-danger btn-flat pull-center">답변글쓰기</a></span>
                  <span><a href="classBbsList.do" class="btn btn-sm btn-warning btn-flat pull-center">목록으로</a></span>
                  </div>
                </div>
              </div><!-- /.box -->
              </c:otherwise>
           </c:choose>
             <%@ include file="../footer.jsp" %>
        <%@ include file="../controllSide.jsp" %>

</body>
</html>