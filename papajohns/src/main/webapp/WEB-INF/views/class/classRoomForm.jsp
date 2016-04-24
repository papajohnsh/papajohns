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

	<%@ include file="../side.jsp" %>
          
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

 <!-- Content Wrapper. Contains page content -->
   <div class="content-wrapper" style="background-color: #ffffff">

     <!-- Content Header (Page header) -->
       <div class="row">
       <div class="col-xs-2"></div>
         <div class="col-xs-8">
           <div class="box">
             <div class="box-header" align="center">
               <h3 class="box-title"><span class="glyphicons glyphicons-notes-2">공지사항</span></h3>
               <div class="box-tools">
                 <div class="input-group" style="width: 150px;">
                 
                 </div>
               </div>

             </div><!-- /.box-header -->
             <div class="box-body table-responsive no-padding">
               <table class="table table-hover">
                <thead>
                     <tr>
                       <th><span class="glyphicons glyphicons-list-numbered">번호</span></th>
                       <th><span class="glyphicons glyphicons-list">제목</span></th>
                       <th><span class="glyphicons glyphicons-user">작성자</span></th>
                       <th><span class="glyphicons glyphicons-mouse-middle-click">조회수</span></th>
                     </tr>
                   </thead>
                 <tbody align="center">
                   	<c:set var="noticeList" value="${list}"></c:set>
                   	<c:if test="${empty noticeList}">
                   		<tr>
                   			<td colspan="4" align="center">
                   			 	등록된 게시글이 없습니다.
                   			</td>
                   		</tr>
                   	</c:if>

                   	<c:forEach var="dto" items="${noticeList}">
                     <tr>
                       <td>${dto.idx}</td>
                       <td><a href="noticeContent.do?idx=${dto.idx}">${dto.subject}</a></td>
                       <td>${dto.writer}</td>
                       <td><span class="badge bg-red">${dto.readnum}</span></td>
                     </tr>
                     </c:forEach>
                   </tbody>
               </table>
               <div align="center">${pageStr}</div><!-- 페이징 영역 -->
				<br>
				<div align="center">
					<form name="search" action="noticeFind.do" method="post">
					<select name="fkey">
                 		<option value="writer">작성자</option>
                 		<option value="subject">제목</option>     		
                 	</select>
                 	<input type="text" name="fvalue" required="required" width="30%" placeholder="Search">
      				<input type="submit" class="btn btn-sm btn-success" value="검색">
					</form>
				</div>
               <div class="box-footer clearfix" align="center">
				
               <a href="noticeWriteForm.do" class="btn btn-sm btn-info btn-flat pull-right">글쓰기</a>
          
             </div><!-- /.box-body -->
           </div><!-- /.box -->
           <div class="col-xs-2"></div>
         </div>
       </div>

</div>  
   
   <!-- TABLE: LATEST ORDERS -->
   			<div class="row">
       		<div class="col-xs-2"></div>
         	<div class="col-xs-8">
                <div class="box-header with-border" align="center">
                  <h3 class="box-title">내 강의실</h3>
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
                 <div class="col-xs-2"></div>
			</div>
 		</div>            
        <%@ include file="../footer.jsp" %>
        <%@ include file="../controllSide.jsp" %>
     
</body>
</html>