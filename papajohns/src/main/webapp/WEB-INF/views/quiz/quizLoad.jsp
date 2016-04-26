<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<script>
function gogo(){
	 var answer=null;
	 for(var i=1;i<=$('#length').val();i++){
	 	if($(':radio[name='+i+']:checked').val()==undefined){
	 		window.alert("선택하지 않은 항목이 있습니다");
	 		return;
	 	}else{
	 		
	 		answer=answer+$(':radio[name='+i+']:checked').val()+"::";
	 		
	 	}
	 }
	 $('#quiz_answer').val(answer);
	 fm.submit(); 
}

	$(':input[name=page]').on('click',function(){

		var idx=$(this).attr('id');
		var id=$('#id').val();
			
			params='idx='+idx+'&id='+id;
            sendRequest('quizTestList.do', params, showResult, 'GET'); 

   function showResult() {
      if (XHR.readyState == 4) {
         if (XHR.status == 200) {
			if(XHR.responseText==0){
        		window.alert('이미 시험이 종료되었습니다.');
         }else if(XHR.responseText==1){
        	 window.alert('아직 시험시간이 이릅니다.');
         }else if(XHR.responseText==2){
        	 window.alert('이미 참여하였습니다.');
         }else{
            document.getElementById('content').innerHTML=XHR.responseText;
            realtime();
         }
         }
      }
   } 
   function realtime(){
       var endtime=$('#endtime').val();
       var params='endtime='+endtime;
       sendRequest('quizTime.do', params, time, 'POST');
   }
   function time(){
	      if (XHR.readyState == 4) {
	          if (XHR.status == 200) {
	         	
	             var text=XHR.responseText;
	             $('#helftime').val(text);
	             setTimeout(realtime(), 1000);

	          }
	       }
   }
	}); 

</script>
</head>
<body>
<div class="modal-header" >

    <!-- 닫기(x) 버튼 -->
  <button type="button" class="close" data-dismiss="modal" >×</button>
  <!-- header title -->
  <h4 class="modal-title" style="background-color:#3c8dbc; color: white; text-align: center;">문제 리스트</h4>
</div>
<!-- body -->
<div class="modal-body">
<div align="center">
	<table style="width: 500px;height: 300px; margin:0;auto;" >
		<tr>
			<th>시험명</th>
			<th>시험날짜</th>
			<th></th>
		</tr>
		<tr><td>
	   <c:if test="${empty result }">
			등록된 시험이 없습니다.
		</c:if>
		</td></tr>
							
		<c:forEach var="dto" items="${result }">
			<tr style="background-color:">
				<td>${dto.subject}</td>
				<td>${dto.start_date }&nbsp;&nbsp;${dto.start_time }</td>
				<td style="vertical-align:middle; text-align: center;">
	 			<%-- <input style="width:40px;height: 40px" name="radio" value="${dto.idx }" id="${dto.idx }" type="radio" > --%>
	   			</td>
	   			<td>

	   				<input type="button" value="시험보기" id="${dto.idx }" class="btn btn-success pull-right" name="page">
	   				<input type="hidden" value="${sid }" id="id">
					<input type="hidden" value="${dto.idx }" class="page_idx">
	   			</td>
			</tr>
			
		</c:forEach>
	</table>
</div>
<div id="content">
</div>
<%-- <input type="hidden" id="length" value="${fn:length(result2) }">

<div style="display: none">

	<c:forEach var="dto2" items="${result2 }" >
		${dto2.idx}.&nbsp;&nbsp;&nbsp; ${dto2.question }<br>
		<input type="radio" name="${dto2.idx }" value="1">①&nbsp;&nbsp;&nbsp; ${dto2.example1 }<br>
		<input type="radio" name="${dto2.idx }" value="2">②&nbsp;&nbsp;&nbsp; ${dto2.example2 }<br>
		<input type="radio" name="${dto2.idx }" value="3">③&nbsp;&nbsp;&nbsp; ${dto2.example3 }<br>
		<input type="radio" name="${dto2.idx }" value="4">④&nbsp;&nbsp;&nbsp; ${dto2.example4 }<br><br>
	</c:forEach>
	
	<form name="fm" action="quizTestAnswer.do" method="post">
	<input type="hidden" name="quiz_answer" id="quiz_answer" value="">
	<input type="hidden" name="paper_idx" value="1">
	<input type="button" id="exam" value="시험 보기">
	</form>
</div> --%>
<div>
</div>

</div>
<!-- Footer -->
<div class="modal-footer">
  <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
</div>
</body>

