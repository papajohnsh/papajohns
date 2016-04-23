<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="js/httpRequest.js"></script>
</head>

<script>

</script>
<body class="hold-transition skin-blue sidebar-mini">
<%@ include file="../header.jsp" %>

<!-- Left side column. contains the logo and sidebar -->
   	<aside class="main-sidebar">

	<%@ include file="../side.jsp" %>
          
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
              <form action="classAttend.do">
              <div style=" margin-left: 17%;">
                <div class="box-header with-border" align="center">
                  
                </div><!-- /.box-header -->
                <div class="box-body">
                <c:forEach var="dto" items="${list }">
                      <h3 class="box-title">수업신청하기</h3>
                  <table class="table table-bordered">
                  <tr >
                  
                  <td rowspan="4" style="width:50px;">
                  <img src="resource/data/${dto.id }/profile.jpg" onerror="this.src='//ssl.gstatic.com/accounts/ui/avatar_2x.png'"
					style="margin-left:6%;" 	height="150px" width="150px" class="img-circle" id="qwe" >
                  </td>
                  </tr>
                   <tr>
                      <td style="width:100px;">선생님 이름</td>
                      <td style="width:100px;">${dto.name }</td>
                      <td>강의시간</td>
                      <td >7:00AM</td>
                    </tr>
                    <tr>
                    
                      <td >수업기관명</td>
                      <td >${dto.institut }</td>
                      <td>수업이름</td>
                      <td>${dto.subject }</td>
                    </tr>
                   
                    <tr>
                      <td>수업스케줄</td>
                      <td></td>
                      <td style="width:100px;">위치</td>
                      <td style="width:100px;">서울시 강남구</td>
                    </tr>
                    <tr>
                      <td colspan="5" align="center">
                      <textarea rows="20" cols="250" id="content" st></textarea>
                      </td>
                    </tr>
                  </table>
                  
                  <div align="center">
                  <input type="hidden" name="reidx" value="<%=request.getParameter("idx") %>" >
                  <span><input type="submit" value="참여신청" class="btn btn-sm btn-success btn-flat pull-center"></span>
                  <span><a href="#" class="btn btn-sm btn-info btn-flat pull-center">목록으로</a></span>
                  </div>
                 </c:forEach>
</div></div></form>
 <%@ include file="../footer.jsp" %>
    		<%@ include file="../controllSide.jsp" %>          
  
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