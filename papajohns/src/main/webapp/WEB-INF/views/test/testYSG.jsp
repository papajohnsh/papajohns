<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="robots" content="noindex, nofollow">
<meta name="googlebot" content="noindex, nofollow">
<script type="text/javascript" src="/js/lib/dummy.js"></script>
<link rel="stylesheet" type="text/css" href="/css/result-light.css">
<link rel="stylesheet" type="text/css"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<style type="text/css">
.col {
	float: center;
	padding: 5px 5px 5px 5px;
	margin: 5px 5px 5px 5px;
	background: #FFF url("http://threedubmedia.com/inc/img/grid20.gif")
		repeat 0px 0px;
}

#col1 {
	width: 200px;
	height: auto;
	border: 1px solid black;
}

img.drag {
	width: 40px;
	height: 40px;
	position: relative;
}

#droppable {
	width: 600px;
	height: 600px;
	border: 1px solid black;
}

.right {
	float: right;
}

.left {
	float: left;
}

.clear {
	clear: both;
}

ul li {
	list-style: none;
}

.drag-list img {
	width: 80px;
	vertical-align: middle;
	cursor: move;
}

.drag-list ul {
	margin: 0px;
	padding: 0px;
}

.drag-list li {
	margin-bottom: 5px;
}

.remove-drag-hover {
	background-color: #ED4949 !important;
}

.xicon {
	margin-top: 4px;
	position: absolute;
	margin-left: -17px;
	color: #FFF;
	font: message-box;
	text-decoration: none;
}

.xicon:hover {
	background-color: #fff;
	color: #000;
	width: 13px;
	height: 20px;
	text-align: center;
}

.tip {
	font-size: 12px;
	clear: both;
}
</style>

<title>by lesson8</title>







<script type='text/javascript'>


	//<![CDATA[
	function testfunc(test) {
		var a = document.getElementById(test.getAttribute('id')).getAttribute(
				'id');
		document.f.a.value = a;
	}

	function handleDragStop(event, ui) {

		//좌표
		var ox = parseInt(ui.offset.left);
		var oy = parseInt(ui.offset.top);

		//사진크기
		var x = document.getElementById("myImg").height;
		var y = document.getElementById("myImg").width;
		document.f.x.value = x;
		document.f.y.value = y;
		document.f.ox.value = ox;
		document.f.oy.value = oy;

	}
	
	
		         
		 
		   

	window.onload = function() {
		var x = null;
		 $('.drag2').resizable();
		//Make element draggable
		$(".drag").draggable({
			helper : 'original',

			stop : handleDragStop,

			drop : function(e, ui) {
				if ($(ui.draggable)[0].id != "") {

					x = ui.helper.remove();
					ui.helper.remove();
					x.draggable({
						helper : 'original',

						stop : handleDragStop,

						drop : function(event, ui) {
							$(ui.draggable).remove();

						}
					});

				}
			}

		});

	}//]]>
</script>


</head>

<body>
	<div id="wrapper">

		<div class="col" id="droppable">
		
			<div id="drag-list" class="drag-list">
				<ul>
					<li id="drag1" class="drag" onclick='testfunc(this)'>
							<img src="123.png" width="50px" height="50px"class="drag2" id="myImg">
					<span>Item 1</span></li>
					<li><span id="drag2" class="drag" onclick='testfunc(this)'>
							<img src="http://placehold.it/80x80/E68500/fff&text=2"
							width="100%" height="100%" class="drag2"/>
					</span><span>Item 2</span></li>
					<li><span id="drag3" class="drag" onclick='testfunc(this)'>
							<img src="http://placehold.it/80x80/00810C/fff&text=3"
							width="100%" height="100%" class="drag2"/>
					</span><span>Item 3</span></li>

				</ul>
			</div>
		</div>
	</div>
	<form name="f">
		<input type="text" name="x"> <input type="text" name="y">
		<input type="text" name="a">
		<input type="text" name="ox">
		<input type="text" name="oy">
	</form>


</body>

</html>