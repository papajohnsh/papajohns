<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

/* $('#exam').on('click',function(){
	var answer=null;
	for(var i=1;i<=$('#length').val();i++){
		if($(':radio[name='+i+']:checked').val()==undefined){
			window.alert("선택하지 않은 항목이 있습니다");
			return;
		}else{
			
			answer=answer+$(':radio[name='+i+']:checked').val()+",";
			
		}
	}
	$('#quiz_answer').val(answer);
	fm.submit();
	
	
}); */
</script>
</head>
<body>

 <input type="hidden" id="length" value="${fn:length(result2) }">

<div>

	<c:forEach var="dto2" items="${result2 }" >
		${dto2.idx}.&nbsp;&nbsp;&nbsp; ${dto2.question }<br>
		<input type="radio" name="${dto2.idx }" value="1">①&nbsp;&nbsp;&nbsp; ${dto2.example1 }<br>
		<input type="radio" name="${dto2.idx }" value="2">②&nbsp;&nbsp;&nbsp; ${dto2.example2 }<br>
		<input type="radio" name="${dto2.idx }" value="3">③&nbsp;&nbsp;&nbsp; ${dto2.example3 }<br>
		<input type="radio" name="${dto2.idx }" value="4">④&nbsp;&nbsp;&nbsp; ${dto2.example4 }<br><br>
	</c:forEach>
	
	<form name="fm" action="quizTestAnswer.do" method="post">
	<input type="hidden" name="quiz_answer" id="quiz_answer" value="">
	<input type="hidden" name="paper_idx" value="${result.idx}">
	<input type="hidden" name="subject" value="${result.subject }">
	<input type="hidden" name="class_idx" value="${result.class_idx }">
	<input type="hidden" name="member_id" value="${sid }">
	<input type="button" id="exam" value="시험 보기" onclick="gogo()">
	</form>
</div> 
</body>
</html>