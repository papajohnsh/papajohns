<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->

<script type="text/javascript" src="js/httpRequest.js"></script>
<script>
$(function(){
    $("#studentList").on('click', function(){
        $('#myModal').modal({
                      remote : 'studentList.do'
                });
    })
    
        $("#classQuiz").on('click', function(){
        $('#myModal2').modal({
                      remote : 'classQuiz.do'
                });
    })   
})
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">

<%@ include file="../header.jsp" %>

<!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
              <div class="pull-left image">
              <img src="img/${sid }/profile.jpg"  class="img-circle" style="width: 40px" alt="User Image">
            </div>
            <div class="pull-left info">
              <p>${snickname}</p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">Menu</li>
            <li>
              <a href="classRoomForm.do">
                <i class="fa fa-home"></i><span>내강의실</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
              <li class="active treeview">
              <a href="#">
                <i class="fa fa-files-o"></i> <span>내수업</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="#" id="studentList"><i class="fa fa-circle-o" ></i> 학생리스트</a></li>
                <li><a href="classPlan.do" ><i class="fa fa-circle-o"></i> 강의스케줄</a></li>
                <li><a data-toggle="modal" href="quizTestForm.do" data-target="#myModal2"><i class="fa fa-circle-o"></i> 문제 만들기</a></li>
                <li><a data-toggle="modal" href="quizList.do" data-target="#myModal3"><i class="fa fa-circle-o"></i> 문제 수정하기</a></li>
                <li><a data-toggle="modal" href="quizTest.do" data-target="#myModal4"><i class="fa fa-circle-o"></i>시험출제하기</a></li>
                <li><a data-toggle="modal" href="quizTestLoad.do" data-target="#myModal5"><i class="fa fa-circle-o"></i>쪽지시험보기</a></li>
                <li><a href="showMessage.do"><i class="fa fa-circle-o"></i> 메세지 보기</a></li>
                <li><a href="classBbs.do"><i class="fa fa-circle-o"></i> 수업게시판</a></li>
                <li><a href="saveClass.do"><i class="fa fa-circle-o"></i> 수업내용 저장</a></li>
                <li><a data-toggle="modal" href="fileUpload.do" data-target="#myModal6"><i class="fa fa-circle-o"></i>파일업로드</a></li>
                
              </ul>
            </li>
            <li>
              <a href="makeClass.do">
                <i class="fa fa-book"></i><span>수업 만들기</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
            <li>
              <a href="classDesign.do">
                <i class="fa fa-edit"></i><span>강의실 디자인</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
          </ul>
           <ul class="sidebar-menu"></ul>
        </section>
        <!-- /.sidebar -->
      </aside>

<%--         <iframe style="float: right;" src="http://192.33.33.26:8081?student=${sname }&classRoom=자바" width="550" height="550">
 		</iframe> --%>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog">
    <div class="modal-content">
        <!-- remote ajax call이 되는영역 -->
    </div>
  </div>
</div>
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog">
    <div class="modal-content">
        <!-- remote ajax call이 되는영역 -->
    </div>
  </div>
</div>

<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog">
    <div class="modal-content">
        <!-- remote ajax call이 되는영역 -->
    </div>
  </div>
</div>

<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog">
    <div class="modal-content">
        <!-- remote ajax call이 되는영역 -->
    </div>
  </div>
</div>
<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog">
    <div class="modal-content">
        <!-- remote ajax call이 되는영역 -->
    </div>
  </div>
</div>
<div class="modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog">
    <div class="modal-content">
        <!-- remote ajax call이 되는영역 -->
    </div>
  </div>
</div>

     <!-- jQuery 2.1.4 -->
    <script src="css/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
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
 

</body>
</html>