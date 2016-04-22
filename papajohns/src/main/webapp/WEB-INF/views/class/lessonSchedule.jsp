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
			$('#mytable > tbody:last').append("<tr style='text-align: center;'><td style='width:14%'></td><td style='width:14%'></td><td style='width:14%'></td><td style='width:14%'></td><td style='width:14%'></td><td style='width:14%'></td><td style='width:14%'></td></tr>");
	  		for(var j=0;j<days.length;j++){
	
	 			if(days[j]=='1'){
					$("#mytable tr:eq("+(i+1)+") td:eq(0)").css("background","#efefef");
					$("#mytable tr:eq("+(i+1)+") td:eq(0)").append($("#subject"+i).val());
					$("#mytable tr:eq("+(i+1)+") td:eq(0)").append('<br>'+$("#start"+i).val());
					$("#mytable tr:eq("+(i+1)+") td:eq(0)").append(' ~ '+$("#start"+i).val());
				}else if(days[j]=='2'){
					$("#mytable tr:eq("+(i+1)+") td:eq(1)").css("background","#efefef");
					$("#mytable tr:eq("+(i+1)+") td:eq(1)").append($("#subject"+i).val());
					$("#mytable tr:eq("+(i+1)+") td:eq(1)").append('<br>'+$("#start"+i).val());
					$("#mytable tr:eq("+(i+1)+") td:eq(1)").append(' ~ '+$("#start"+i).val());
				}else if(days[j]=='3'){
					$("#mytable tr:eq("+(i+1)+") td:eq(2)").css("background","#efefef");
					$("#mytable tr:eq("+(i+1)+") td:eq(2)").append($("#subject"+i).val());
					$("#mytable tr:eq("+(i+1)+") td:eq(2)").append('<br>'+$("#start"+i).val());
					$("#mytable tr:eq("+(i+1)+") td:eq(2)").append(' ~ '+$("#start"+i).val());
				}else if(days[j]=='4'){
					$("#mytable tr:eq("+(i+1)+") td:eq(3)").css("background","#efefef");
					$("#mytable tr:eq("+(i+1)+") td:eq(3)").append($("#subject"+i).val());
					$("#mytable tr:eq("+(i+1)+") td:eq(3)").append('<br>'+$("#start"+i).val());
					$("#mytable tr:eq("+(i+1)+") td:eq(3)").append(' ~ '+$("#start"+i).val());
				}else if(days[j]=='5'){
					$("#mytable tr:eq("+(i+1)+") td:eq(4)").css("background","#efefef");
					$("#mytable tr:eq("+(i+1)+") td:eq(4)").append($("#subject"+i).val());
					$("#mytable tr:eq("+(i+1)+") td:eq(4)").append('<br>'+$("#start"+i).val());
					$("#mytable tr:eq("+(i+1)+") td:eq(4)").append(' ~ '+$("#start"+i).val());
				}else if(days[j]=='6'){
					$("#mytable tr:eq("+(i+1)+") td:eq(5)").css("background","#efefef");
					$("#mytable tr:eq("+(i+1)+") td:eq(5)").append($("#subject"+i).val());
					$("#mytable tr:eq("+(i+1)+") td:eq(5)").append('<br>'+$("#start"+i).val());
					$("#mytable tr:eq("+(i+1)+") td:eq(5)").append(' ~ '+$("#start"+i).val());
				}else if(days[j]=='0'){
					$("#mytable tr:eq("+(i+1)+") td:eq(6)").css("background","#efefef");
					$("#mytable tr:eq("+(i+1)+") td:eq(6)").append($("#subject"+i).val());
					$("#mytable tr:eq("+(i+1)+") td:eq(6)").append('<br>'+$("#start"+i).val());
					$("#mytable tr:eq("+(i+1)+") td:eq(6)").append(' ~ '+$("#start"+i).val());
				}  
			  
		}    
	 	}
	
}); 



</script>
<div class="modal-header">
    <!-- 닫기(x) 버튼 -->
  <button type="button" class="close" data-dismiss="modal">×</button>
  <!-- header title -->
  <h4 class="modal-title" style="text-align: center;">강의 스케줄</h4>  
</div>
<!-- body -->
<div class="modal-body">
<form action="quizTestSave1.do">
			


	<table id="mytable" align="center" style="width: 550px;height: 300px;" border='1' >
	<tr style="background-color:#3c8dbc; color: white; text-align: center; height:30px;" >
		<th style="text-align: center;">월</th>
		<th style="text-align: center;">화</th>
		<th style="text-align: center;">수</th>
		<th style="text-align: center;">목</th>
		<th style="text-align: center;">금</th>
		<th style="text-align: center;">토</th>
		<th style="text-align: center;">일</th>
	</tr>
 

 <c:if test="${empty list }">
 	<tr><td colspan="7" style="text-align: center;"> 등록된 수업이 존재하지 않습니다.</td></tr>
 </c:if>
<c:forEach var="dto" items="${list }" varStatus="status" >
	<input type="hidden" value="${status.index}">
	<input type="hidden" id="subject${status.index }" value="${dto.subject }">
	<input type="hidden" id="start${status.index }" value="${dto.start_time }">
	<input type="hidden" id="end${status.index }" value="${dto.end_time }">
	<input type="hidden" id="day${status.index }" value="${dto.day }">
	<br>
</c:forEach>
 	</table>
<input id="length" type="hidden" value="${fn:length(list) }">
</form>
</div>
