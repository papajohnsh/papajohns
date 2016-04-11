<%@ page language="java" contentType="text/html; charset=UTF-8"
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
              <div class="container" style="width: 900px">
                <div class="box-header with-border" align="center">
                  <h3 class="box-title">본문내용보기</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table class="table table-bordered">
                    <tr>
                      <th>번호</th>
                      <td>${dto.idx}</td>
                      <th>작성자</th>
                      <td>${dto.writer}</td>
                    </tr>
                    <tr>
                      <th>제목</th>
                      <td>${dto.subject}</td>
                      <th>조회수</th>
                      <td><span class="badge bg-red">${dto.readnum}</span></td>
                    </tr>
                    <tr>
                      <td colspan="4">
                      <textarea rows="20" cols="180">${dto.content}</textarea>
                      </td>
                    </tr>
                  </table>
                  <div align="center">
                  <span><a href="faqList.do" class="btn btn-sm btn-warning btn-flat pull-center">목록으로</a></span>
                  </div>
                </div>
              </div><!-- /.box -->
              </c:otherwise>
           </c:choose>
             <%@ include file="../footer.jsp" %>
        <%@ include file="../controllSide.jsp" %>

</body>
</html>