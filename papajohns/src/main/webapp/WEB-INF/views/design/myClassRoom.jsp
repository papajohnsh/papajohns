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
<style>

#img1{
position: fixed; 
left:${x1}px;
top:${y1}px;
}
#img2{
position: fixed; 
left:${x2}px;
top:${y2}px;
}
#img3{
position: fixed; 
left:${x3}px;
top:${y3}px;
}
#img4{
position: fixed; 
left:${x4}px;
top:${y4}px;
}
#img5{
position: fixed; 
left:${x5}px;
top:${y5}px;
}
#img6{
position: fixed; 
left:${x6}px;
top:${y6}px;
}
#img7{
position: fixed; 
left:${x7}px;
top:${y7}px;
}
#img8{
position: fixed; 
left:${x8}px;
top:${y8}px;
}
#img9{
position: fixed; 
left:${x9}px;
top:${y9}px;
}
#img10{
position: fixed; 
left:${x10}px;
top:${y10}px;
}
#img11{
position: fixed; 
left:${x11}px;
top:${y11}px;
}
#img12{
position: fixed; 
left:${x12}px;
top:${y12}px;
}
#img13{
position: fixed; 
left:${x13}px;
top:${y13}px;
}
#img14{
position: fixed; 
left:${x14}px;
top:${y14}px;
}
#img15{
position: fixed; 
left:${x15}px;
top:${y15}px;
}
#img16{
position: fixed; 
left:${x16}px;
top:${y16}px;
}
#img17{
position: fixed; 
left:${x17}px;
top:${y17}px;
}
#img18{
position: fixed; 
left:${x18}px;
top:${y18}px;
}
#img19{
position: fixed; 
left:${x19}px;
top:${y19}px;
}
#img20{
position: fixed; 
left:${x20}px;
top:${y20}px;
}
#img21{
position: fixed; 
left:${x21}px;
top:${y21}px;
}
#img22{
position: fixed; 
left:${x22}px;
top:${y22}px;
}
#img23{
position: fixed; 
left:${x23}px;
top:${y23}px;
}
#img24{
position: fixed; 
left:${x24}px;
top:${y24}px;
}
#img25{
position: fixed; 
left:${x25}px;
top:${y25}px;
}
#img26{
position: fixed; 
left:${x26}px;
top:${y26}px;
}
#img27{
position: fixed; 
left:${x27}px;
top:${y27}px;
}
#img28{
position: fixed; 
left:${x28}px;
top:${y28}px;
}
#img29{
position: fixed; 
left:${x29}px;
top:${y29}px;
}
#img30{
position: fixed; 
left:${x30}px;
top:${y30}px;
}
</style>
</head>
<body class="hold-transition skin-blue sidebar-mini">

<%@ include file="../header.jsp" %>

<!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
         <div class="user-panel">

				<div class="pull-left image" style="height: 100px; width: 80px;">

					<img src="resource/data/${sid }/profile.jpg"
						onerror="this.src='//ssl.gstatic.com/accounts/ui/avatar_2x.png'"
						class="img-circle"
						style="max-width: 80px; height: 80px; width: 80px; margin-top: 10px;">
				</div>
				<div style="margin-left: 85px; margin-top: -5px;">
					<a href="myInfoForm.do"><font size="2">내정보</a>&nbsp;
					&nbsp; <a href="logout.do"><font size="2">로그아웃</a>
				</div>
				<br>
				<br>
				<div style="margin-top: -20px;">
					<font size="2" color="white">&nbsp;&nbsp;&nbsp;${snickname}</font>
				</div>
				<div style="margin-left: 120; margin-top: 8px;">
					&nbsp;&nbsp;&nbsp;<a href="#"><i
						class="fa fa-circle text-success"></i><font color="white">&nbsp;&nbsp;Online</font>
					</a>
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
                <li><a data-toggle="modal" href="quizList.do?idx=${param.idx }" data-target="#myModal3"><i class="fa fa-circle-o"></i> 문제 수정하기</a></li>
                <li><a data-toggle="modal" href="quizResult.do?idx=${param.idx }" data-target="#myModal4"><i class="fa fa-circle-o"></i>쪽지시험결과</a></li>
                <li><a data-toggle="modal" href="quizTestLoad.do" data-target="#myModal5" data-backdrop="static"><i class="fa fa-circle-o"></i>쪽지시험보기</a></li>
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
      <c:forEach var="dto" items="${list }">
<img src="${dto.id }.jpg" id="img${dto.idx }" width="50px" height="50px">
</c:forEach> 

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

<div class="modal fade bs-example-modal-lg" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      
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