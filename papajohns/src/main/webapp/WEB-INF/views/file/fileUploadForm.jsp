<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form name="fileupload1" action="fileupload1.do" method="post" enctype="multipart/form-data">

파일 <input type="file" name="upload"><br>
<input type="submit" value="보내기">
</form>

<h2>다운로드 파일 목록보기</h2>
   <c:set var="filelist" value="${files }" />
   <c:if test="${empty filelist }">
      <h3 style="color: blue;">등록된 파일이 없습니다.</h3>
   </c:if>
   <ul>
      <c:forEach var="file" items="${filelist }">
         <c:url var="downUrl" value="down.do">
            <c:param name="filename">${file.name}</c:param>
         </c:url>
         <li><a href="${downUrl}"> ${file.name }</a></li>
      </c:forEach>
   </ul>
   


</body>
</html> 