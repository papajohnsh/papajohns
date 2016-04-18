<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<%@include file="../header.jsp" %>
<!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="pull-left image">
            <img src="img/${sid }/profile.jpg" onerror="this.src='//ssl.gstatic.com/accounts/ui/avatar_2x.png'" class="img-circle" id="userImage">
            </div>
            <div class="pull-left info">
              <p>${snickname}</p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">Menu</li>
            <li>
              <a href="supportForm.do">
                <i class="fa fa-circle-o text-red"></i> <span>FAQ</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
            <li>
              <a href="faqForm.do">
                <i class="fa fa-circle-o text-aqua"></i><span>Q & A</span></a>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
            </li>
          </ul>
           <ul class="sidebar-menu"></ul>
        </section>
        <!-- /.sidebar -->
      </aside>
      
      <!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
		<form name="qnaReWrite" action="qnaReWrite.do" method="post">
		<div class="box">
                <div class="box-header" align="center">
                  <h3 class="box-title">질문게시판 댓글쓰기</h3>
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
                <div class="box-body pad">
                    <textarea name="content" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                </div>
                  <!-- writeAdd button -->
                  <div align="center">
                	<input type="submit" class="btn btn-primary" value="글올리기">
				  </div>
				</form>
				  <br>
                </div>
           </div><!-- container -->
	
	<%@ include file="../footer.jsp" %>
    <%@ include file="../controllSide.jsp" %>
</body>
</html>