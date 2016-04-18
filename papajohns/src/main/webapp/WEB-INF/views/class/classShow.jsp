<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../header.jsp" %>

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
                <li><a data-toggle="modal" href="#" data-target="#myModal4"><i class="fa fa-circle-o"></i>쪽지시험결과</a></li>
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
 

</body>
</html>