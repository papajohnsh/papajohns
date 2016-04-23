<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.net.InetAddress" %>
<%
// 요거이 그겁니다. 서버 ip
InetAddress inet= InetAddress.getLocalHost();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 Tell the browser to be responsive to screen width
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    Bootstrap 3.3.5 -->

<script type="text/javascript" src="js/httpRequest.js"></script>
<script>

</script>
<style>
.frame2{
border-color:#000000 #4785F8;
border-image:none;
border-radius: 0 0 0 0;
-moz-border-radius:0 0 0 0;
-webkit-border-radius:0 0 0 0;
border-style:solid;
border-width:15px;

}

.frame3{
border-color:rgb(62, 255, 157) #4785F8;
border-image:none;
border-radius: 50px 0 50px 0;
-moz-border-radius:50px 0 50px 0;
-webkit-border-radius:50px 0 50px 0;
border-style:solid;
border-width:5px;
}
.col {
   float: center;
   padding: 5px 5px 5px 5px;
   margin: 5px 5px 5px 5px;
}


#img1{
 
left:${x1}px;
top:${y1}px;
}
#img2{
 
left:${x2}px;
top:${y2}px;
}
#img3{
 
left:${x3}px;
top:${y3}px;
}
#img4{
 
left:${x4}px;
top:${y4}px;
}
#img5{
 
left:${x5}px;
top:${y5}px;
}
#img6{
 
left:${x6}px;
top:${y6}px;
}
#img7{
 
left:${x7}px;
top:${y7}px;
}
#img8{
 
left:${x8}px;
top:${y8}px;
}
#img9{
 
left:${x9}px;
top:${y9}px;
}
#img10{
 
left:${x10}px;
top:${y10}px;
}
#img11{
 
left:${x11}px;
top:${y11}px;
}
#img12{
 
left:${x12}px;
top:${y12}px;
}
#img13{
 
left:${x13}px;
top:${y13}px;
}
#img14{
 
left:${x14}px;
top:${y14}px;
}
#img15{
 
left:${x15}px;
top:${y15}px;
}
#img16{
 
left:${x16}px;
top:${y16}px;
}
#img17{
 
left:${x17}px;
top:${y17}px;
}
#img18{
 
left:${x18}px;
top:${y18}px;
}
#img19{
 
left:${x19}px;
top:${y19}px;
}
#img20{
 
left:${x20}px;
top:${y20}px;
}
#img21{
 
left:${x21}px;
top:${y21}px;
}
#img22{
 
left:${x22}px;
top:${y22}px;
}
#img23{
 
left:${x23}px;
top:${y23}px;
}
#img24{
 
left:${x24}px;
top:${y24}px;
}
#img25{
 
left:${x25}px;
top:${y25}px;
}
#img26{
 
left:${x26}px;
top:${y26}px;
}
#img27{
 
left:${x27}px;
top:${y27}px;
}
#img28{
 
left:${x28}px;
top:${y28}px;
}
#img29{
 
left:${x29}px;
top:${y29}px;
}
#img30{
 
left:${x30}px;
top:${y30}px;
}
</style>
</head>
<body class="hold-transition skin-blue sidebar-mini">

<%@ include file="../header.jsp" %>

<!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
         <div class="user-panel">

				<div class="pull-left image" style="height: 100px; width: 80px;">

					<img src="resource/data/${sid }/profile.jpg"
						onerror="this.src='//ssl.gstatic.com/accounts/ui/avatar_2x.png'"
						class="img-circle"
						style="max-width: 80px; height: 80px; width: 80px; margin-top: 10px;">
				</div>
				<div style="margin-left: 85px; margin-top: -5px;">
					<a href="myInfoForm.do"><font size="2">내정보</a>&nbsp;
					&nbsp; <a href="logout.do"><font size="2">로그아웃</a>
				</div>
				<br>
				<br>
				<div style="margin-top: -20px;">
					<font size="2" color="white">&nbsp;&nbsp;&nbsp;${snickname}</font>
				</div>
				<div style="margin-left: 120; margin-top: 8px;">
					&nbsp;&nbsp;&nbsp;<a href="#"><i
						class="fa fa-circle text-success"></i><font color="white">&nbsp;&nbsp;Online</font>
					</a>
				</div>

			</div>
          
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">Menu</li>
            <li>
              <a href="classRoomForm.do">
                <i class="fa fa-home"></i><span>내강의실</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
              <li class="active treeview">
              <a href="#">
                <i class="fa fa-files-o"></i> <span>내수업</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a data-toggle="modal" data-target="#myModal2" href="studentList.do?idx=${param.idx }" ><i class="fa fa-circle-o" ></i> 학생리스트</a></li>
                <li><a data-toggle="modal" href="lessonSchedule.do" data-target="#myModal7" ><i class="fa fa-circle-o"></i> 강의스케줄</a></li>
                <li><a data-toggle="modal" href="quizTestForm.do?idx=${param.idx }" data-target="#myModal2" data-backdrop="static"><i class="fa fa-circle-o"></i> 문제 만들기</a></li>
                <li><a data-toggle="modal" href="quizList.do?idx=${param.idx }" data-target="#myModal3"><i class="fa fa-circle-o"></i> 문제 수정하기</a></li>
                <li><a data-toggle="modal" href="quizResult.do?idx=${param.idx }" data-target="#myModal4"><i class="fa fa-circle-o"></i>쪽지시험결과</a></li>
<!--                 <li><a data-toggle="modal" href="quizTestLoad.do" data-target="#myModal5" data-backdrop="static"><i class="fa fa-circle-o"></i>쪽지시험보기</a></li> -->
                <li><a href="showMessage.do"><i class="fa fa-circle-o"></i> 메세지 보기</a></li>
                <li><a href="classBbs.do"><i class="fa fa-circle-o"></i> 수업게시판</a></li>
                <li><a href="saveClass.do"><i class="fa fa-circle-o"></i> 수업내용 저장</a></li>
                <li><a data-toggle="modal" href="fileUpload.do" data-target="#myModal6"><i class="fa fa-circle-o"></i>파일업로드</a></li>
                
              </ul>
            </li>
            <li>
              <a href="makeClass.do">
                <i class="fa fa-book"></i><span>수업 만들기</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
            <li>
              <a href="classDesign.do">
                <i class="fa fa-edit"></i><span>강의실 디자인</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
          </ul>
           <ul class="sidebar-menu"></ul>
        </section>
        <!-- /.sidebar -->
      </aside>
<div class="content-wrapper" style="background: white; min-height: 800px;">
 <div class="col frame2" id="droppable" style="width: 1050px; height: 700px; background:rgb(185, 205, 214); padding: 5px 5px 5px 5px;" >
  <div class="col frame3" id="droppable" style="width:650px; height:650px; float:left; padding:5px 5px 5px 5px; background:#E6A323;">
  <c:forEach var="dto" items="${list }">
				<div id="img${dto.idx }" style="position: absolute; text-align: center;">
				<img src="resource/data/${dto.id }/profile.jpg" onerror="this.src='//ssl.gstatic.com/accounts/ui/avatar_2x.png'" width="60px" height="60px" class="drag2 img-circle" id="myImg" class="drag2"><br>
          		<div id="r">${dto.id }</div>
          		<div id="loginCheck_${dto.id }">
          		<c:if test="${teacher == sid }">
          		<span class="fa fa-circle text-danger"><font color="white">&nbsp;&nbsp;OffLine</font></span>
          		</c:if>
				</div>
				</div>
 </c:forEach>
  </div>
			
 </div>
</div>

<%--         <iframe style="float: right;" src="http://192.33.33.26:8081?student=${sname }&classRoom=자바" width="550" height="550">
 		</iframe> --%>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog">
    <div class="modal-content">
    </div>
  </div>
</div>
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog">
    <div class="modal-content">
    </div>
  </div>
</div>

<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog">
    <div class="modal-content">
    </div>
  </div>
</div>

<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog">
    <div class="modal-content">
    </div>
  </div>
</div>

<div class="modal fade bs-example-modal-lg" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      
    </div>
  </div>
</div>
<div class="modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog">
    <div class="modal-content">
    </div>
  </div>
</div>
<div class="modal fade" id="myModal7" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog">
    <div class="modal-content">
    </div>
  </div>
</div>

<script type="text/javascript">
<%
	
	String idx = request.getParameter("idx");
%>
	$(document).ready(function() {
		$('#sendBtn').click(function() { connect()});
		$('#wsBtn1').click(function() { sendMessage("red"); })
		$('#wsBtn2').click(function() { sendMessage("blue"); })
		$('#wsBtn3').click(function() { sendMessage("yellow"); })
		$('#dbSend').click(function() { dbSend($("message").val());})
	});
	
	var wsocket;
	
	function connect() {
		var url1="ws://<%=inet.getHostAddress()%>:<%=request.getServerPort()%>/papajohns/echo-ws?idx=${idx}&teacher=${teacher}&user=${sid}";
		var url="ws://localhost:<%=request.getServerPort()%>/papajohns/echo-ws?idx=${idx}&teacher=${teacher}&user=${sid}";
		console.log(url1);
		wsocket = new WebSocket(url);
		wsocket.onopen = onOpen;
		wsocket.onmessage = onMessage;
		wsocket.onclose = onClose;
	}
	
	function onOpen(evt) {
		wsocket.send("loginOn:${sid}");
		if("${sid}"=="${teacher}"){
			wsocket.send("loginCheck");
		}
		//window.alert('연결되었습니다.');
	}
	
	function onMessage(evt) {
		var data = evt.data;
		if(!(data.indexOf("loginOn")==-1)){
			var onId = data.substring(8);
			console.log(onId);
			loginOn(onId);
		}
		else if(data=="loginCheck"){
			wsocket.send("loginOn:${sid}");
		}
	}
	
	function loginOn(onId){
		document.getElementById("loginCheck_"+onId).innerHTML='<span class="fa fa-circle text-success"><font color="white">&nbsp;&nbsp;OnLine</font></span>';
	}
	
	
	function onClose(evt) {
		wsocket.close();
		alert("연결 끊김");
	}
	
	function sendMessage(color){
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

    <script src="css/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    jQuery UI 1.11.4
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    Resolve conflict in jQuery UI tooltip with Bootstrap tooltip
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    Bootstrap 3.3.5
    <script src="css/bootstrap/js/bootstrap.min.js"></script>
    Morris.js charts
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="css/plugins/morris/morris.min.js"></script>
    Sparkline
    <script src="css/plugins/sparkline/jquery.sparkline.min.js"></script>
    jvectormap
    <script src="css/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="css/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    jQuery Knob Chart
    <script src="css/plugins/knob/jquery.knob.js"></script>
    daterangepicker
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
    <script src="css/plugins/daterangepicker/daterangepicker.js"></script>
    datepicker
    <script src="css/plugins/datepicker/bootstrap-datepicker.js"></script>
    Bootstrap WYSIHTML5 -->
 

</body>
</html>