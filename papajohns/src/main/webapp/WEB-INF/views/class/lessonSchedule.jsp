<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script>
 $(document).ready(function(){
	var length=$('#length').val();
 	for(var i=0; i<length;i++){
		 var days=new Array();
		days=$('#day'+i).val().split(',');
		$('#mytable > tbody:last').append("<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>");
  		for(var j=0;j<days.length;j++){
 			if(days[j]=='1'){
				$("#mytable tr:eq("+int(i+2)+") td:eq("+int(j+1)+")").css("background","#efefef");
			}else if(days[j]=='2'){

			}else if(days[j]=='3'){

			}else if(days[j]=='4'){

			}else if(days[j]=='5'){

			}else if(days[j]=='6'){

			}else if(days[j]=='0'){

			}  
		  
	}    
 	}
}); 



</script>
<div class="modal-header">
    <!-- 닫기(x) 버튼 -->
  <button type="button" class="close" data-dismiss="modal">×</button>
  <!-- header title -->
  
</div>
<!-- body -->
<div class="modal-body">
<form action="quizTestSave1.do">
		
		<h2 style="background-color:#3c8dbc; color: white; text-align: center; height:40px;">강의 스케쥴</h2>
			
			   <div class="example2">

	<table id="mytable" style="width: 550px;height: 300px;" border="1">
	<tr style="background-color:#3c8dbc; color: white; text-align: center; height:30px;" >
		<th style="text-align: center;">월</th>
		<th style="text-align: center;">화</th>
		<th style="text-align: center;">수</th>
		<th style="text-align: center;">목</th>
		<th style="text-align: center;">금</th>
		<th style="text-align: center;">토</th>
		<th style="text-align: center;">일</th>
	</tr>
  	</table>
   </div>
<c:forEach var="dto" items="${list }" varStatus="status" >
	<input type="text" value="${status.index}">
	<input type="text" id="subject${status.index }" value="${dto.subject }">
	<input type="text" id="start${status.index }" value="${dto.start_time }">
	<input type="text" id="end${status.index }" value="${dto.end_time }">
	<input type="text" id="day${status.index }" value="${dto.day }">
	<br>
</c:forEach>
<input id="length" type="text" value="${fn:length(list) }">
</form>
</div>
