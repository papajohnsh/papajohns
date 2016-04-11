<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../header.jsp" %>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	
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
              <p>로그인 해주세요...</p>
              <a href="#"><i class="fa fa-circle text-danger"></i> Offline</a>
              </c:if>
              <c:if test="${!empty sid}">
              <p>${sname}님 환영합니다!</p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
              </c:if>
            </div>
          </div>
        </section>
        <!-- /.sidebar -->
      </aside>
	<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#sendBtn').click(function() { connect()});
		$('#wsBtn1').click(function() { sendMessage("red"); })
		$('#wsBtn2').click(function() { sendMessage("blue"); })
		$('#wsBtn3').click(function() { sendMessage("yellow"); })
		$('#dbSend').click(function() { dbSend($("message").val());})
	});
	
	var wsocket;
	
	function connect() {
		wsocket = new WebSocket("ws://192.168.50.89:8080/papajohns/echo-ws");
		wsocket.onopen = onOpen;
		wsocket.onmessage = onMessage;
		wsocket.onclose = onClose;
	}
	
	function onOpen(evt) {
		window.alert('연결되었습니다.');
	}
	
	function onMessage(evt) {
		var data = evt.data;
		tab.style.backgroundColor = data;
	}
	
	function onClose(evt) {
		wsocket.close();
		alert("연결 끊김");
	}
	
	function sendMessage(color){
		//window.alert('확인을 누르면 '+color+' 메세지가 전달됩니다.');
		wsocket.send(color);
	}
	
	function dbSend(message){
		
		
	}
</script>
	<section>
	<article>
	<table style="margin:0px auto; background-color:red;" id="tab" width="200" border="1" cellspacing="0" cellpadding="0">
	<tr>
	<td style="color:black">테스트입니다.</td>
	</tr>
	<tr>
	<td>
	<input type="button" id="wsBtn1" value="빨강">
	<input type="button" id="wsBtn2" value="파랑">
	<input type="button" id="wsBtn3" value="노랑">
	
	
	</td>
	</tr>
	<tr>
	<td>

    <input type="text" id="message">
    <input type="button" id="sendBtn" value="연결" onclick="sendBtn()">
    <input type="button" id="dbSend" value="DB저장">
	</td>
	</tr>
	</table>
	
	</article>
	</section>

	

 	<%@ include file="../footer.jsp" %>
    <%@ include file="../controllSide.jsp" %>

  </body>
</html>
