<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script>
	function aaa(){
		f.submit();
	}
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<%@ include file="../header.jsp" %>

<!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="img/강동원.jpg" class="img-circle" style="width: 40px" alt="User Image">
            </div>
            <div class="pull-left info">
              <p>강동원</p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">Menu</li>
            <li>
              <a href="classRoomForm.do">
                <i class="fa fa-home"></i> <span>내강의실</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
            <li>
              <a href="classForm.do">
                <i class="fa fa-files-o"></i><span>내수업</span>
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-right"></i></span>
               </a>
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
      
      <!-- Main content -->
            
              <div class="container">
              
                <div class="box-header with-border" align="center">
                  <h3 class="box-title">새 강의</h3>
                   
                </div><!-- /.box-header -->
                
                <div class="box-body">
                 <form name="f" role="form" action="makeClassAdd.do">
                  <table>
                    <tr>
                      <th>수업기간명</th>
                      <td><input type="text" name="institut" class="form-control"></td>
                      <th>강사명</th>
                      <td><input type="text" name="name" class="form-control"></td>
                    </tr>
                    <tr>
                      <th>강의명</th>
                      <td><input type="text" name="subject" class="form-control"></td>
                      <th>강의시간</th>
                   
                      <!-- <td><input type="text" name="class_time" class="form-control"></td> -->
                    </tr>
                    <tr>
                      <th>강의스케줄</th>
                      <td><input type="text" name="class_date" class="form-control"></td>
                    </tr>
                    <tr>
                      <td colspan="4">
                      <textarea rows="20" cols="180" id="content" name="explanation" class="form-control"></textarea>
                      </td>
                    </tr>
                  </table>
                  <div align="center">	
                  <span><input type="submit" class="btn btn-default" value="등록하기"></span>
                  <span><a href="classForm.do" class="btn btn-sm btn-info btn-flat pull-center">목록으로</a></span>
                   </div>
                  </form>
                  
                   
                
                 
                 
                  
                </div>
                </div><!-- /.box -->
                
             <%@ include file="../footer.jsp" %>
    		<%@ include file="../controllSide.jsp" %>          
 
</body>
</html>