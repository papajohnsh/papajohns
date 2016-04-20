<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<script>
	function show() {
		location.reload();
	}
//사진미리보기	
	
	function previewImage(targetObj, View_area) {
	
	
	var preview = document.getElementById(View_area); //div id
	var ua = window.navigator.userAgent;
	document.getElementById('qwe').style.display='none';
  //ie일때(IE8 이하에서만 작동)
	if (ua.indexOf("MSIE") > -1) {
		targetObj.select();
		try {
			var src = document.selection.createRange().text; // get file full path(IE9, IE10에서 사용 불가)
			var ie_preview_error = document.getElementById("ie_preview_error_" + View_area);


			if (ie_preview_error) {
				preview.removeChild(ie_preview_error); //error가 있으면 delete
			}

			var img = document.getElementById(View_area); //이미지가 뿌려질 곳

			//이미지 로딩, sizingMethod는 div에 맞춰서 사이즈를 자동조절 하는 역할
		
		} catch (e) {
			if (!document.getElementById("ie_preview_error_" + View_area)) {
				var info = document.createElement("<p>");
				info.id = "ie_preview_error_" + View_area;
				info.innerHTML = e.name;
				preview.insertBefore(info, null);
			}
		}
  //ie가 아닐때(크롬, 사파리, FF)
	} else {
		var files = targetObj.files;
		for ( var i = 0; i < files.length; i++) {
			var file = files[i];
			var imageType = /image.*/; //이미지 파일일경우만.. 뿌려준다.
			if (!file.type.match(imageType))
				continue;
			var prevImg = document.getElementById("prev_" + View_area); //이전에 미리보기가 있다면 삭제
			if (prevImg) {
				preview.removeChild(prevImg);
			}
			
			var img = document.createElement("img"); 
			img.id = "prev_" + View_area;
			img.classList.add("img-circle");
			img.file = file;
			img.style.width = '200px'; 
			img.style.height = '200px';
			
			preview.appendChild(img);
			if (window.FileReader) { // FireFox, Chrome, Opera 확인.
				var reader = new FileReader();
				reader.onloadend = (function(aImg) {
					return function(e) {
						aImg.src = e.target.result;
					};
				})(img);
				reader.readAsDataURL(file);
			} else { // safari is not supported FileReader
				//alert('not supported FileReader');
				if (!document.getElementById("sfr_preview_error_"
						+ View_area)) {
					var info = document.createElement("p");
					info.id = "sfr_preview_error_" + View_area;
					info.innerHTML = "not supported FileReader";
					preview.insertBefore(info, null);
				}
			}
		}
	}
}
	
	
</script>

<style>
.filebox label {
	display: inline-block;
	padding: .5em .75em;
	color: #999;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #fdfdfd;
	cursor: pointer;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
}

.filebox input[type="file"] { /* 파일 필드 숨기기 */
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}
</style>
<body class="hold-transition skin-blue sidebar-mini">
	<%@ include file="../header.jsp"%>

	<!-- Left side column. contains the logo and sidebar -->
	<aside class="main-sidebar">

	<%@ include file="../side.jsp" %>

			<!-- sidebar menu: : style can be found in sidebar.less -->
			<ul class="sidebar-menu">
				<li class="header">Menu</li>
				<li><a href="myInfoForm.do"> <i
						class="fa fa-circle-o text-red"></i> <span>내정보</span> <span
						class="pull-right"><i
							class="glyphicon glyphicon-chevron-right"></i></span>
				</a></li>
				<li><a href="myInfoPlan.do"> <i
						class="fa fa-circle-o text-aqua"></i><span>스케줄</span> <span
						class="pull-right"><i
							class="glyphicon glyphicon-chevron-right"></i></span>
				</a></li>
					<li><a href="memberOutForm.do"> <i
						class="fa fa-circle-o text-yellow"></i><span>회원탈퇴</span> <span
						class="pull-right"><i
							class="glyphicon glyphicon-chevron-right"></i></span>
				</a></li>
			</ul>
			<ul class="sidebar-menu"></ul>
		</section>
		<!-- /.sidebar -->
	</aside>
	<!-- general form elements disabled -->

	<
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<div class="box box-warning">
			<div class="box-header with-border"  align="center">
				<h3 class="box-title"> 정 보 수 정</h3>
			</div>
			<!-- /.box-header -->
			<div class="box-body">

				<!-- text input -->


						<form role="form" name="infoMod" action="myInfo.do" action="fileupload1.do" method="post"
						enctype="multipart/form-data" >
				<div class="action" style="text-align: center" >
				<div id='View_area' class="img-circle" ></div>
					<img src="resource/data/${sid }/profile.jpg"
						onerror="this.src='//ssl.gstatic.com/accounts/ui/avatar_2x.png'"
						height="200px" width="200px" class="img-circle" id="qwe" >
						<div class="filebox">
					
						<input type="hidden" name="id" value=${sid }>
						
						
							<label for="ex_file">사진변경</label> <input type="file" id="ex_file"
								name="upload" onchange="previewImage(this,'View_area')">
						
</div>	

					


				</div>
				<br>
				<div align="center" >
				
					<div class="form-group"  >
						<label for="name" style="margin-right: 450px;">이름</label> <input type="text"
							class="form-control" name="name" value="${sname}"
							readonly="readonly" style="width:500px;">
					</div>
					<div class="form-group">
						<label for="nickname" style="margin-right: 450px;">닉네임</label> <input type="text"
							class="form-control" name="nickname" value="${snickname}" style="width:500px;">
					</div>
					<div class="form-group">
						<label for="pwd" style="margin-right: 450px;">비밀번호</label> <input type="password" name="pwd"
							class="form-control" value="${spwd}" style="width:500px;">
					</div>
					<div class="form-group">
						<label for="email" style="margin-right: 450px;">이메일</label> <input type="text" name="email"
							class="form-control" value="${semail}" style="width:500px;">
					</div>
					<div class="form-group">
						<label for="phonenumber" style="margin-right: 430px;">핸드폰번호</label> <input type="text"
							name="phonenumber" class="form-control" value="${sphone}" style="width:500px;">
					</div>
						<input type="submit" class="btn btn-success pull-center" value="수정하기">
			</div>
			</div>
		</div>

		</form>
	</div>
	
	<!-- container -->


</body>
</html>