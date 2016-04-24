<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script>
function submitContents(elClickedObj) {
    // 에디터의 내용이 textarea에 적용된다.
    oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
 
    // 에디터의 내용에 대한 값 검증은 이곳에서
    document.getElementById("ir1").value; 
  
 
    try {
        elClickedObj.form.submit();
    } catch(e) {}
}
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<%@include file="../header.jsp" %>
<!-- Left side column. contains the logo and sidebar -->
   	<aside class="main-sidebar">

	<%@ include file="../side.jsp" %>
          
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">Menu</li>
             <li>
          <a href="bbsListForm.do">
             <i class="fa fa-circle-o text-red"></i> <span>자유게시판</span>
             <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
           </a>
         </li>
          </ul>
           <ul class="sidebar-menu"></ul>
        </section>
        <!-- /.sidebar -->
      </aside>
      
      <!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
		<form name="bbsReWrite" action="bbsReWrite.do" method="post">
		<div class="box">
                <div class="box-header" align="center">
                  <h3 class="box-title">자유게시판 댓글쓰기</h3>
                  <!-- tools box -->
                  <div class="pull-right box-tools">
                    <button class="btn btn-default btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                    <button class="btn btn-default btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                  </div><!-- /. tools -->
                </div><!-- /.box-header -->
                 <table class="table table-bordered">
                 
                  <tr>
					<th>작성자</th>
        			<td>
        			<input type="text" name="writer" readonly="readonly" value="${snickname}">
        			<input type="hidden" name="re_idx" value="${param.idx}">
        			</td>
                  </tr>
        			<tr>
        				<th>제목</th>
        				<td><input type="text" name="subject" value="Re:)${param.subject}" placeholder="subject"></td>
        			</tr>
 				</table>
                <div class="box-body pad" style="width: 1550px; height:400px; margin-left:30px;">
                  <textarea name="content" id="ir1" rows="15" cols="200"></textarea>
                  <script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors,
    elPlaceHolder: "ir1",
    sSkinURI: "se2/SmartEditor2Skin.html",
    fCreator: "createSEditor2"
});
</script>
                  
                </div>
                  <!-- writeAdd button -->
                  <div align="center">
                	<input type="submit" class="btn btn-primary" value="글올리기" onclick="submitContents();">
				  </div>
				</form>
				  <br>
                </div>
           </div><!-- container -->
           
     <%@include file="../footer.jsp" %>
    <%@ include file="../controllSide.jsp" %> 
</body>
</html>