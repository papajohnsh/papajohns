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
              <img src="img/강동원.jpg" class="img-circle" style="width: 40px" alt="User Image">
            </div>
            
            <div class="pull-left info">
              <p>강동원</p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
            
            <!-- login button -->
       	
	       	<c:if test="${empty sid }">
				<span><input type="button" class="btn btn-primary pull-right" value="login" onclick="location.href='loginForm.do'"></span>
			</c:if>
			<c:if test="${!empty sid}">
				<span><input type="button" class="btn btn-default pull-right" value="logout" onclick="location.href='logout.do'"></span>	
			</c:if>
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
     
       <!-- Content Wrapper. Contains page content -->
   		<div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <h3 align="center">게시판 글쓰기</h3>
        <section class="content-header">

          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Forms</a></li>
            <li class="active">Editors</li>
          </ol>
        </section>

        <!-- Main content -->
       
  <div class="box box-info">
                 <form name="bbsWrite" action="bbsWrite.do">
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
                  
                    <textarea id="content" name="content" rows="10" cols="80">
                                            This is my textarea to be replaced with TextEditor.
                    </textarea>
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

      <!-- TABLE: LATEST ORDERS -->
 			<div class="box-header with-border"></div><!-- /.box-header -->
                <div class="box-body">
                  <div class="table-responsive">
                    <table class="table no-margin">
                      <thead>
                        <tr>
                          <th>번호</th>
                          <th>제목</th>
                          <th>작성자</th>
                          <th>조회수</th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:set var="dto" value="${list}"></c:set>
				      	<c:if test="${empty dto}">
				      		<tr>
				      			<td colspan="5" align="center">
				      				등록된 게시글이 없습니다.
				      			</td>
				      		</tr>
				      	</c:if>
                      <c:forEach var="dto" items="${list}">
                        <tr>
                          <td>${dto.idx}</td>
                          <td>${dto.subject}</td>
                          <td>${dto.writer}</td>
                          <td><span class="badge bg-red">${dto.readnum}</span></td>
                        </tr>
                      </c:forEach>
                      </tbody>
                    </table>
                  </div><!-- /.table-responsive -->

                <div class="box-footer clearfix" align="center">
    				<ul class="pagination pagination-sm no-margin pull-center">
                    <li><a href="#">&laquo;</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">&raquo;</a></li>
                  </ul>
                </div><!-- /.box-footer -->
              </div><!-- /.box -->
            <!-- search form -->
       </div><!-- container -->  


        <!-- Bootstrap 3.3.5 -->
    <script src="css/bootstrap/js/bootstrap.min.js"></script>
    <!-- Morris.js charts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="css/plugins/morris/morris.min.js"></script>
    <!-- Sparkline -->
    <script src="css/plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- jvectormap -->
    <script src="css/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="css/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="css/plugins/knob/jquery.knob.js"></script>
    <!-- daterangepicker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
    <script src="css/plugins/daterangepicker/daterangepicker.js"></script>
    <!-- datepicker -->
    <script src="css/plugins/datepicker/bootstrap-datepicker.js"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="css/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <script>
      $(function () {
        // Replace the <textarea id="editor1"> with a CKEditor
        // instance, using default configuration.
        CKEDITOR.replace('editor1');
        //bootstrap WYSIHTML5 - text editor
        $(".textarea").wysihtml5();
      });
    </script>
    <!-- Slimscroll -->
    <script src="css/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="css/plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="css/dist/js/app.min.js"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="css/dist/js/pages/dashboard.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="css/dist/js/demo.js"></script>
     <!-- CK Editor -->
    <script src="https://cdn.ckeditor.com/4.4.3/standard/ckeditor.js"></script>
</body>
</html>