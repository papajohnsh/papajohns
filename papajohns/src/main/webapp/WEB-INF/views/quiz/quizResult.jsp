<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:if test="${empty list }">
         등록된 문제가없습니다.
      </c:if>

   <div class="example2">
	<table style="width: 600px;height: 300px; margin:0;auto;" >
	<tr style="background-color:#3c8dbc; color: white; text-align: center;">
		<th style="text-align: center;">문제</th>
		<th style="text-align: center;">출제할 항목</th>
	</tr>
      <c:forEach var="dto" items="${result }">
		<tr>
           <td style="width:400px;"> <div class="panel panel-default">
               
               <div class="panel-heading" data-acc-link="${dto.idx }">${dto.question }</div>
               
               <div class="panel-body" data-acc-content="${dto.idx }">
               	<input type="hidden" id="idx${dto.idx }" name="idx" value="${dto.idx }">
				<textarea rows="4" cols="50" id="question${dto.idx }" name="question" class="textarea wysihtml5-editor" value="${dto.question }"></textarea><br />	
				<input type="radio" name="Answer" id="Answer${dto.idx }" value="1" />1.<input type="text" id="example1${dto.idx }" value="${dto.example1}" class="form-control" name="example1" size="20"/><br />
				<input type="radio"name="Answer" id="Answer${dto.idx }" value="2" />2.<input type="text" id="example2${dto.idx }" value="${dto.example2}" class="form-control" name="example2" /><br />
				<input type="radio" name="Answer" id="Answer${dto.idx }"  value="3"/>3.<input type="text" id="example3${dto.idx }" value="${dto.example3}" class="form-control" name="example3" /><br />
				<input type="radio"name="Answer" id="Answer${dto.idx }" value="4"/>4.<input type="text" id="example4${dto.idx }" value="${dto.example4}" class="form-control" name="example4" /><br />
				<input type="button" class="update" id="${dto.idx }" value="수정하기"><input type="button" value="삭제">
   			   </div>
   			</div>
   			</td>
   			<td style="vertical-align: top; text-align: center;">
 				<input style="width:40px;height: 40px" class="chkBox" id="${dto.idx }" type="checkbox" >
   			</td>
		</tr>
  	 </c:forEach>
  	</table>
   </div>