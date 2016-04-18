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
    function show(){
       location.reload();
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
.filebox input[type="file"] {  /* 파일 필드 숨기기 */
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0;
}

</style>
<body class="hold-transition skin-blue sidebar-mini">
<%@ include file="../header.jsp" %>
     
     <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
 
        <section class="sidebar">
         
          <!-- Sidebar user panel -->
        
          <div class="user-panel">
           
            <div class="pull-left image" style="height:100px; width: 100px; font:white;" >
        
             <img src="resource/data/${sid }/profile.jpg" onerror="this.src='//ssl.gstatic.com/accounts/ui/avatar_2x.png'" class="img-circle" 
                id="userImage" style="max-width: 80px; height: 100px; width: 100px;">
         </div>
         <div style=" margin-left:30px;  height: 50px,width: 50px; " >
      <p style="font: red"><a href="myInfoForm.do" ><font color="white" size="3em">내정보</font></a>&nbsp; &nbsp; <a href="logout.do"><font color="white" size="2em">로그아웃</font>ㄹ</a></p>
     <br><span style="font: white"><a href="#"><i class="fa fa-circle text-success"></i>&nbsp; &nbsp; ${snickname}</a> </span>
         
            </div>
            
          </div>
          
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">Menu</li>
            <li>
              <a href="myInfoForm.do">
                <i class="fa fa-circle-o text-red"></i> <span>내정보</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
            <li>
              <a href="myInfoPlan.do">
                <i class="fa fa-circle-o text-aqua"></i><span>스케줄</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
          </ul>
           <ul class="sidebar-menu"></ul>
        </section>
        <!-- /.sidebar -->
      </aside>   
      <!-- general form elements disabled -->
    
             <<!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
              <div class="box box-warning">
                <div class="box-header with-border">
                  <h3 class="box-title">내정보수정</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
           
                    <!-- text input -->
                     
                          
    <div class="action" style=text-align:center >
     <img src="resource/data/${sid }/profile.jpg" onerror="this.src='//ssl.gstatic.com/accounts/ui/avatar_2x.png'" height="200px" width="200px" class="img-circle" >
    <form name="fileupload1" action="fileupload1.do" method="post" enctype="multipart/form-data">
   <input type="hidden" name="id" value=${sid }>
<div class="filebox">
  <label for="ex_file">사진변경</label>
  <input type="file" id="ex_file" name="upload"> 
</div>
        
        
  <input type="submit" value="등록하기"onclick="show()" class="btn btn-default pull-center">
             
     </form>
     
   
</div>
       <form role="form" name="infoMod" action="myInfo.do">
                    <div class="form-group">
                      <label for="name">이름</label>
                      <input type="text" class="form-control" name="name" value="${sname}" readonly="readonly">
                    </div>
                    <div class="form-group">
                      <label for="nickname">닉네임</label>
                      <input type="text" class="form-control" name="nickname" value="${snickname}">
                    </div>
                    <div class="form-group">
                      <label for="pwd">비밀번호</label>
                      <input type="password" name="pwd" class="form-control" value="${spwd}">
                    </div>
                    <div class="form-group">
                      <label for="email">이메일</label>
                      <input type="text" name="email" class="form-control" value="${semail}">
                    </div>
                    <div class="form-group">
                      <label for="phonenumber">핸드폰번호</label>
                      <input type="text" name="phonenumber" class="form-control" value="${sphone}">
                    </div>
                   
                    <!-- checkbox -->
                     <div class="form-group">
                     <label>정보수신</label>
                      <div class="checkbox">
                       <span>
                        <label>
                          <input type="checkbox">
                           mailing
                        </label>
                        </span>
                        <span>
                        <label>
                          <input type="checkbox">
                           SNS
                        </label>
                        </span>
                      </div>
                    </div>
                   <div align="center">
                   <input type="submit" class="btn btn-success pull-center" value="수정하기">
                  </div>
                  <div>
                     <input type="button" class="btn btn-default pull-right" value="탈퇴하기" onclick="location.href='memberOutForm.do'">
                  </div>
                
         </form>
        </div>
       </div>
 </div><!-- container -->


</body>
</html>