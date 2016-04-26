<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="modal-header">
    <!-- 닫기(x) 버튼 -->
  <button type="button" class="close" data-dismiss="modal">×</button>
  <!-- header title -->
  <h4 class="modal-title" style="text-align: center;">학생 리스트</h4>
</div>
<!-- body -->
<div class="modal-body">
<table style="width: 500px;height: 300px; margin:0;auto;" >
	<tr style="background-color:#3c8dbc; color: white; text-align: center;">
		<th>아이디</th>
		<th>이름</th>
		<th>전화번호</th>
		<th>이메일</th>
	</tr>
   <c:if test="${empty result }">
		등록된 학생이 없습니다.
	</c:if>
						
	<c:forEach var="dto" items="${result }">
		<tr style="background-color:">
			<td>${dto.id }</td>
			<td>${dto.name }</td>
			<td>${dto.phonenumber }</td>
			<td>${dto.email }</td>
		</tr>
	</c:forEach>
</table>
</div>
<!-- Footer -->
<div class="modal-footer">
  <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
</div>
