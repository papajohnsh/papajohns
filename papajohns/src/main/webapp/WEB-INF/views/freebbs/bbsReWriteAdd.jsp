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
             <i class="fa fa-circle-o text-red"></i><span>자유게시판</span>
             <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
           </a>
         </li>   
          </ul>
           <ul class="sidebar-menu"></ul>
        </section>
        <!-- /.sidebar -->
      </aside>
      
      <!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="background-color: #ffffff">
		<div class="col-xs-2"></div>
			<div class="col-xs-8">
		<form name="bbsReWrite" action="bbsReWrite.do" method="post">
		<div class="box">
                <div class="box-header" align="center">
                  <h3 class="box-title"><span class="glyphicons glyphicons-edit">자유게시판 댓글쓰기</span></h3>
                </div><!-- /.box-header -->
                 <table class="table table-bordered">
                 
                  <tr>
					<th><span class="glyphicons glyphicons-user">작성자</span></th>
        			<td>
        			<input type="text" name="writer" readonly="readonly" value="${snickname}">
        			<input type="hidden" name="re_idx" value="${param.idx}">
        			</td>
                  </tr>
        			<tr>
        				<th><span class="glyphicons glyphicons-list">제목</span></th>
        				<td><input type="text" name="subject" value="Re:)${param.subject}" placeholder="subject"></td>
        			</tr>
 				</table>
                <div class="box-body pad" style="width: auto; height:400px; margin-left:20px;">
                  <fieldset>
                    <textarea name="content" id="ir1" rows="15" cols="200" style="width: auto;"></textarea>
					<script type="text/javascript">
					var oEditors = [];
					nhn.husky.EZCreator.createInIFrame({
					    oAppRef: oEditors,
					    elPlaceHolder: "ir1",
					    sSkinURI: "se2/SmartEditor2Skin.html",
					    fCreator: "createSEditor2"
					});
				</script>
					<!-- writeAdd button -->
					<input type="submit" class="btn btn-primary pull-right" value="글올리기" onclick="submitContents();">
                  </fieldset>
				</div>
				</div>
				</form>
				 <div class="col-xs-2"></div>
				  <br>
                </div>
           </div><!-- container -->
           
     <%@include file="../footer.jsp" %>
    <%@ include file="../controllSide.jsp" %> 
</body>
</html>