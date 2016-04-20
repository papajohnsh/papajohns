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
            <img src="img/${sid }/profile.jpg" onerror="this.src='//ssl.gstatic.com/accounts/ui/avatar_2x.png'" class="img-circle" id="userImage">
            </div>
           </c:if>
            <div class="pull-left info">
              <c:if test="${empty sid}">
              <p>로그인 해주세요</p>
              <a href="#"><i class="fa fa-circle text-danger"></i> Offline</a>
              </c:if>
              <c:if test="${!empty sid}">
              <p>${snickname}</p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
              </c:if>
            </div>
          </div>
        </section>
        <!-- /.sidebar -->
      </aside>

      <div class="content-wrapper">
      <form name="nickfm" action="nickUpdate.do">
      		<h3>닉네임 설정</h3>
		사용하고자 하는 닉네임을 입력해주세요.<br>
		<input type="text" name="nickname">
		<input type="hidden" name="id" value="${sid}">
	<input type="submit" value="확인">
	</form>
	</div> 
 	<%@ include file="../footer.jsp" %>
    <%@ include file="../controllSide.jsp" %>


 
  </body>
</html>
