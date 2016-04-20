<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="js/src/jquery.accordion.js"></script>
<script>
$(function() {
    $('.example2').accordion();


 });
</script>
<c:if test="${empty result }">
         등록된 문제가없습니다.
      </c:if>
<div class="example2">
		<c:forEach var="list" items="${subject }">
		<div class="panel panel-default">
		<div class="panel-heading" data-acc-link="${list.idx }">${list.subject } </div>
			<c:forEach var="user" items="${result }">
				<c:forEach var="use" items="${user }">
				
				<c:if test="${use.paper_idx eq list.idx}">
				<div class="panel-body" data-acc-content="${use.paper_idx}">
					
					${use.member_id }&nbsp;&nbsp;${use.ox }&nbsp;&nbsp;${use.answer_num }
				</div>
				</c:if>
				
				</c:forEach>
			
			</c:forEach>
		</div>
		</c:forEach>
</div>