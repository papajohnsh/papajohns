<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="modal-header">
    <!-- 닫기(x) 버튼 -->
  <button type="button" class="close" data-dismiss="modal">×</button>
  <!-- header title -->
  <h4 class="modal-title" style="text-align: center;">쪽지 시험 등록</h4>
</div>
<!-- body -->
<div class="modal-body">
<form action="quizTestSave1.do">
<table style="width: 500px;height: 300px; margin:0;auto;" >
			
		
			<div class="input-group"  >
			<input type="hidden" value="${sid }" name="writer">
				<h3>문제 입력 하세요</h3><br />
				<textarea rows="4" cols="50"name="question" class="textarea wysihtml5-editor"></textarea><br />
				
				<input type="radio" name="Answer" value="1" />1.<input type="text" class="form-control" name="example1" size="20"/><br />
			
				
				<input type="radio"name="Answer" value="2" />2.<input type="text" class="form-control" name="example2" /><br />
				
				<input type="radio" name="Answer" value="3"/>3.<input type="text" class="form-control" name="example3" /><br />
			
				<input type="radio"name="Answer"  value="4"/>4.<input type="text"  class="form-control" name="example4" /><br />
			
			</div>
		
			<button type="submit" class="btn btn-default pull-right">등록</button>

	


</table>
</form>
</div>


