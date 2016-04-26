<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="js/src/jquery.accordion.js"></script>
<script>
$(function() {
    $('.example2').accordion();
 });
</script>
<div class="modal-header">
    <!-- 닫기(x) 버튼 -->
  <button type="button" class="close" data-dismiss="modal">×</button>
  <!-- header title -->
  <h4 class="modal-title" style="text-align: center;">쪽지 시험 결과</h4>
</div>
<!-- body -->
<div class="modal-body">
<c:if test="${empty result }">
         등록된 시험지가 없습니다.
      </c:if>
<div class="example2">
<form name="fm">
	
		
		<c:forEach var="list" items="${subject }">
		
		
		<div class="panel panel-primary">
		<div class="panel-heading" data-acc-link="${list.idx }">${list.subject } </div>

		
			<c:forEach var="user" items="${result }">
			
				<c:forEach var="use" items="${user }" varStatus="status">
				
				<c:if test="${use.paper_idx eq list.idx}">
				
				<div class="panel-body" data-acc-content="${use.paper_idx}">
				<table style="width: 100%; text-align: center;">
					   <c:if test="${status.index==0 }">
						<tr>
							<th style="text-align: center;width: 25%">이름</th>
							<th style="text-align: center;width: 25%">정답현황</th>
							<th style="text-align: center;width: 25%">맞은갯수</th>
							<th style="text-align: center;width: 25%">정답률</th>
							
						</tr>
					   </c:if>
					   <tr>
							<td style="width: 25%">${use.name }</td>
							<td style="width: 25%">${use.ox }</td>
							<td style="width: 25%">${use.answer_num }</td>
							<td style="width: 25%">${use.percent }%</td>

						</tr>
				</table>
				</div>
				
				</c:if>
			
				</c:forEach>
			
			</c:forEach>
			
		</div>
		
		
		</c:forEach>
		
		<br>	<br>	<br>	<br>	<br>	<br>	<br>	<br>	<br>	<br>	<br>
</form>
</div>
</div>