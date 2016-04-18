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
     <img src="resource/data/${sid }/profile.jpg" onerror="this.src='//ssl.gstatic.com/accounts/ui/avatar_2x.png'" height="300px" width="300px" class="img-circle" >
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
           	<p>${snickname}</p>
           	<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
           	</c:if>
         </div>
       </div>
          
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">Menu</li>
              <li>
	          <a href="faqList.do">
	             <i class="fa fa-circle-o text-red"></i><span>FAQ</span>
	             <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
	           </a>
	         </li>
	         <li>
	           <a href="qnaList.do">
	            <i class="fa fa-circle-o text-aqua"></i><span>Q&A</span>
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
       		<form name="faqWrite" action="faqWrite.do" method="post">
             <div class="box">
                <div class="box-header" align="center">
                  <h3 class="box-title">FAQ 글쓰기</h3>
                  <!-- tools box -->
                  <div class="pull-right box-tools">
                    <button class="btn btn-default btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                    <button class="btn btn-default btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                  </div><!-- /. tools -->
                </div><!-- /.box-header -->
                 <table class="table table-bordered">
                 
                  <tr>
					<th>작성자</th>
        			<td><input type="text" name="writer" readonly="readonly" value="${snickname}"></td>
                  </tr>
        			<tr>
        				<th>제목</th>
        				<td><input type="text" name="subject" placeholder="subject"></td>
        			</tr>
 				</table>
                <div class="box-body pad">
                  <fieldset>
                    <textarea name="content" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                  </fieldset>
                 </div> 
                  <!-- writeAdd button -->
                  <div>
                	<input type="submit" class="btn btn-primary pull-right" value="글올리기">
				  </div>
				  </form>
				  <br>
                  <!-- 파일올리기 영역 -->
				<form name="fileupload2" action="fileUpload2.do" method="post" enctype="multipart/form-data">
					<div align="center">
						<input type="file" name="upload"><br>
						<input type="submit" value="파일올리기">
					</div>
					<a href="bbsFileList.do" class="btn btn-sm btn-default btn-flat pull-right">파일리스트</a>
				</form>
                </div>
       		</div><!-- container --> 
       
      <%@include file="../footer.jsp" %>
    <%@ include file="../controllSide.jsp" %>  
</body>
</html>