<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="modal-header">
  <!-- header title -->
      <!-- 닫기(x) 버튼 -->
  <button type="button" class="close" data-dismiss="modal">×</button>
  <h4 class="modal-title" style="text-align: center;">질문 작성하기</h4>  
</div>
<!-- body -->
<div class="modal-body">
<form>
<font size="4em;"> <b>제목</b> </font> <br> <input type="text" name="subject" style="width: 100%; height:30px;" ><br><br>
  <font size="4em;"> <b>질문내용</b> </font><br><textarea rows="8" name="content" cols="45"></textarea><br><br>	
  <input type="button" class="btn btn-success pull-right" value="질문보내기"><br>
</form>
</div>
<!-- Footer -->
<div class="modal-footer">
  <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
</div>


