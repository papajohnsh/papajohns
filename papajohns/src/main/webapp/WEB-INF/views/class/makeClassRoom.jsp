<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

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
                <i class="fa fa-home"></i> <span>내강의실</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
            <li>
              <a href="classForm.do">
                <i class="fa fa-files-o"></i><span>내수업</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
               </a>
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
      
      
      <!-- Main content -->
                <div class="box-header with-border" align="center">
                  <h3 class="box-title">새 강의실</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table class="table table-bordered" style="width: 50%; float: right;">
                    <tr>
                      <th>강의실명</th>
                      <td>E강의실</td>
                      <th>강사명</th>
                      <td>송중기</td>
                    </tr>
                    <tr>
                      <th>강의명</th>
                      <td>Github</td>
                      <th style="width: 90px">강의시간</th>
                      <td>1:00PM</td>
                    </tr>
                    <tr>
                      <th>강의스케줄</th>
                      <td>2016.04.20</td>
                      <th>위치</th>
                      <td>서울시 서초구</td>
                    </tr>
                    <tr>
                      <td colspan="4">
                      <textarea rows="20" cols="150" id="content"></textarea>
                      </td>
                    </tr>
                  </table>

              </div><!-- /.box -->
               <div align="center">
                  <span><a href="makeClassRoomAdd.do" class="btn btn-sm btn-success btn-flat pull-center">등록하기</a></span>
                  <span><a href="classRoomForm.do" class="btn btn-sm btn-info btn-flat pull-center">목록으로</a></span>
                  </div>

             <%@ include file="../footer.jsp" %>
    		<%@ include file="../controllSide.jsp" %>          

</body>
</html>