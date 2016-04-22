<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript" src="js/src/jquery.accordion.js"></script>
<script>

   $('#exam').on('click',function(){

	   var quiz_num=null;
	   $('.chkBox:checked').each(function() {

		   quiz_num=quiz_num+$(this).attr('id')+',';
		
	   });

	   if(quiz_num==null){
		   window.alert("출제할 문제를 체크해 주십시오.");
	   }else{
	   	$('#quiz_num').val(quiz_num);

	  document.registration.submit();  
	   } 

   });
	   
   $('#update').on(
         'click',
         function() {

            var sunbun = $(this).attr('name');
            var idx = $('#idx' + sunbun).val();
            var question = $('#question' + sunbun).val();
            var Answer = $(":radio[id='Answer" + sunbun + "']:checked").val();
            var example1 = $('#example1' + sunbun).val();
            var example2 = $('#example2' + sunbun).val();
            var example3 = $('#example3' + sunbun).val();
            var example4 = $('#example4' + sunbun).val();
            var url = 'quizTestSave2.do';
            var params = 'idx=' + idx + '&question=' + question
                  + '&Answer=' + Answer + '&example1=' + example1
                  + '&example2=' + example2 + '&example3=' + example3
                  + '&example4=' + example4;
            sendRequest('quizTestSave2.do', params, showResult, 'POST');
         });
   function showResult() {
      if (XHR.readyState == 4) {
         if (XHR.status == 200) {
            var text = XHR.responseText;
            window.alert(text);
         }
      }
   }

   $(function() {
      $('.example2').accordion();


   });

</script>
<div class="modal-header">
    <!-- 닫기(x) 버튼 -->
  <button type="button" class="close" data-dismiss="modal">×</button>
  <!-- header title -->
  <h4 class="modal-title" style="text-align: center;">시험지 등록 및 문제수정</h4>
</div>
<!-- body -->
<form name="registration" action="quizTestSave.do" method="post">
<div style="margin-left:160px;" >
<font size="4em;"> <b>시 험 명</b> </font> <br> <input type="text" name="subject" style="width: 293px; height:30px;" ><br><br>
  <font size="4em;"> <b>시 험 내용</b> </font><br><textarea rows="8" name="quiz_content" cols="45"></textarea><br>

<input type="hidden" name="class_idx" value="${class_idx }"><br>
  <font size="4em;"> <b>시 험 날 짜</b> </font><br><input name="start_date" type="date" style="width: 293px; height:30px;"> <br> <br>  <font size="4em;"b;b;> <b>시 험 시간:</b></font><br><input name="start_time" type="time" style="width: 293px; height:30px;">
  <input type="hidden" name="writer" value="${sname }">
  	
	<input type="hidden" name="quiz_num" id="quiz_num">
	</div>
		<br>
<div style="margin-left:100px;"><br><input id="exam"  class="btn btn-success pull-center" type="button" value="시험 등록하기"></div>	<br><br>
</form>
   <c:if test="${empty result }">
         등록된 문제가없습니다.
      </c:if>


<div class="modal-body">
   <div class="example2">

	<table style="width: 100%;height: 300px;" border="1">
	<tr style="background-color:#3c8dbc; color: white; text-align: center; height:30px;" >
		<th style="text-align: center;">문제</th>
		<th style="text-align: center;">출제할 항목</th>

	</tr>
      <c:forEach var="dto" items="${result }">
		<tr>
           <td style="width:400px; vertical-align: middle;"> <div class="panel panel-primary" style="width:500px;">
               
               <div class="panel-heading"  data-acc-link="${dto.idx }" align="center">${dto.question }</div>
               
               <div class="panel-body" data-acc-content="${dto.idx }">
               	<input type="hidden" id="idx${dto.idx }" name="idx" value="${dto.idx }">
               	<h3>문제:<br></h3>
				<textarea rows="6" cols="74" id="question${dto.idx }" name="question" class="textarea wysihtml5-editor" value="${dto.question }"></textarea><br />	
				<input type="radio" name="Answer" id="Answer${dto.idx }" value="1" /><font size="3em;"> <b>1.</b> </font><input type="text" id="example1${dto.idx }" value="${dto.example1}" class="form-control" name="example1" size="20"/><br />
				<input type="radio"name="Answer" id="Answer${dto.idx }" value="2" /><font size="3em;"> <b>2.</b> </font><input type="text" id="example2${dto.idx }" value="${dto.example2}" class="form-control" name="example2" /><br />
				<input type="radio" name="Answer" id="Answer${dto.idx }"  value="3"/><font size="3em;"> <b>3.</b> </font><input type="text" id="example3${dto.idx }" value="${dto.example3}" class="form-control" name="example3" /><br />
				<input type="radio"name="Answer" id="Answer${dto.idx }" value="4"/><font size="3em;"> <b>4.</b> </font><input type="text" id="example4${dto.idx }"  value="${dto.example4}" class="form-control" name="example4" /><br />

			<div style="margin-left:190px;">	<input type="button"  class="btn btn-success pull-center"  id="update" name="${dto.idx}" value="수정하기">
   			  </div> </div>

   			</div>
   			</td>
   			<td style="vertical-align: top; text-align: center;">
 				<input style="width:30px;height: 100px" class="chkBox" id="${dto.idx }" type="checkbox" >
   			</td>
		</tr>
  	 </c:forEach>
  	</table>
   </div>
   </div>
   
<br><br><br>


