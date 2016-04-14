<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
     
      
      if(a==1){
    	  document.f.a1.value = a;
      }else if(a==2){
    	  document.f.a2.value = a;
      }else if(a==3){
    	  document.f.a3.value = a;
      }else if(a==4){
    	  document.f.a4.value = a;
      }else if(a==5){
    	  document.f.a5.value = a;
      }else if(a==6){
    	  document.f.a6.value = a;
      }else if(a==7){
    	  document.f.a7.value = a;
      }else if(a==8){
    	  document.f.a8.value = a;
      }else if(a==9){
    	  document.f.a9.value = a;
      }else if(a==10){
    	  document.f.a10.value = a;
      }else if(a==11){
    	  document.f.a11.value = a;
      }else if(a==12){
    	  document.f.a12.value = a;
      }else if(a==13){
    	  document.f.a13.value = a;
      }else if(a==14){
    	  document.f.a14.value = a;
      }else if(a==15){
    	  document.f.a15.value = a;
      }else if(a==16){
    	  document.f.a16.value = a;
      }else if(a==17){
    	  document.f.a17.value = a;
      }else if(a==18){
    	  document.f.a18.value = a;
      }else if(a==19){
    	  document.f.a19.value = a;
      }else if(a==20){
    	  document.f.a20.value = a;
      }else if(a==21){
    	  document.f.a21.value = a;
      }else if(a==22){
    	  document.f.a22.value = a;
      }else if(a==23){
    	  document.f.a23.value = a;
      }else if(a==24){
    	  document.f.a24.value = a;
      }else if(a==25){
    	  document.f.a25.value = a;
      }else if(a==26){
    	  document.f.a26.value = a;
      }else if(a==27){
    	  document.f.a27.value = a;
      }else if(a==28){
    	  document.f.a28.value = a;
      }else if(a==29){
    	  document.f.a29.value = a;
      }else if(a==30){
    	  document.f.a30.value = a;
      }
     
      
      
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
      var x = null;
      
      //Make element draggable
      $("#1").draggable({
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
      $("#2").draggable({
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
      $("#3").draggable({
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
      $("#4").draggable({
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
      $("#5").draggable({
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
      $("#6").draggable({
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
      $("#7").draggable({
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
      $("#8").draggable({
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
      $("#9").draggable({
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
      $("#10").draggable({
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
      $("#11").draggable({
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
      $("#12").draggable({
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
      $("#13").draggable({
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
      $("#14").draggable({
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
      $("#15").draggable({
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
      $("#16").draggable({
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
      $("#17").draggable({
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
      $("#18").draggable({
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
      $("#19").draggable({
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
      $("#20").draggable({
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
      $("#21").draggable({
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
      $("#22").draggable({
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
      $("#23").draggable({
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
      $("#24").draggable({
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
      $("#25").draggable({
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
      $("#26").draggable({
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
      $("#27").draggable({
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
      $("#28").draggable({
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
      $("#29").draggable({
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
      $("#30").draggable({
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

   }//]]>
   $(function() {
	    $(".a").draggable({
	        grid: [20, 1]
	    });
	    $(".a").draggable({
	        grid: [20, 1],
	        helper:"clone"
	    });
	    $(".a").droppable({
	        accept: ".a"
	    });
	});
   
</script>
</head>
<body>
   <div id="wrapper">
<div class="col" id="droppable">
      <div class="col" id="col1">
         <div id="drag-list" class="drag-list">
            <ul>
            <c:forEach var="dto" items="${list }">
               <li><span id="${dto.idx }" class="a" onclick='testfunc(this)'>
                     <img src="${dto.idx }.jpg" width="50px" height="50px"class="drag2" id="myImg" class="drag2"><br>
                     <span id="r">${dto.name }</span>
               </span></li>
               </c:forEach>
             </ul>				
         </div>
      </div>
   </div>
   </div>
   <form name="f" action="designAdd.do">
   
   <input type="hidden" name="reidx" value="${idx }">
   <c:forEach var="dto" items="${list }">
   
      <input type="hidden" name="a${dto.idx}">
       <input type="hidden" name="x${dto.idx}">
      <input type="hidden" name="y${dto.idx}">
     </c:forEach>
      <input type="submit" value="등록">
   </form>
  </body>
</html>