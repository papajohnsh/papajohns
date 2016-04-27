<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="robots" content="noindex, nofollow">
<meta name="googlebot" content="noindex, nofollow">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="css/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="css/dist/css/skins/_all-skins.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="css/plugins/iCheck/flat/blue.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="css/plugins/morris/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="css/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="css/plugins/datepicker/datepicker3.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="css/plugins/daterangepicker/daterangepicker-bs3.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="css/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<script type="text/javascript" src="js/httpRequest.js"></script>
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
.col drag{
   float: center;
   padding: 5px 5px 5px 5px;
   margin: 5px 5px 5px 5px;
   background: #FFF url("http://threedubmedia.com/inc/img/grid20.gif")
      repeat 0px 0px;
}
#col1 {
   width: 100px;
   height: auto;
   
}
img.drag {
   width: 40px;
   height: 40px;
   position: relative;
}
#droppable {
   height: 700px;
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
   //width: 80px;
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
#img1{
<c:choose>
	    	<c:when test="${x1 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose> 
left:${x1}px;
top:${y1}px;
}
#img2{
 <c:choose>
	    	<c:when test="${x2 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose> 
left:${x2}px;
top:${y2}px;
}
#img3{
 <c:choose>
	    	<c:when test="${x3 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose> 
left:${x3}px;
top:${y3}px;
}
#img4{
 <c:choose>
	    	<c:when test="${x4 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose> 
left:${x4}px;
top:${y4}px;
}
#img5{
 <c:choose>
	    	<c:when test="${x5 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose> 
left:${x5}px;
top:${y5}px;
}
#img6{
  <c:choose>
	    	<c:when test="${x6 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x6}px;
top:${y6}px;
}
#img7{
  <c:choose>
	    	<c:when test="${x7 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x7}px;
top:${y7}px;
}
#img8{
  <c:choose>
	    	<c:when test="${x8 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x8}px;
top:${y8}px;
}
#img9{
  <c:choose>
	    	<c:when test="${x9 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x9}px;
top:${y9}px;
}
#img10{
  <c:choose>
	    	<c:when test="${x10 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x10}px;
top:${y10}px;
}
#img11{
  <c:choose>
	    	<c:when test="${x11 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x11}px;
top:${y11}px;
}
#img12{
  <c:choose>
	    	<c:when test="${x12 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x12}px;
top:${y12}px;
}
#img13{
  <c:choose>
	    	<c:when test="${x13 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x13}px;
top:${y13}px;
}
#img14{
  <c:choose>
	    	<c:when test="${x14 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x14}px;
top:${y14}px;
}
#img15{
  <c:choose>
	    	<c:when test="${x15 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x15}px;
top:${y15}px;
}
#img16{
  <c:choose>
	    	<c:when test="${x16 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x16}px;
top:${y16}px;
}
#img17{
  <c:choose>
	    	<c:when test="${x17 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x17}px;
top:${y17}px;
}
#img18{
  <c:choose>
	    	<c:when test="${x18 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x18}px;
top:${y18}px;
}
#img19{
  <c:choose>
	    	<c:when test="${x19 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x19}px;
top:${y19}px;
}
#img20{
  <c:choose>
	    	<c:when test="${x20 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x20}px;
top:${y20}px;
}
#img21{
  <c:choose>
	    	<c:when test="${x21 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x21}px;
top:${y21}px;
}
#img22{
  <c:choose>
	    	<c:when test="${x22 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x22}px;
top:${y22}px;
}
#img23{
  <c:choose>
	    	<c:when test="${x23 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x23}px;
top:${y23}px;
}
#img24{
  <c:choose>
	    	<c:when test="${x24 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x24}px;
top:${y24}px;
}
#img25{
  <c:choose>
	    	<c:when test="${x25 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x25}px;
top:${y25}px;
}
#img26{
  <c:choose>
	    	<c:when test="${x26 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x26}px;
top:${y26}px;
}
#img27{
  <c:choose>
	    	<c:when test="${x27 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x27}px;
top:${y27}px;
}
#img28{
  <c:choose>
	    	<c:when test="${x28 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x28}px;
top:${y28}px;
}
#img29{
  <c:choose>
	    	<c:when test="${x29 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x29}px;
top:${y29}px;
}
#img30{
  <c:choose>
	    	<c:when test="${x30 eq '-1'}">
	    	position:relative;
	      	</c:when>
	      	<c:otherwise>
	      	position:absolute;
	      	</c:otherwise>
</c:choose>
left:${x30}px;
top:${y30}px;
}
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
</style>

<title>by lesson8</title>

<script type='text/javascript'>
  
   function testfunc(test) {
      var a = document.getElementById(test.getAttribute('id')).getAttribute('id');
      var class_by_id = $('#'+a).attr('class');
 
 	  eval("document.f.a"+a.substring(3)+".value = class_by_id;");     
   }
   
   function handleDragStop1(event, ui) {
	   
	  var offsetXPos = parseInt(ui.offset.left);
      var offsetYPos = parseInt(ui.offset.top);
																				
      //사진크기
      
      document.f.x1.value = offsetXPos;
      document.f.y1.value = offsetYPos;
      
	   
   }
   
   function handleDragStop2(event, ui) {
	   
	   	//좌표
	      var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
	      //사진크기
	      
	      document.f.x2.value = offsetXPos;
	      document.f.y2.value = offsetYPos;
	    
		   
	      
	   }
   function handleDragStop3(event, ui) {
	   
	   //좌표
	      var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
	      //사진크기
	     
	      document.f.x3.value = offsetXPos;
	      document.f.y3.value = offsetYPos;
	    
		   
	   }
   function handleDragStop4(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	     
	      document.f.x4.value = offsetXPos;
	      document.f.y4.value = offsetYPos;
	    
		   
	   }
   function handleDragStop5(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	  
	      document.f.x5.value = offsetXPos;
	      document.f.y5.value = offsetYPos;
	   
		   
	   }
   function handleDragStop6(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	      
	      document.f.x6.value = offsetXPos;
	      document.f.y6.value = offsetYPos;
	 
	   }
   function handleDragStop7(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	     
	      document.f.x7.value = offsetXPos;
	      document.f.y7.value = offsetYPos;
	     
	   }
   function handleDragStop8(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	     
	      document.f.x8.value = offsetXPos;
	      document.f.y8.value = offsetYPos;
	     
	   }
   function handleDragStop9(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	    
	      document.f.x9.value = offsetXPos;
	      document.f.y9.value = offsetYPos;
	 
		   
	   }
   
   function handleDragStop10(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	   
	      document.f.x10.value = offsetXPos;
	      document.f.y10.value = offsetYPos;
	    
		   
	   }
   function handleDragStop11(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	    
	      document.f.x11.value = offsetXPos;
	      document.f.y11.value = offsetYPos;
	      
		   
	   }        
       
   function handleDragStop12(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	      
	      document.f.x12.value = offsetXPos;
	      document.f.y12.value = offsetYPos;
	   
		   
	   } 
   function handleDragStop13(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	     
	      document.f.x13.value = offsetXPos;
	      document.f.y13.value = offsetYPos;
	
		   
	   }
   function handleDragStop14(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	     
	      document.f.x14.value = offsetXPos;
	      document.f.y14.value = offsetYPos;
	     
		   
	   }
   function handleDragStop15(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	     
	      document.f.x15.value = offsetXPos;
	      document.f.y15.value = offsetYPos;
	      
		   
	   }
   function handleDragStop16(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	    
	      document.f.x16.value = offsetXPos;
	      document.f.y16.value = offsetYPos;
	 
		   
	   }
   function handleDragStop17(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	
	      document.f.x17.value = offsetXPos;
	      document.f.y17.value = offsetYPos;
	
		   
	   }
   function handleDragStop18(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	      
	      document.f.x18.value = offsetXPos;
	      document.f.y18.value = offsetYPos;
	
		   
	   }
   function handleDragStop19(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	    
	      document.f.x19.value = offsetXPos;
	      document.f.y19.value = offsetYPos;
	 
	   }
   function handleDragStop20(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	   
	      document.f.x20.value = offsetXPos;
	      document.f.y20.value = offsetYPos;
	    
	   }
   function handleDragStop21(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	     
	      document.f.x21.value = offsetXPos;
	      document.f.y21.value = offsetYPos;
	      
		   
	   }
   function handleDragStop22(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	      
	      document.f.x22.value = offsetXPos;
	      document.f.y22.value = offsetYPos;
	      
	   }
   function handleDragStop23(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	   
	      document.f.x23.value = offsetXPos;
	      document.f.y23.value = offsetYPos;
	     
		   
	   }
   function handleDragStop24(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	 
	      document.f.x24.value = offsetXPos;
	      document.f.y24.value = offsetYPos;
	   
		   
	   }
   function handleDragStop25(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	     
	      document.f.x25.value = offsetXPos;
	      document.f.y25.value = offsetYPos;
	      
	   }
   function handleDragStop26(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	    
	      document.f.x26.value = offsetXPos;
	      document.f.y26.value = offsetYPos;
	     
		   
	   }
   function handleDragStop27(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	      
	      document.f.x27.value = offsetXPos;
	      document.f.y27.value = offsetYPos;
	 
		   
	   }
   function handleDragStop28(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	     
	      document.f.x28.value = offsetXPos;
	      document.f.y28.value = offsetYPos;
	    
		   
	   }
   function handleDragStop29(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	     
	      document.f.x29.value = offsetXPos;
	      document.f.y29.value = offsetYPos;
	      
		   
	   }
   function handleDragStop30(event, ui) {
	   
		  var offsetXPos = parseInt(ui.offset.left);
	      var offsetYPos = parseInt(ui.offset.top);
																					
	      //사진크기
	     
	      document.f.x30.value = offsetXPos;
	      document.f.y30.value = offsetYPos;
	   
		   
	   }
   window.onload = function() {
	   var a = $(this).attr('id');
      var x = null;
   
      //Make element draggable
      $("#img1").draggable({
         helper : 'original',
         stop : handleDragStop1,
         containment: '#droppable',
         drop : function(e, ui) {
            if ($(ui.draggable)[0].id != "") {
               x = ui.helper.remove();
               ui.helper.remove();
               x.draggable({
                  helper : 'original',
                  stop : handleDragStop1,
                  containment: '#droppable',
                  drop : function(event, ui) {
                     $(ui.draggable).remove();
                  }
               });
            }
         }
      });
      $("#img2").draggable({
          helper : 'original',
          stop : handleDragStop2,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop2,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img3").draggable({
          helper : 'original',
          stop : handleDragStop3,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop3,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img4").draggable({
          helper : 'original',
          stop : handleDragStop4,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop4,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img5").draggable({
          helper : 'original',
          stop : handleDragStop5,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop5,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img6").draggable({
          helper : 'original',
          stop : handleDragStop6,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop6,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img7").draggable({
          helper : 'original',
          stop : handleDragStop7,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop7,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img8").draggable({
          helper : 'original',
          stop : handleDragStop8,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop8,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img9").draggable({
          helper : 'original',
          stop : handleDragStop9,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop9,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img10").draggable({
          helper : 'original',
          stop : handleDragStop10,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop10,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img11").draggable({
          helper : 'original',
          stop : handleDragStop11,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop11,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img12").draggable({
          helper : 'original',
          stop : handleDragStop12,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop12,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img13").draggable({
          helper : 'original',
          stop : handleDragStop13,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop13,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img14").draggable({
          helper : 'original',
          stop : handleDragStop14,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop14,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img15").draggable({
          helper : 'original',
          stop : handleDragStop15,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop15,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img16").draggable({
          helper : 'original',
          stop : handleDragStop16,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop16,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img17").draggable({
          helper : 'original',
          stop : handleDragStop17,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop17,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img18").draggable({
          helper : 'original',
          stop : handleDragStop18,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop18,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img19").draggable({
          helper : 'original',
          stop : handleDragStop19,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop19,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img20").draggable({
          helper : 'original',
          stop : handleDragStop20,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop20,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img21").draggable({
          helper : 'original',
          stop : handleDragStop21,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop21,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img22").draggable({
          helper : 'original',
          stop : handleDragStop22,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop22,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img23").draggable({
          helper : 'original',
          stop : handleDragStop23,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop23,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img24").draggable({
          helper : 'original',
          stop : handleDragStop24,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop24,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img25").draggable({
          helper : 'original',
          stop : handleDragStop25,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop25,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img26").draggable({
          helper : 'original',
          stop : handleDragStop26,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop26,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img27").draggable({
          helper : 'original',
          stop : handleDragStop27,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop27,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img28").draggable({
          helper : 'original',
          stop : handleDragStop28,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop28,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img29").draggable({
          helper : 'original',
          stop : handleDragStop29,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop29,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
      $("#img30").draggable({
          helper : 'original',
          stop : handleDragStop30,
          containment: '#droppable',
          drop : function(e, ui) {
             if ($(ui.draggable)[0].id != "") {
            	 
                x = ui.helper.remove();
                ui.helper.remove();
                x.draggable({
                   helper : 'original',
                   stop : handleDragStop30,
                   drop : function(event, ui) {
                      $(ui.draggable).remove();
                   }
                });
             }
          }
       });
   }
   $(function() {
	   
	    $("#img1").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img2").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img3").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img4").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img5").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img6").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img7").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img8").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img9").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img10").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img11").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img12").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img13").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img14").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img15").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img16").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img17").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img18").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img19").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img20").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img21").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img22").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img23").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img24").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img25").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img26").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img27").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img28").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img29").draggable({
	        grid: [20, 1],
	      
	    });
	});
   $(function() {
	   
	    $("#img30").draggable({
	        grid: [20, 1],
	      
	    });
	});
   
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<header class="main-header">
		<!-- Logo -->
		<a href="index.do" class="logo">
			<!-- index로 이동 --> <!-- mini logo for sidebar mini 50x50 pixels --> <span
			class="logo-mini"><b>C</b>RM</span> <!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b>Class</b>Room</span>
		</a>
		<!-- Header Navbar: style can be found in header.less -->
		<nav class="navbar navbar-static-top" role="navigation">
			<!-- Sidebar toggle button-->
			<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
				role="button"> <span class="sr-only">Toggle navigation</span>
			</a>
			<div class="navbar-custom-menu">
				<ul class="nav navbar-nav">

					<!-- Myclass-menu -->
					<li class="myclass-menu"><a href="classRoomForm.do"><span>MyClass</span></a>
					</li>

					<!-- login-menu -->
					<c:if test="${empty sid }">
						<li class="login-menu"><a href="loginForm.do"><span>login</span></a>
						</li>
					</c:if>

					<c:if test="${!empty sid}">
						<li class="login-menu"><a href="logout.do">logout</a></li>
						<li class="Myinfo-menu"><a href="myInfoForm.do"><span>MyInfo</span></a>
						</li>
					</c:if>
					
					<!-- Find-menu -->
					<li class="Find-menu"><a href="findListForm.do"><span>Search</span></a>
					</li>

					<!-- bbs-menu -->
					<li class="bbs-menu"><a href="bbsListForm.do"><span>Bbs</span></a>
					</li>
					<!-- support-menu -->
					<li class="support-menu"><a href="faqList.do"><span>Support</span></a>
					</li>
					<!-- Control Sidebar Toggle Button -->
					<li><a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a></li>
				</ul>
			</div>
		</nav>
	</header>
	
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

           </c:if>
            <div class="pull-left info">
              <c:if test="${empty sid}">
              <p>로그인 해주세요</p>
              <a href="#"><i class="fa fa-circle text-danger"></i> Offline</a>
              </c:if>
            
            </div>
          </div>
        </section>
        <!-- /.sidebar -->
      </aside>	
	
	
<div class="content-wrapper" style="background: white; min-height: 800px;">
 <div class="col frame2" id="droppable" style="width: 1050px; background:rgb(185, 205, 214);">
  <div class="col frame3" id="droppable" style="width:650px; height:650px; float:left;background-image: url('img/lesson.png');background-size:100%;">
  </div>
  <div class="col frame3" id="col1" style="float:left; width: 250px; height:650px; background-image: url('img/less.png');background-size:100%; ">

   
   <div id="drag-list" class="drag-list">
    <table>
    <c:forEach var="dto" items="${list }" varStatus="num">
    <c:choose>
    	<c:when test="${(num.count%3)==1 }">
    	<tr>
    	<td style="width:75px; height:75px;">
    	<div id="img${dto.idx }" class="${dto.id}" onclick='testfunc(this)' style="float:left; margin:5px 5px 5px 5px; text-align:center;">
          <img src="resource/data/${dto.id }/profile.jpg" onerror="this.src='//ssl.gstatic.com/accounts/ui/avatar_2x.png'" width="60px" height="60px" class="drag2 img-circle" id="myImg" class="drag2"><br>
          <span id="r">${dto.name }</span>
         </div>
         </td>
      	</c:when>
    	
    	<c:when test="${(num.count%3)==2 }">
    	<td style="width:75px;  height:75px;">
    	<div id="img${dto.idx }" class="${dto.id}" onclick='testfunc(this)' style="float:left; margin:5px 5px 5px 5px; text-align:center;">
          <img src="resource/data/${dto.id }/profile.jpg" onerror="this.src='//ssl.gstatic.com/accounts/ui/avatar_2x.png'" width="60px" height="60px" class="drag2 img-circle" id="myImg" class="drag2"><br>
          <span id="r">${dto.name }</span>
          </div>
          </td>
    	</c:when>
    	<c:otherwise>
    	<td style="width:75px;  height:75px;">
    	<div id="img${dto.idx }" class="${dto.id}" onclick='testfunc(this)' style="float:left; margin:5px 5px 5px 5px; text-align:center;">
          <img src="resource/data/${dto.id }/profile.jpg" onerror="this.src='//ssl.gstatic.com/accounts/ui/avatar_2x.png'" width="60px" height="60px" class="drag2 img-circle" id="myImg" class="drag2"><br>
          <span id="r">${dto.name }</span>
          </div>
          </td>
         </tr>
    	</c:otherwise>
    </c:choose>
  
    </c:forEach>
    </table>
   </div>
  </div>
</div>



   <form name="f" action="designUpdate.do">
   <input type="hidden" name="reidx" value="${reidx }">
   <c:forEach var="dto" items="${list }">
      <input type="hidden" name="a${dto.idx}">
       <input type="hidden" name="x${dto.idx}">
      <input type="hidden" name="y${dto.idx}">
     </c:forEach>
      <input type="submit" value="등록">
   </form>
  </div>
   

  </body>
</html>