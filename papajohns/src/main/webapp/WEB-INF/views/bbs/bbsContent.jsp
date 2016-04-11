​<%@ page language="java" contentType="text/html; charset=UTF-8"

  pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>

<body class="hold-transition skin-blue sidebar-mini">
<%@ include file="../header.jsp" %>


<!-- Main content -->
   <c:set var="dto" value="${list}"></c:set>
   <c:choose>
   <c:when test="${empty dto}">

    <tr>
     <td colspan="5" align="center">
      	잘못된 접근입니다.
     </td>
    </tr>
   </c:when>
   <c:otherwise> 

     <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">

        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            <strong>본문내용 보기</strong>
          </h1>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h4 class="box-title"></h4>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example2" class="table table-bordered">
                  <tr>
                		<td>번호</td>
                		<td>${dto.idx}</td>
                		<td>작성자</td>
                		<td>${dto.writer}</td>
                	</tr>
                	<tr>
                		<td>제목</td>
                		<td>${dto.subject}</td>
                		<td>조회수</td>
                		<td><span class="badge bg-red">${dto.readnum}</span></td>
                	</tr>
					<tr>
						<td align="center" colspan="4">
						${dto.content }
						</td>
					</tr>
                  </table>
                  <div align="center">
                  <span><a href="bbsReWriteAdd.do?subject=${dto.subject}&ref=${dto.ref}&lev=${dto.lev}&sunbun=${dto.sunbun}" class="btn btn-sm btn-danger btn-flat pull-center">답변글쓰기</a></span>
                  <span><a href="bbsListForm.do" class="btn btn-sm btn-warning btn-flat pull-center">목록으로</a></span>
                  </div>

                </div><!-- /.box-body -->
              </div><!-- /.box -->
              </div>
              </div>
              </section>
              </div>
              </c:otherwise>
           </c:choose>
           
             <!-- Chat box -->
             <div class="content-wrapper">
              <div class="box box-success">
                <div class="box-header">
                  <i class="fa fa-comments-o"></i>
                  <h3 class="box-title">Chat</h3>
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
                        	${dto.writer}
                      </a>
                      		${dto.content}
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
                      	이미 하고 있다~~
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
                      	해당 사이트와 무관한 댓글은 삼가해주세요~
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
             </div> 

            <%@ include file="../footer.jsp" %>
             

</body>
</html>
