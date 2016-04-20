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

	<%@ include file="../side.jsp" %>
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">Menu</li>
            <li>
              <a href="classRoomForm.do">
                <i class="fa fa-home"></i><span>내강의실</span>
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
              <a href="classDesign.do?idx=${sidx }">
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
                  <h3 class="box-title">내가 만든 강의</h3>
                  <div class="box-tools pull-right">
                    <button type="button" class="btn btn-defalut btn-circle" onclick="location.href='makeClass.do';"><i class="glyphicon glyphicon-plus"></i></button>
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
                          
                          <th>강의시간</th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="dto" items="${list }">
                        <tr>
                        <td><input type="checkbox"></td>   
                          <td>${dto.idx }</td>
                          <td><a href="myClassRoom.do?idx=${dto.idx }">${dto.subject }</a></td>
                          <td>${dto.name }</td>
                          <td>${dto.start_time }~${dto.end_time }</td>
                          
                          
                        </tr>
                     </c:forEach>
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
                  <h3 class="box-title">내가 참여한 강의</h3>
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
                          <th></th>
                          <th>번호</th>
                          <th>강의명</th>
                          <th>강사명</th>
                          
                          <th>강의시간</th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="dto" items="${list4 }">
                        <tr>
                        <td><input type="checkbox"></td>   
                          <td>${dto.idx }</td>
                          <td><a href="classShow.do?idx=${dto.idx }">${dto.subject }</a></td>
                          <td>${dto.name }</td>
                          <td>${dto.start_time }~${dto.end_time }</td>
                          
                          
                        </tr>
                     </c:forEach>
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

</body>
</html>