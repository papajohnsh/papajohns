<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="js/httpRequest.js"></script>

</head>
<body class="hold-transition skin-blue sidebar-mini">

<%@ include file="../header.jsp" %>
<div class="container" style="width: 500px">
<h3>비밀번호 찾기</h3>
  <form role="form" name="pwdFindForm" action="pwdFind.do">
    <div class="form-group" align="center">
      <label for="id">아이디</label>
      <input type="text" class="form-control" name="id" style="width: 50%" placeholder="Enter id">
    </div>
    <div class="form-group" align="center">
      <label for="email">이메일</label>
      <input type="text" class="form-control" name="email" style="width: 50%" placeholder="Enter email">
    </div>
     <input type="submit" class="btn btn-default" value="pwd찾기">
  </form>
 </div> 
  
  		<%@ include file="../footer.jsp" %>
        <%@ include file="../controllSide.jsp" %>

</body>
</html>