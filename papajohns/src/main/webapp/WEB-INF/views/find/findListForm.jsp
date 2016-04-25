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
                  <c:if test="${num==1}"><br>  <br>
                  <form name="f" action="classRoomNameSearch.do">
                   <div style="float: right;"> 수업명<input type="text" name="subject">
                   <input type="hidden" name="num" value="1">
                  <input type="submit" class="btn btn-danger btn-m" value="검색">
                 </div>         
                  
                 <br>  <br>
                  <table class="table">
                  <th>과목:</th>
                  <th>선생님이름:</th>
                  <th>수업기관명</th>
                  <th>수업 날짜</th>
                  <c:forEach var="dto" items="${list }">
                  <tr>
                  <td><a href="classView.do?idx=${dto.idx }">${dto.subject }</a></td>
                  <td>${dto.name }</td>
                  <td>${dto.institut }</td>
                  <td>${dto.end_date }</td>
                  </tr>
                  </c:forEach>
                  </table>
                  </form>
                  </c:if>
                  <c:if test="${num==2}"><br>  <br>
                  <form name="f" action="classRoomNameSearch.do">
                   <div style="float: right;"> 소속기관<input type="text" name="institut">
                   <input type="hidden" name="num" value="2">
                  <input type="submit" class="btn btn-danger btn-m" value="검색">
                 </div>         
                  
                 <br>  <br>
                  <table class="table">
                  <th>과목:</th>
                  <th>선생님이름:</th>
                  <th>수업기관명</th>
                  <th>수업 날짜</th>
                  <c:forEach var="dto" items="${list2 }">
                  <tr>
                  <td><a href="classView.do?idx=${dto.idx }">${dto.subject }</a></td>
                  <td>${dto.name }</td>
                  <td>${dto.institut }</td>
                  <td>${dto.end_date }</td>
                  </tr>
                  </c:forEach>
                  </table>
                  </form>
                  </c:if>
               
                  
                <c:if test="${num==4}"><br>  <br>
                  <form name="f" action="classRoomNameSearch.do">
                   <div style="float: right;"> 선생님이름<input type="text" name="name">
                   <input type="hidden" name="num" value="4">
                  <input type="submit" class="btn btn-danger btn-m" value="검색">
                  <input type="hidden" name="test"></div>         
                  
                 <br>  <br>
                  <table class="table">
                  <th>과목:</th>
                  <th>선생님이름:</th>
                  <th>수업기관명</th>
                  <th>수업 날짜</th>
                  <c:forEach var="dto" items="${list3}">
                  <tr>
                  <td><a href="classView.do?idx=${dto.idx }">${dto.subject }</a></td>
                  <td>${dto.name }</td>
                  <td>${dto.institut }</td>
                  <td>${dto.end_date }</td>
                  </tr>
                  </c:forEach>
                  </table>
                  </form>
                  </c:if>
             <c:if test="${num==5}"><br>  <br>
                  <form name="f" action="classRoomNameSearch.do">
                   <div style="float: right;"> 시작날짜<input type="text" name="start_date">
                   <input type="hidden" name="num" value="5">
                  <input type="submit" class="btn btn-danger btn-m" value="검색">
                  </div>         
                  
                 <br>  <br>
                  <table class="table">
                  <th>과목:</th>
                  <th>선생님이름:</th>
                  <th>수업기관명</th>
                  <th>수업 날짜</th>
                  <c:forEach var="dto" items="${list4 }">
                  <tr>
                  <td><a href="classView.do?idx=${dto.idx }">${dto.subject }</a></td>
                  <td>${dto.name }</td>
                  <td>${dto.institut }</td>
                  <td>${dto.end_date }</td>
                  </tr>
                  </c:forEach>
                  </table>
                  </form>
                  </c:if>
               
                  
                 <c:if test="${num==6}"><br>  <br>
                  <form name="f" action="classRoomNameSearch.do">
                   <div style="float: right;"> 시작시간<input type="text" name="start_time">
                   <input type="hidden" name="num" value="6">
                  <input type="submit" class="btn btn-danger btn-m" value="검색">
                  </div>         
                  
                 <br>  <br>
                  <table class="table">
                  <th>과목:</th>
                  <th>선생님이름:</th>
                  <th>수업기관명</th>
                  <th>수업 날짜</th>
                  <c:forEach var="dto" items="${list5}">
                  <tr>
                  <td><a href="classView.do?idx=${dto.idx }">${dto.subject }</a></td>
                  <td>${dto.name }</td>
                  <td>${dto.institut }</td>
                  <td>${dto.end_date }</td>
                  </tr>
                  </c:forEach>
                  </table>
                  </form>
                  </c:if>
				</div>
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