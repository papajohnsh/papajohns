<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/src/jquery.accordion.js"></script>
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css"
   rel="stylesheet" type="text/css">

<link rel="stylesheet"
   href="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="js/styles/style.css">
<script type="text/javascript">
   $('#exam').on('click',function(){

	   var quiz_num=null;
	   $('.chkBox:checked').each(function() {

		   quiz_num=quiz_num+','+$(this).attr('id');
		
	   });

	   if(quiz_num==null){
		   window.alert("출제할 문제를 체크해 주십시오.");
	   }else{
	   	$('#quiz_num').val(quiz_num);

	 document.registration.submit(); 
	   } 

   });
	   
   $('.update').on(
         'click',
         function() {

            var sunbun = $(this).attr('id');
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
</head>
<body>



   <h1 style="text-align: center;">문제 수정 및 시험등록</h1>
<form name="registration" action="quizTestSave.do" method="post">
   시험명:<input type="text" name="subject" ><br><br>
  시험설명:<textarea rows="3" name="quiz_content" cols="30"></textarea>
	<input type="hidden" name="quiz_num" id="quiz_num">
	<input id="exam" type="button" value="시험 등록하기">
</form>
   <c:if test="${empty result }">
         등록된 문제가없습니다.
      </c:if>

   <div class="example2">
	<table style="width: 600px;height: 300px; margin:0;auto;" >
	<tr style="background-color:#3c8dbc; color: white; text-align: center;">
		<th style="text-align: center;">문제</th>
		<th style="text-align: center;">출제할 항목</th>
	</tr>
      <c:forEach var="dto" items="${result }">
		<tr>
           <td style="width:400px;"> <div class="panel panel-default">
               
               <div class="panel-heading" data-acc-link="${dto.idx }">${dto.question }</div>
               
               <div class="panel-body" data-acc-content="${dto.idx }">
               	<input type="hidden" id="idx${dto.idx }" name="idx" value="${dto.idx }">
				<textarea rows="4" cols="50" id="question${dto.idx }" name="question" class="textarea wysihtml5-editor" value="${dto.question }"></textarea><br />	
				<input type="radio" name="Answer" id="Answer${dto.idx }" value="1" />1.<input type="text" id="example1${dto.idx }" value="${dto.example1}" class="form-control" name="example1" size="20"/><br />
				<input type="radio"name="Answer" id="Answer${dto.idx }" value="2" />2.<input type="text" id="example2${dto.idx }" value="${dto.example2}" class="form-control" name="example2" /><br />
				<input type="radio" name="Answer" id="Answer${dto.idx }"  value="3"/>3.<input type="text" id="example3${dto.idx }" value="${dto.example3}" class="form-control" name="example3" /><br />
				<input type="radio"name="Answer" id="Answer${dto.idx }" value="4"/>4.<input type="text" id="example4${dto.idx }" value="${dto.example4}" class="form-control" name="example4" /><br />
				<input type="button" class="update" id="${dto.idx }" value="수정하기"><input type="button" value="삭제">
   			   </div>
   			</div>
   			</td>
   			<td style="vertical-align: top; text-align: center;">
 				<input style="width:40px;height: 40px" class="chkBox" id="${dto.idx }" type="checkbox" >
   			</td>
		</tr>
  	 </c:forEach>
  	</table>
   </div>





</body>
</html>