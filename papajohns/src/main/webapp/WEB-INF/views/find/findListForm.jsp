<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
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
    <link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="css/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="css/dist/css/skins/_all-skins.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="css/plugins/iCheck/flat/blue.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="css/plugins/morris/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="css/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="css/plugins/datepicker/datepicker3.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="css/plugins/daterangepicker/daterangepicker-bs3.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="css/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    
<script type="text/javascript" src="js/httpRequest.js"></script>
</head>

<script>

</script>
<body class="hold-transition skin-blue sidebar-mini">
<%@ include file="../header.jsp" %>

<!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="user-panel">
          <c:if test="${empty sid}">
          <div class="pull-left image">
          	<img id="profile-img" class="img-circle" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
          </div>
          </c:if>
          <c:if test="${!empty sid}">
             <div class="pull-left image">
              <img src="img/${sid }/profile.jpg"  class="img-circle" style="width: 40px" alt="User Image">
            </div>
            <div class="pull-left info">
              <p>${snickname}</p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
           </c:if>
            <div class="pull-left info">
              <c:if test="${empty sid}">
              	<script type="text/javascript">
              		window.alert('로그인 후 이용 가능한 서비스입니다.');
              		location.href="index.do";
              	</script>
              	</c:if>
              <c:if test="${!empty sid}">
              	<p>${sname}</p>
              	<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
              	</c:if>
            </div>
          </div>
          
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">Menu</li>
            <li>
              <a href="classRoomNameSearchForm.do?num=1">
                <i class="fa fa-search"></i> <span>수업이름검색</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
            <li>
              <a href="classRoomNameSearchForm.do?num=2">
                <i class="fa fa-search"></i><span>소속기간검색</span>
               	<span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span> 
              </a>
            </li>
            <li>
              <a href="classRoomNameSearchForm.do?num=3">
                <i class="fa fa-search"></i><span>거리별검색</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
            <li>
              <a href="classRoomNameSearchForm.do?num=4">
                <i class="fa fa-search"></i><span>선생님검색</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
            <li>
              <a href="classRoomNameSearchForm.do?num=5">
                <i class="fa fa-search"></i><span>날짜별검색</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
            <li>
              <a href="classRoomNameSearchForm.do?num=6">
                <i class="fa fa-search"></i><span>시간별검색</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
          </ul>
           <ul class="sidebar-menu"></ul>
        </section>
        <!-- /.sidebar -->
      </aside>

<!-- Main content -->
              
              <div class="container">
                <div class="box-header with-border" align="center">
                  
                </div><!-- /.box-header -->
                <div class="box-body">
                <c:if test="${empty num && empty list}">
                <h3 class="box-title">수업신청하기</h3>
                  <table class="table table-bordered">
                    <tr>
                      <th>수업기관명</th>
                      <td>Papa교육원</td>
                      <th>수업이름</th>
                      <td>쉽게 배우는 Java</td>
                    </tr>
                    <tr>
                      <th>수업과목</th>
                      <td>Java와 함께 떠나는 여행</td>
                      <th>강의시간</th>
                      <td>7:00AM</td>
                    </tr>
                    <tr>
                      <th>수업스케줄</th>
                      <td></td>
                      <th>위치</th>
                      <td>서울시 강남구</td>
                    </tr>
                    <tr>
                      <td colspan="4">
                      <textarea rows="20" cols="180" id="content"></textarea>
                      </td>
                    </tr>
                  </table>
                  
                  <div align="center">
                  <span><a href="#" class="btn btn-sm btn-success btn-flat pull-center" >참여신청</a></span>
                  <span><a href="#" class="btn btn-sm btn-info btn-flat pull-center">목록으로</a></span>
                  </div>
                  </c:if>
                  <c:if test="${num==1}">
                  <form name="f" action="classRoomNameSearch.do">
                                            수업명<input type="text" name="subject">
                  <input type="hidden" name="num" value="1">
                  <input type="submit" value="검색">
                  <input type="hidden" name="test">
                  <table>
                  <c:forEach var="dto" items="${list }">
                  <tr>
                  <td>과목:<a href="javascript: window.open('popup.do?idx=${dto.idx }','','width=280,height=280,top,200,left=200');">${dto.subject }</a></td>
                  <td>선생님이름:${dto.name }
                  
                  </td>
                  </tr>
                  </c:forEach>
                  </table>
                  </form>
                  </c:if>
                  
                  <c:if test="${num==2}">
                  <form action="classRoomNameSearch.do">
                                           소속기간<input type="text" name="institut">
                  <input type="hidden" name="num" value="2">
                  <input type="submit" value="검색">
                  <table>
                  <c:forEach var="dto" items="${list2 }">
                  <tr>
                  <td>과목:<a href="#" >${dto.subject }</a></td>
                  <td>선생님이름:${dto.name }
                  <input type="hidden" name="idx" value="${dto.idx }">
                  </td>
                  </tr>
                  </c:forEach>
                  </table>
                  </form>
                  </c:if>
                  
                  <c:if test="${num==3}">
                  <form action="classRoomNameSearch.do">
                                            <input type="text" name="subject">
                  <input type="hidden" name="num" value="3">
                  <input type="submit" value="검색">
                  <table>
                  <c:forEach var="dto" items="${list }">
                  <tr>
                  <td>과목:<a href="#" class="studentList" id="${dto.idx }">${dto.subject }</a></td>
                  <td>선생님이름:${dto.name }
                  <input type="hidden" name="idx" value="${dto.idx }">
                  </td>
                  </tr>
                  </c:forEach>
                  </table>
                  </form>
                  </c:if>
                  
                  <c:if test="${num==4}">
                  <form action="classRoomNameSearch.do">
                                            선생님이름:<input type="text" name="name">
                  <input type="hidden" name="num" value="4">
                  <input type="submit" value="검색">
                  <table>
                  <c:forEach var="dto" items="${list3 }">
                  <tr>
                  <td>과목:<a href="#" class="studentList" id="${dto.idx }">${dto.subject }</a></td>
                  <td>선생님이름:${dto.name }
                  <input type="hidden" name="idx" value="${dto.idx }">
                  </td>
                  </tr>
                  </c:forEach>
                  </table>
                  </form>
                  </c:if>
                  
                  <c:if test="${num==5}">
                  <form action="classRoomNameSearch.do">
                                            수업날짜:<input type="text" name="end_date">
                  <input type="hidden" name="num" value="5">
                  <input type="submit" value="검색">
                  <table>
                  <c:forEach var="dto" items="${list4 }">
                  <tr>
                  <td>과목:<a href="#" class="studentList" id="${dto.idx }">${dto.subject }</a></td>
                  <td>선생님이름:${dto.name }
                  <input type="hidden" name="idx" value="${dto.idx }">
                  </td>
                  </tr>
                  </c:forEach>
                  </table>
                  </form>
                  </c:if>
                  
                  <c:if test="${num==6}">
                  <form action="classRoomNameSearch.do">
                                            수업시간:<input type="text" name="end_time">
                  <input type="hidden" name="num" value="6">
                  <input type="submit" value="검색">
                  <table>
                  <c:forEach var="dto" items="${list5 }">
                  <tr>
                  <td>과목:<a href="#" class="studentList" id="${dto.idx }">${dto.subject }</a></td>
                  <td>선생님이름:${dto.name }
                  <input type="hidden" name="idx" value="${dto.idx }">
                  </td>
                  </tr>
                  </c:forEach>
                  </table>
                  </form>
                  </c:if>
                  
    
             <%@ include file="../footer.jsp" %>
    		<%@ include file="../controllSide.jsp" %>          
  
  	<!-- jQuery 2.1.4 -->
    <script src="css/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.5 모달 -->
    <script src="css/bootstrap/js/bootstrap.min.js"></script>
    <!-- Morris.js charts -->
   
   
</html>