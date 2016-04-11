<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
           
           <!-- login button -->
       	
	       	<c:if test="${empty sid }">
				<span><input type="button" class="btn btn-primary pull-right" value="login" onclick="location.href='loginForm.do'"></span>
			</c:if>
			<c:if test="${!empty sid}">
				<span><input type="button" class="btn btn-default pull-right" value="logout" onclick="location.href='logout.do'"></span>	
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

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">

        <!-- Content Header (Page header) -->
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header" align="center">
                  <h3 class="box-title">검색 결과</h3>
                  <div class="box-tools">
                    <div class="input-group" style="width: 150px;">      
                    </div>
                  </div>

                </div><!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                  <table class="table table-hover">
                   <thead>
                        <tr>
                          <th>번호</th>
                          <th>제목</th>
                          <th>작성자</th>
                          <th>조회수</th>
                        </tr>
                      </thead>

                    <tbody>
                      	<c:set var="freebbsFind" value="${list}"></c:set>
                      	<c:if test="${empty freebbsFind}">
                      		<tr>
                      			<td colspan="4" align="center">
                      			 	해당 게시글이 없습니다.
                      			</td>
                      		</tr>
                      	</c:if>

                      	<c:forEach var="dto" items="${freebbsFind}">
                        <tr>
                          <td>${dto.idx}</td>
				          <td>${dto.subject}</td>
                          <td>${dto.writer}</td>
					     <td><span class="badge bg-yellow">${dto.readnum}</span></td>	
                        </tr>
                        
                        </c:forEach>
                        
                      </tbody>
                  </table>

                  <div class="box-footer clearfix" align="center">

	             <ul class="pagination pagination-sm no-margin pull-center">
                    <li><a href="#">&laquo;</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">&raquo;</a></li>
                  </ul>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>
		</div>
		</div>
      </div><!-- /.content-wrapper -->
   
       <%@include file="../footer.jsp" %>
       <%@ include file="../controllSide.jsp" %>  
</body>
</html>