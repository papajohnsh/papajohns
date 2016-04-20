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
        }
     }	
};
</script>
<div class="modal-header">
    <!-- 닫기(x) 버튼 -->
  <button type="button" class="close" data-dismiss="modal">×</button>
  <!-- header title -->
  <h4 class="modal-title" style="text-align: center;">쪽지 시험 등록</h4>
</div>
<!-- body -->
<div class="modal-body">
<form action="quizTestSave1.do">
		
		
			<div class="input-group"  >
			<input type="hidden" value="${sid }" name="writer" id="writer">
				<h3>문제 입력 하세요</h3><br />
				<textarea rows="4" cols="50"name="question" id="question" required="required" class="textarea wysihtml5-editor"></textarea><br />
				
				<input type="radio" name="Answer" value="1" checked="checked"/>1.<input required="required" type="text" id="example1" class="form-control" name="example1" size="20"/><br />
			
				
				<input type="radio"name="Answer" value="2" />2.<input type="text" required="required" id="example2" class="form-control" name="example2" /><br />
				
				<input type="radio" name="Answer" value="3"/>3.<input type="text" required="required" id="example3" class="form-control" name="example3" /><br />
			
				<input type="radio"name="Answer"  value="4"/>4.<input type="text" required="required" id="example4" class="form-control" name="example4" /><br />
			<input type="button" id="join" class="btn btn-default pull-right" value="등록"/>
			</div>
		
</form>
</div>


