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
		window.alert("${sid}");
		window.alert("${msg}");
		scheduler.config.details_on_dblclick = true
		scheduler.config.api_date="%Y-%m-%d %H:%i";
		scheduler.config.xml_date="%Y-%m-%d %H:%i";
		scheduler.config.prevent_cache = true;
		scheduler.xy.margin_top=30;
		
		
		scheduler.init('scheduler_here',new Date(2015,0,20),"month");
		
		var jso = [{ id:"2" , start_date:"2014-05-24 00:00" , end_date:"2014-06-08 00:00" , text:"French Open"},
		            { id:"3" , start_date:"2014-06-10 00:00" , end_date:"2014-06-13 00:00" , text:"Aegon Championship"},
		            { id:"4" , start_date:"2014-06-21 00:00" , end_date:"2014-07-05 00:00" , text:"Wimbledon"}]
	
		
		scheduler.load("resource/data/data.json","json");
	}
	
	
	function show() {
	}
	
	function save()
	{
		 console.log(scheduler.toJSON());
	}
	
	function log()
	{
		var obj = JSON.parse(scheduler.toJSON());
		window.alert(obj[0].text);
	}
	function download() {

	}
	
</script>

</head>
<body onload="init();">
	<div style='height:20px; padding:5px 10px;'>
		<input type="button" name="download" value="Download" onclick="download()" style="right:500px;" />
		<input type="button" name="show" value="Show" onclick="show()" style="right:400px;" />
		<input type="button" name="save" value="Save" onclick="save()" style="right:300px;" />
		<input type="button" name="log" value="log" onclick="log()" style="right:200px;"/>
	</div>
	<br>

	<div id="scheduler_here" class="dhx_cal_container" style='width:100%; height:100%;'>
		<div class="dhx_cal_navline">
			<div class="dhx_cal_prev_button">&nbsp;</div>
			<div class="dhx_cal_next_button">&nbsp;</div>
			<div class="dhx_cal_today_button"></div>
			<div class="dhx_cal_date"></div>
			<div class="dhx_cal_tab" name="day_tab" style="right:204px;"></div>
			<div class="dhx_cal_tab" name="week_tab" style="right:140px;"></div>
			<div class="dhx_cal_tab" name="month_tab" style="right:76px;"></div>
		</div>
		<div class="dhx_cal_header"></div>
		<div class="dhx_cal_data"></div>		
	</div>
</body>
</html>