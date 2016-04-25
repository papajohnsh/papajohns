<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../header.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
		<link rel="stylesheet" href="css/datepicker/bootstrap-material-datetimepicker.css" />
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,500' rel='stylesheet' type='text/css'>
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

		<script type="text/javascript" src="js/datepicker/material.min.js"></script>
		<script type="text/javascript" src="js/datepicker/moment-with-locales.min.js"></script>
		<script type="text/javascript" src="js/datepicker/bootstrap-material-datetimepicker.js"></script>
		<style>
	.btn span.glyphicon {    			
	opacity: 0;				
}
.btn.active span.glyphicon {				
	opacity: 1;				
}
		</style>
</head>
<body class="hold-transition skin-blue sidebar-mini">


<!-- Left side column. contains the logo and sidebar -->
    	<aside class="main-sidebar">

	<%@ include file="../side.jsp" %>
          
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
              <a href="classDesign.do?idx=${sidx }">
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
                 <form name="f" role="form" action="makeClassAdd.do" >
                  <table>
                   <tr>
                      <th>강의명</th>
                      <td colspan="3">
                      <input type="text" name="subject" class="form-control">
                      </td>
                      
                    <!--   <td><input type="text" name="class_time" class="selector form-control"></td> -->
                    </tr>
                    <tr>
                      <th>수업기간명</th>
                      <td><input type="text" name="institut" class="form-control"></td>
                      <th>강사명</th>
                      <td><input type="text" name="name" class="form-control" value="${sname }">
                      <input type="hidden" name="reidx" value="${sidx }">
                      </td>
                    </tr>
                   
                    <tr>
                      <th>강의스케줄</th>
                      <td>
                      <input type="text" name="start_date" id="start_date" class="form-control floating-label" placeholder="시작 날짜">
                      <input type="text" name="end_date"  id="end_date" class="form-control floating-label" placeholder="종료 날짜">
                      </td>
                       <th>강의시간</th>
	                   	<td>
	                   	<input type="text" name="start_time" id="start_time" class="form-control floating-label" placeholder="시작 시간">
	                   	<input type="text" name="end_time" id="end_time" class="form-control floating-label" placeholder="종료 날짜">
	                   	</td>
                      <!-- <td><input type="text" name="class_date" class="form-control"></td> -->
					</tr>
					<tr>
					<th>날짜</th>
		
           <td>
 


	
		
		<div class="btn-group" data-toggle="buttons">
			
			<label class="btn btn-default">
				<input type="checkbox" autocomplete="off" name="day" value="1">월
				<span class="glyphicon glyphicon-ok"></span>
			</label>

			<label class="btn btn-default">
				<input type="checkbox" autocomplete="off" name="day" value="2">화
				<span class="glyphicon glyphicon-ok"></span>
			</label>
			
			<label class="btn btn-default">
				<input type="checkbox" autocomplete="off" name="day" value="3">수
				<span class="glyphicon glyphicon-ok"></span>
			</label>
			
			<label class="btn btn-default">
				<input type="checkbox" autocomplete="off" name="day" value="4">목
				<span class="glyphicon glyphicon-ok"></span>
			</label>
			
			<label class="btn btn-default">
				<input type="checkbox" autocomplete="off" name="day" value="5">금
				<span class="glyphicon glyphicon-ok"></span>
			</label>
			
			<label class="btn btn-default">
				<input type="checkbox" autocomplete="off" name="day" value="6">토
				<span class="glyphicon glyphicon-ok"></span>
			</label>
			
			<label class="btn btn-default">
				<input type="checkbox" autocomplete="off" name="day" value="0">일
				<span class="glyphicon glyphicon-ok"></span>
			</label>			
		
		</div>

	


        </td>
    
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
                	<script type="text/javascript">
		$(document).ready(function()
		{
			$('#start_date').bootstrapMaterialDatePicker
			({
				time: false,
				clearButton: true,
				format: 'YYYY/MM/DD'
			});

			$('#end_date').bootstrapMaterialDatePicker
			({
				time: false,
				clearButton: true,
				format: 'YYYY/MM/DD'
			});
			
			$('#start_time').bootstrapMaterialDatePicker
			({
				date: false,
				shortTime: false,
				format: 'HH:mm'
			});

			$('#end_time').bootstrapMaterialDatePicker
			({
				date: false,
				shortTime: false,
				format: 'HH:mm'
			});
			
			$('#date-format').bootstrapMaterialDatePicker
			({
				format: 'dddd DD MMMM YYYY - HH:mm'
			});
			$('#date-fr').bootstrapMaterialDatePicker
			({
				format: 'DD/MM/YYYY HH:mm',
				lang: 'fr',
				weekStart: 1, 
				cancelText : 'ANNULER',
				nowButton : true,
				switchOnClick : true
			});

			$('#date-end').bootstrapMaterialDatePicker
			({
				weekStart: 0, format: 'DD/MM/YYYY HH:mm'
			});
			$('#date-start').bootstrapMaterialDatePicker
			({
				weekStart: 0, format: 'DD/MM/YYYY HH:mm', shortTime : true
			}).on('change', function(e, date)
			{
				$('#date-end').bootstrapMaterialDatePicker('setMinDate', date);
			});

			$('#min-date').bootstrapMaterialDatePicker({ format : 'DD/MM/YYYY HH:mm', minDate : new Date() });

			$.material.init()
		});
		</script>
		
    		<%@ include file="../controllSide.jsp" %>          
 
</body>
</html>