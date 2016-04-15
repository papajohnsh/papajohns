<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	.dhx_cal_navline input{
		width:80px;
		position:absolute;
		top:1px;
		font-family:Tahoma;
		font-weight:8pt;
	}
</style>
<script type="text/javascript" charset="utf-8">
	function init() {
		scheduler.config.xml_date="%Y-%m-%d %H:%i";
		scheduler.config.prevent_cache = true;
		scheduler.xy.margin_top=30;
		
		scheduler.init('scheduler_here',new Date(2015,0,20),"month");
		scheduler.load("resource/data/data.json","json");
		
	}
	
	function show() {
		alert(scheduler.toJSON());
	}
	
	//파일 만드는 함수--------------------------------------------------
	function save()
	{
	 console.log(scheduler.toJSON());
	}
	
	/*
	function save() {
		var form = document.forms[0];
		form.action = "resource/data/json_writer.php";
		form.elements.data.value = scheduler.toJSON();
		form.submit();
	}
	*/
	function download() {
		var form = document.forms[0];
		form.action = "resource/data/json_download.php";
		form.elements.data.value = scheduler.toJSON();
		form.submit();
	}
</script>

</head>
<body onload="init();">
	<div style='height:20px; padding:5px 10px;'>
		<input type="button" name="download" value="Download" onclick="download()" style="right:500px;" />
		<input type="button" name="show" value="Show" onclick="show()" style="right:400px;" />
		<input type="button" name="save" value="Save" onclick="save()" style="right:300px;" />
	</div>
	<form action="./php/json_writer.php" method="post" target="hidden_frame" accept-charset="utf-8">
		<input type="hidden" name="data" value="" id="data">
	</form>
	<iframe src='about:blank' frameborder="0" style="width:0px; height:0px;" id="hidden_frame" name="hidden_frame"></iframe>
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
		<div class="dhx_cal_header">
		</div>
		<div class="dhx_cal_data">
		</div>		
	</div>
</body>
</html>