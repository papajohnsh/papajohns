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
<h3>아이디 찾기</h3>
  <form role="form" name="idFindForm" action="idFind.do">
    <div class="form-group" align="center">
      <label for="id">이름</label>
      <input type="text" class="form-control" name="name" style="width: 30%" placeholder="Enter name">
    </div>
    <div class="form-group" align="center">
      <label for="email">이메일</label>
      <input type="text" class="form-control" name="email" style="width: 30%" placeholder="Enter email">
    </div>
     <input type="submit" class="btn btn-default" value="id찾기">
  </form>
 </div> 
  
		 <%@ include file="../footer.jsp" %>
        <%@ include file="../controllSide.jsp" %>


</body>
</html>