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
 <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-md-12">
              <div class="box">
                <div class="box-header with-border" align="center">
                  <h3 class="box-title">공지사항</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table class="table table-bordered">
                     <thead>
                        <tr>
                          <th>번호</th>
                          <th>제목</th>
                          <th>작성자</th>
                          <th>조회수</th>
                        </tr>
                      </thead>
                      <tfoot>
                      	<tr>
                      		<td>
                      			 <a href="noticeWriteForm.do" class="btn btn-sm btn-info btn-flat pull-right">글쓰기</a>
                      		</td>
                      	</tr>
                      </tfoot>
                    <tbody>
                    <c:set var="noticeList" value="${list}"></c:set>
                    <c:if test="${empty noticeList}">
                    	<tr>
                    		<td colspan="4" align="center">
                    			등록된 공지사항이 없습니다.
                    		</td>
                    	</tr>
                    </c:if>
                    <c:forEach var="dto" items="${noticeList}">
                        <tr>
                          <td>${dto.idx}</td>
                          <td><a href="noticeContent.do?idx=${dto.idx}">${dto.subject}</a></td>
                          <td>${dto.writer}</td>
                          <td><span class="badge bg-blue">${dto.readnum}</span></td>
                        </tr>
                      </c:forEach>  
                      </tbody>
                  </table>
                </div><!-- /.box-body -->
                <div class="box-footer clearfix">
                  <ul class="pagination pagination-sm no-margin pull-right">
                    <li><a href="#">&laquo;</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">&raquo;</a></li>
                  </ul>
                </div>
                </div>
               </div> 
              </div><!-- /.box -->
              
             <%@include file="../footer.jsp" %>
    		<%@ include file="../controllSide.jsp" %>  
</body>
</html>