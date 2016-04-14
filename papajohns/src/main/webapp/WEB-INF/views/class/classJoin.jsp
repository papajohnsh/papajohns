<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="classAttend.do">
<table>
<c:forEach var="dto" items="${list }">
<tr>
<td rowspan="4">
<img alt="선생님 사진" src="1.jpg">
</td>

<td>
기관:${dto.institut }
</td>
</tr>
<tr>
<td>
과목:${dto.subject }
이름:${dto.name }
</td>
</tr>
<tr>
<td colspan="2">
<input type="hidden" name="reidx" value="${dto.idx }">
<textarea rows="5" cols="35" readonly="readonly"></textarea>
</td>
</tr>
<tr>
<td colspan="2" align="right"><input type="submit" value="참가"></td>
</tr>
</c:forEach>
</table>
</form>
</body>
</html>