<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스케줄러</title>
<script src="js/plan/dhtmlxscheduler.js" type="text/javascript" charset="utf-8"></script>
<script src="js/plan/dhtmlxscheduler_serialize.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" href="css/plan/dhtmlxscheduler.css" type="text/css" title="no title" charset="utf-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style type="text/css" media="screen">
		html, body{
		margin:0px;
		padding:0px;
		height:100%;
		overflow:hidden;
	}	
</style>
<script type="text/javascript" charset="utf-8">
	function init() {
		scheduler.config.details_on_dblclick = true
		scheduler.config.api_date="%Y-%m-%d %H:%i";
		scheduler.config.xml_date="%Y-%m-%d %H:%i";
		scheduler.config.prevent_cache = true;
		scheduler.xy.margin_top=30;
		
		var now=new Date();
		var y=now.getFullYear();
		var m=now.getMonth();
		var d=now.getDate();
		scheduler.init('scheduler_here',now,"month");
		

		
		scheduler.load("resource/data/${sid}/data.json","json");
	}
	
	
	function show() {
		console.log(scheduler.toJSON());
	}
	
	
	function log()
	{
		var obj = JSON.parse(scheduler.toJSON());
		window.alert(obj[0].text);
	}
	
	function download(){
		/*
		//var day = '';
		var day_arr = new Array("3","4","5");
		window.alert(day_arr);
		//window.alert(day);
		for (var i=0; i<day_arr.length; i++){
			console.log(day_arr[i]);
		} 
		*/
		var day="3,4,5";
		var day_arr = day.split(",");
		for (var i=0; i<day_arr.length; i++){
			console.log(day_arr[i]);
		} 
	}
	
	
	function save(){ 
		document.json.json.value=scheduler.toJSON();
		document.json.submit(); 
	} 
</script>

</head>
<body onload="init();">
	<div style='height:20px; padding:0 10px;'>
		
		
		
	</div>
	<!-- 
	<input type="button" name="download" value="Download" onclick="download()" style="right:500px;">
			<input type="button" name="show" value="Show" onclick="show()" style="right:400px;">
			<input type="button" name="log" value="log" onclick="log()" style="right:300px;">
	<br>
	 -->
	<div id="scheduler_here" class="dhx_cal_container" style='width:100%; height:100%;'>
		<div class="dhx_cal_navline">
			<div class="dhx_cal_prev_button">&nbsp;</div>
			<div class="dhx_cal_next_button">&nbsp;</div>
	        <div class="dhx_cal_today_button"></div>
			<div class="container">
			<form name="json" method="post" action="planSave.do">
			<input type="button" value="저장하기" style="position:absolute;left: 205px; height: 35px; width: 80px;"  onclick="save()" class="btn btn-default">
			<input type="hidden" name="json">
			</form>
			</div>
			<div class="dhx_cal_date"></div>
			<div><input type="button" value="임시" style="position:relative; right:205px;"></div>
			<div class="dhx_cal_tab" name="day_tab" style="right:204px;"></div>
			<div class="dhx_cal_tab" name="week_tab" style="right:140px;"></div>
			<div class="dhx_cal_tab" name="month_tab" style="right:76px;"></div>
		</div>
		<div class="dhx_cal_header"></div>
		<div class="dhx_cal_data"></div>		
	</div>
</body>
</html>