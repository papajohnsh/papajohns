<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$('#join').on('click',function(){
	if($('#example1').val()==''||$('#example2').val()==''||$('#example3').val()==''||$('#example4').val()==''||$('#question').val()==''){
		window.alert('공백란이 있습니다.');
	}else{
	var question= $('#question').val();
	var example1=$('#example1').val();
	var example2=$('#example2').val();
	var example3=$('#example3').val();
	var example4=$('#example4').val();
	var answer = $(":radio[name='Answer']:checked").val();
	var writer = $('#writer').val();
    var params = 'question=' + question
    + '&Answer=' + answer + '&example1=' + example1
    + '&example2=' + example2 + '&example3=' + example3
    + '&example4=' + example4+'&answer='+answer+'&writer='+writer;
	sendRequest('quizTestSave1.do', params, showResult, 'GET');
	}
});
function showResult(){
    if (XHR.readyState == 4) {
        if (XHR.status == 200) {
           var text = XHR.responseText;
           window.alert(text);
           $('#question').val('');
           $('#example1').val('');
           $('#example2').val('');
           $('#example3').val('');
           $('#example4').val('');
        }
     }	
};
$('#close').on('click',function(){
	var idx=$('#idx').val();
	location.href='myClassRoom.do?idx='+idx;
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
		
		<h2 style="background-color:#3c8dbc; color: white; text-align: center; height:40px;">문제 만들기</h2>
			<div class="input-group" style="margin-left: 120px;margin-top: 50px;" >
			<input type="hidden" value="${sid }" name="writer" id="writer">
			<font size="5em;"b;b;> <b>문 제:</b> </font> <br>
				<textarea rows="8" cols="50"name="question" id="question" required="required" class="textarea wysihtml5-editor"></textarea><br />
				 <br>
				<input type="radio" name="Answer" value="1" checked="checked"/>	<font size="5em;"b;b;> <b>1.</b> </font> <input required="required" type="text" id="example1" class="form-control" name="example1" size="20"/><br />
			
				
				<input type="radio"name="Answer" value="2" /><font size="5em;"b;b;> <b>2.</b> </font> <input type="text" required="required" id="example2" class="form-control" name="example2" /><br />
				
				<input type="radio" name="Answer" value="3"/><font size="5em;"b;b;> <b>3.</b> </font> <input type="text" required="required" id="example3" class="form-control" name="example3" /><br />
			
				<input type="radio"name="Answer"  value="4"/><font size="5em;"b;b;> <b>4.</b> </font> <input type="text" required="required" id="example4" class="form-control" name="example4" /><br /><br>
		<br><br>	<input type="button" id="join" class="btn btn-success pull-right" value="등록"/>
					<input type="button" id="close" class="btn btn-success pull-right" value="닫기"/>
					<input type="hidden" id="idx" value="${idx }">
			</div>
		<br><br><br><br><br><br><br>
</form>
</div>


