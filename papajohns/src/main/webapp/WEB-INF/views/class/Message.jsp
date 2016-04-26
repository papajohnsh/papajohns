<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="js/src/jquery.accordion.js"></script>
<script>
$(function() {
    $('.example2').accordion();


 });
 $(':div[name=header]').on('click',function(){
	 window.alert('눌렀다 하하');
 });
</script>

<div class="modal-header">
    <!-- 닫기(x) 버튼 -->
  <button type="button" class="close" data-dismiss="modal">×</button>
  <!-- header title -->
  <h4 class="modal-title" style="text-align: center;">메세지 확인하기</h4>
</div>
<!-- body -->
<div class="modal-body">
   <div class="example2">

	<table style="width: 100%;" border="1">
	<tr style="background-color:#3c8dbc; color: white; text-align: center; height:30px;" >
		<th style="text-align: center;">작성자</th>
		<th style="text-align: center;">내용</th>
		<th style="text-align: center;">보낸시간</th>

	</tr>
	
	<c:if test="${empty list }">
        <tr><td colspan="3" style="text-align: center;"> 받은 쪽지가 없습니다.</td></tr>
      </c:if>
      
      <c:forEach var="dto" items="${list }">
		<tr>
			<td style="text-align: center;">${dto.writer }</td>
           <td style="width:300px; "> 
           <div class="panel panel-default" style="width:400px;">
               
               <div class="panel-heading" id="${dto.idx }" name="header" data-acc-link="${dto.idx }" align="center">${dto.content }</div>
               
               <div class="panel-body" data-acc-content="${dto.idx }">
               ${dto.content }
			   </div>

   			</div>
   			</td>
   			<td style="text-align: center;">${dto.write_date}</td>
		</tr>
  	 </c:forEach>
  	</table>
   </div>
   </div>
