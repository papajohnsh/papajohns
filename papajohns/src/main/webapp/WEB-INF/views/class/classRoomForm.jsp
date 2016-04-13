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
<%@ include file="../header.jsp" %>

<!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
          <c:if test="${empty sid}">
          <div class="pull-left image">
          	<img id="profile-img" class="img-circle" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
          </div>
          </c:if>
          <c:if test="${!empty sid}">
            <div class="pull-left image">
              <img src="img/강동원.jpg" class="img-circle" style="width: 40px" alt="User Image">
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
              <a href="classDesign.do?idx=${sidx }">
                <i class="fa fa-edit"></i><span>강의실 디자인</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
             <li>
              <a href="classBbsList.do">
                <i class="fa fa-edit"></i><span>수업게시판</span>
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
                          
                          <th>강의시간</th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="dto" items="${list }">
                        <tr>
                        <td><input type="checkbox"></td>   
                          <td>1.</td>
                          <td><a href="myClassRoom.do?idx=${dto.idx }">Java basic</a></td>
                          <td>${dto.idx }</td>
                          
                          
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