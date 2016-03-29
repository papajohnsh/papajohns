<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
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
              <img src="img/강동원.jpg" class="img-circle" style="width: 40px" alt="User Image">
            </div>
            <div class="pull-left info">
              <p>강동원</p>
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

<!-- TABLE: LATEST ORDERS -->
		<section>
              <div class="container" style="width: 900px">
                <div class="box-header with-border" align="center">
                  <h3 class="box-title">공지사항</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                  </div>
                </div><!-- /.box-header -->
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
                        <tr>
                          <td>1.</td>
                          <td><a href="noticeShow.do">쪽지시험 관련 공지</a></td>
                          <td>송중기</td>
                          <td><span class="badge bg-red">50</span></td>
                        </tr>
                        <tr>
                          <td>2.</td>
                          <td><a href="#">수학 과제 제출 요망</a></td>
                          <td>송혜교</td>
                          <td><span class="badge bg-yellow">80</span></td>
                        </tr>
                        <tr>
                          <td>3.</td>
                          <td><a href="#">수업시간표 변경 관련 사항</a></td>
                          <td>이진욱</td>
                          <td><span class="badge bg-blue">20</span></td>
                        </tr>
                        <tr>
                          <td>4.</td>
                          <td><a href="#">휴강일 공지</a></td>
                          <td>유해진</td>
                          <td><span class="badge bg-blue">20</span></td>
                        </tr>
                      </tbody>
                    </table>
                     <div class="box-footer clearfix" align="center">
             		<ul class="pagination pagination-sm no-margin pull-center">
                    	<li><a href="#">&laquo;</a></li>
                    	<li><a href="#">&raquo;</a></li>
                  	</ul>
                  
                </div><!-- /.box-footer -->
                    </div><!-- container -->
                  </div><!-- /.table-responsive -->
                 </div><!-- /.box --> 
            </section>    
   
   <!-- TABLE: LATEST ORDERS -->
		<section>
              <div class="container" style="width: 900px">
                <div class="box-header with-border" align="center">
                  <h3 class="box-title">내 강의실</h3>
                  <div class="box-tools pull-right">
                    <button type="button" class="btn btn-defalut btn-circle" onclick="location.href='makeClassRoom.do';"><i class="glyphicon glyphicon-plus"></i></button>
                    <button type="button" class="btn btn-defalut btn-circle"><i class="glyphicon glyphicon-minus"></i></button>                    
                  </div>
                </div><!-- /.box-header -->
                
                <div class="box-body">
                  <div class="table-responsive">
                    <table class="table no-margin">
                      <thead>
                        <tr>
                          <th></th>
                          <th>번호</th>
                          <th>강의명</th>
                          <th>강사명</th>
                          <th>강의실</th>
                          <th>강의시간</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                        <td><input type="checkbox"></td>   
                          <td>1.</td>
                          <td><a href="classRoomShow.do">Java basic</a></td>
                          <td>송중기</td>
                          <td>A강의실</td>
                          <td>9:00AM</td>
                        </tr>
                        <tr>
                        <td><input type="checkbox"></td> 
                          <td>2.</td>
                          <td><a href="#">Java 열혈 강의</a></td>
                          <td>유해진</td>
                          <td>B강의실</td>
                          <td>11:00AM</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td> 
                          <td>3.</td>
                          <td><a href="#">Hello Java</a></td>
                       	  <td>차승원</td>
                       	  <td>C강의실</td>
                       	  <td>2:00PM</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td> 
                          <td>4.</td>
                          <td><a href="#">C언어 정복하기</a></td>
                       	  <td>김지원</td>
                       	  <td>D강의실</td>
                       	  <td>4:00PM</td>
                        </tr>
                      </tbody>
                    </table>
                    <div class="box-footer clearfix" align="center">
              
             <ul class="pagination pagination-sm no-margin pull-center">
                    <li><a href="#">&laquo;</a></li>
                    <li><a href="#">&raquo;</a></li>
                  </ul>
                  
                </div><!-- /.box-footer -->
                    </div><!-- container -->
                  </div><!-- /.table-responsive -->
                 </div><!-- /.box --> 
            
 		</section>            
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
</body>
</html>