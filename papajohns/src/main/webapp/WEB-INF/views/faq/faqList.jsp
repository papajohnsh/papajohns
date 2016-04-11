<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<%@include file="../header.jsp" %>
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
              <a href="faqList.do">
                <i class="fa fa-circle-o text-red"></i> <span>FAQ</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
            <li>
              <a href="qnaList.do">
                <i class="fa fa-circle-o text-aqua"></i><span>Q & A</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
          </ul>
           <ul class="sidebar-menu"></ul>
        </section>
        <!-- /.sidebar -->
      </aside>

<!-- TABLE: LATEST ORDERS -->

              <div class="container" style="width: 900px">
                <div class="box-header with-border"  align="center">
                  <h3 class="box-title">FAQ</h3>
                  <div class="box-tools">
                    <div class="input-group" style="width: 150px;">
                      <input type="text" name="table_search" class="form-control input-sm pull-right" placeholder="Search">
                      <div class="input-group-btn">
                        <button class="btn btn btn-info"><i class="fa fa-search"></i></button>
                      </div>
                    </div>
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
                      	<c:set var="faqList" value="${list}"></c:set>
                      	<c:if test="${empty faqList}">
                      		<tr>
                      			<td colspan="4" align="center">
                      			 	등록된 게시글이 없습니다.
                      			</td>
                      		</tr>
                      	</c:if>
                      	<c:forEach var="dto" items="${faqList}">
                        <tr>
                          <td>${dto.idx}</td>
                          <td><a href="faqContent.do?idx=${dto.idx}">${dto.subject}</a></td>
                          <td>${dto.writer}</td>
                          <td><span class="badge bg-red">${dto.readnum}</span></td>
                        </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div><!-- /.table-responsive -->

              
                <div class="box-footer clearfix" align="center">
    
                  <a href="faqWriteForm.do" class="btn btn-sm btn-default btn-flat pull-right">글쓰기</a>
             <ul class="pagination pagination-sm no-margin pull-center">
                    <li><a href="#">&laquo;</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">&raquo;</a></li>
                  </ul>
                  
                </div><!-- /.box-footer -->
              </div><!-- /.box -->
            <!-- search form -->
            
            <!-- Comment -->
              <div class="box box-success">
                <div class="box-header">
                  <i class="fa fa-comments-o"></i>
                  <h3 class="box-title">Comment</h3>
                  <div class="box-tools pull-right" data-toggle="tooltip" title="Status">
                    <div class="btn-group" data-toggle="btn-toggle" >
                      <button type="button" class="btn btn-default btn-sm active"><i class="fa fa-square text-green"></i></button>
                      <button type="button" class="btn btn-default btn-sm"><i class="fa fa-square text-red"></i></button>
                    </div>
                  </div>
                </div>
                <div class="box-body chat" id="chat-box">
                  <!-- chat item -->
                  <div class="item">
                    <img src="img/송중기.jpg" alt="user image" class="online">
                    <p class="message">
                      <a href="#" class="name">
                        <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 2:15</small>
                       		송중기
                      </a>
                      	태양의 후예 본방사수!
                    </p>
                  </div><!-- /.item -->
                  <!-- chat item -->
                  <div class="item">
                    <img src="img/유아인.jpg" alt="user image" class="offline">
                    <p class="message">
                      <a href="#" class="name">
                        <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 5:15</small>
                        	유아인
                      </a>
                      	난 이미 본방사수 중~~
                    </p>
                  </div><!-- /.item -->
                  <!-- chat item -->
                  <div class="item">
                    <img src="img/송혜교.jpg" alt="user image" class="offline">
                    <p class="message">
                      <a href="#" class="name">
                        <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 5:30</small>
                        	송혜교
                      </a>
                      	사이트와 무관한 게시글은 올리지 말아주세요~
                    </p>
                  </div><!-- /.item -->
                </div><!-- /.chat -->
                <div class="box-footer">
                  <div class="input-group">
                    <input class="form-control" placeholder="Type message...">
                    <div class="input-group-btn">
                      <button class="btn btn-success"><i class="fa fa-plus"></i></button>
                    </div>
                  </div>
                </div>
              </div><!-- /.box (chat box) -->
		  </div><!-- container -->
       <%@include file="../footer.jsp" %>
       <%@ include file="../controllSide.jsp" %>  
   
</body>
</html>