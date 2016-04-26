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
$('#close').on('click',function(){
	var idx=$('#idx').val();
	location.href='myClassRoom.do?idx='+idx;
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
</script>
<style>
.form-control{
	width:100%;
}
</style>
<div class="modal-header">
    <!-- 닫기(x) 버튼 -->
  <!-- header title -->
  <h4 class="modal-title" style="background-color:#3c8dbc; color: white; text-align: center;">문제 리스트</h4>  
</div>
<!-- body -->
<div class="modal-body">
<form action="quizTestSave1.do">
	<div>		
			<input type="hidden" value="${sid }" name="writer" id="writer">
			<font size="5em;"b;b;> <b>문 제</b> </font> <br>
			<div class="form-group has-success has-feedback">
			<textarea placeholder="문제를 입력하세요" class="form-control" rows="8" cols="50"name="question" id="question" required="required" required="required"></textarea><br />
			</div>
<div class="form-group has-success has-feedback">
  <div class="input-group">
 	<input style="vertical-align:top;" type="radio" name="Answer" value="1" checked="checked"/>
    <span class="input-group-addon">보기1</span>
    <input type="text" class="form-control" id="example1" name="example1" placeholder="보기를 입력하세요" required="required" aria-describedby="inputGroupSuccess1Status">

  </div>
</div>

<div class="form-group has-success has-feedback">
  <div class="input-group">
 	<input style="vertical-align:top;" type="radio" name="Answer" value="2"/>
    <span class="input-group-addon">보기2</span>
    <input type="text" class="form-control" id="example2" name="example2" placeholder="보기를 입력하세요" required="required" aria-describedby="inputGroupSuccess1Status">
  </div>
</div>

<div class="form-group has-success has-feedback">
  <div class="input-group">
 	<input style="vertical-align:top;" type="radio" name="Answer" value="3"/>
    <span class="input-group-addon">보기3</span>
    <input type="text" class="form-control" id="example3" name="example3" placeholder="보기를 입력하세요" required="required" aria-describedby="inputGroupSuccess1Status">
  </div>
</div>

<div class="form-group has-success has-feedback">
  <div class="input-group">
 	<input style="vertical-align:top;" type="radio" name="Answer" value="4"/>
    <span class="input-group-addon">보기4</span>
    <input type="text" class="form-control" id="example4" name="example4" placeholder="보기를 입력하세요" required="required" aria-describedby="inputGroupSuccess1Status">
  </div>
</div>
				
		<input type="hidden" id="idx" value="${param.idx }">
		<div style="float: right;"><input type="button" id="close"  class="btn btn-success pull-right" value="닫기"></div>
		<div style="float: right"><input type="button" id="join" class="btn btn-success pull-right" value="등록"></div>
				<br><br>
		
</div>	
</form>

  	
</div>



