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
		<div>
	   <p> <font size="2em" style="margin-left: 50px;"><b>학생이름</font> <font size="2em" style="margin-left: 110px;">정답현황</font>  <font size="2em" style="margin-left: 110px;">맞은갯수</font>  <font size="2em" style="margin-left: 40px;">정답률</font></p>	   
		</div>
			<c:forEach var="user" items="${result }">
				<c:forEach var="use" items="${user }">
				
				<c:if test="${use.paper_idx eq list.idx}">
				<div class="panel-body" data-acc-content="${use.paper_idx}">
					   
					<p>  <font size="2em" style="margin-left: 50px;"><b>${use.member_id }</b></font>
					<font size="2em" style="margin-left: 140px;"><b>${use.ox }</b></font>
						<font size="2em" style="margin-left: 160px;"><b>	${use.answer_num }</b></font>
				</p>
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