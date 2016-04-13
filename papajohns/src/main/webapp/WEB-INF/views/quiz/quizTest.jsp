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
   $(function() {

      $('.example2').accordion();
      
 	  $('#exam').on('click',function(){
		  var idx=$('input:radio[name="radio"]:checked').val();
		  var quiz_num=$("#num"+idx).val();
		  window.alert(idx);
		 /* location.href="quizTest2.do?idx="idx+"&quiz_num="quiz_num;  */
		 
	  }); 
   });
</script>
</head>
<body>



   <h1 style="text-align: center;">시험 목록</h1>
   <input type="button" id="exam" value="시험 출제하기">
   <c:if test="${empty result }">
         등록된 시험이 없습니다.
      </c:if>

   <div class="example2">
	<table style="width: 600px;height: 300px; margin:0;auto;" >
	<tr style="background-color:#3c8dbc; color: white; text-align: center;">
		<th style="text-align: center;">시험</th>
		<th style="text-align: center;">출제할 항목</th>
	</tr>
      <c:forEach var="dto" items="${result }">
		<tr>
           <td style="width:400px;"> <div class="panel panel-default">
               
               <div class="panel-heading" data-acc-link="${dto.idx }">${dto.subject }</div>
               
               <div class="panel-body" data-acc-content="${dto.idx }">
					${dto.quiz_content }
   			   </div>
   			</div>
   			</td>
   			<td style="vertical-align:top; text-align: center;">
 				<input style="width:40px;height: 40px" name="radio" value="${dto.idx }" id="${dto.idx }" type="radio" >
 				<input type="hidden" value="${dto.quiz_num }" id="num${dto.idx }" class="num">
   			</td>
		</tr>
  	 </c:forEach>
  	</table>
   </div>





</body>
</html>