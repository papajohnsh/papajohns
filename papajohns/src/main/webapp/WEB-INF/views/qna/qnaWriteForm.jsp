<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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
          <div class="user-panel">
              <div class="pull-left image">
           <img src="img/${sid }/profile.jpg" onerror="this.src='//ssl.gstatic.com/accounts/ui/avatar_2x.png'" class="img-circle" id="userImage">
            </div>
            <div class="pull-left info">
              <p>${snickname}</p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
            </div>
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
     
      <div class="container" style="width: 900px"> 
        <!-- Content Header (Page header) -->
        <h3 align="center">qna 글쓰기</h3>
        <section class="content-header">

          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Forms</a></li>
            <li class="active">Editors</li>
          </ol>
        </section>

        <!-- Main content -->
       
  <div class="box box-info">
                 <form name="qnaWrite" action="qnaWrite.do" method="post">
                 <table class="table table-bordered">
                 
                  <tr>
					<th>작성자</th>
        			<td><input type="text" name="writer" placeholder="writer"></td>
        			<th>조회수</th>
        			<td><span class="badge bg-red">0</span></td>
                  </tr>
        			<tr>
        				<th>제목</th>
        				<td><input type="text" name="subject" placeholder="subject"></td>
        				<th>추천하기</th>
        				<td><a class="btn icon-btn btn-primary" href="#"><span class="glyphicon btn-glyphicon glyphicon-thumbs-up"></span>Like</a></td>
        			</tr>
 				</table>
                <div class="box-body pad">
                  
                    <textarea id="content" name="content" rows="10" cols="80"></textarea>
                  <br>
                  <!-- writeAdd button -->
                  <div>
                	<input type="submit" class="btn btn-primary pull-right" value="글올리기">
				  </div>
				  <!-- file -->
                	<div class="form-group" align="center">
          				<span><input type="file" id="exampleInputFile"></span>
      				</div>
             	</div>
             	</form>
           </div>
       </div><!-- container -->  
       
       <%@ include file="../footer.jsp" %>
    	<%@ include file="../controllSide.jsp" %>
</body>
</html>