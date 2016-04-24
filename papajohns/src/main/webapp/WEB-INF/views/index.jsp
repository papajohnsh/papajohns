<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/plan/dhtmlxscheduler_serialize.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" href="css/plan/dhtmlxscheduler.css" type="text/css" title="no title" charset="utf-8">
<title>Insert title here</title>

</head>
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

<body class="hold-transition skin-blue sidebar-mini">
<%@ include file="header.jsp" %>
 
  
    <!-- Left side column. contains the logo and sidebar -->

   <!-- Content Wrapper. Contains page content -->
   


    <br>    <!-- Main content -->
     <div>
              <div class="container" style="width: 35%;margin-left:18%; z-index: auto;  margin-top:1%; ">
                <div class="box-header with-border" align="center">
                  <h3 class="box-title">공지사항</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <div class="table-responsive">
                    <table class="table no-margin">
                      <thead>
                        <tr>
                          <th>번호</th>
                          <th>제목</th>
                          <th>작성자</th>
                          <th>조회수</th>
                        </tr>
                      </thead>
                      <tbody>
                     	<c:set var="noticeList" value="${list6}"></c:set>
                   	<c:if test="${empty noticeList}">
                   		<tr>
                   			<td colspan="4" align="center">
                   			 	등록된 게시글이 없습니다.
                   			</td>
                   		</tr>
                   	</c:if>

                   	<c:forEach var="dto" items="${noticeList}">
                     <tr>
                       <td>${dto.idx}</td>
                       <td><a href="noticeContent.do?idx=${dto.idx}">${dto.subject}</a></td>
                       <td>${dto.writer}</td>
                       <td><span class="badge bg-red">${dto.readnum}</span></td>
                     </tr>
                     </c:forEach>
                   </tbody>
               </table>
              
                     <div class="box-footer clearfix" align="center">
             		<ul class="pagination pagination-sm no-margin pull-center">
                    	
                  	</ul>
                  
                </div><!-- /.box-footer -->
                    </div><!-- container -->
                  </div><!-- /.table-responsive -->
                 </div><!-- /.box --> 

   
                 

                   <div class="container" style="width: 35%;margin-left:60%;  margin-top: -315px; ">
                <div class="box-header with-border" align="center">
                  <h3 class="box-title">자유게시판</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <div class="table-responsive">
                    <table class="table no-margin">
                      <thead>
                        <tr>
                          <th>번호</th>
                          <th>제목</th>
                          <th>작성자</th>
                          <th>조회수</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                       <c:set var="freebbsList" value="${list7}"></c:set>
                   	<c:if test="${empty freebbsList}">
                   		<tr>
                   			<td colspan="4" align="center">
                   			 	등록된 게시글이 없습니다.
                   			</td>
                   		</tr>
                   	</c:if>

                   	<c:forEach var="dto" items="${freebbsList}">
                     <tr>
                       <td>${dto.idx}</td>
                       <td><a href="bbsContent.do?idx=${dto.idx}">${dto.subject}</a></td>
                       <td>${dto.writer}</td>
                       <td><span class="badge bg-red">${dto.readnum}</span></td>
                     </tr>
                     </c:forEach>
                   </tbody>
               </table>
               <div align="center">${pageStr2}</div><!-- 페이징 영역 -->
                    </table>
                     <div class="box-footer clearfix" align="center">
             		<ul class="pagination pagination-sm no-margin pull-center">
                    	
                  	</ul>
                  
                </div><!-- /.box-footer -->
                    </div><!-- container -->
                  </div><!-- /.table-responsive -->
                 </div><!-- /.box --> 



              <%-- <div class="box">
>>>>>>> branch 'master' of https://github.com/papajohnsh/papajohns.git
                <div class="box-header with-border" align="center">
                  <h3 class="box-title">내강의실</h3>
                  <br><br><br>
                </div><!-- /.box-header -->
                   </div>
                   </div>
      <!-- Small boxes (Stat box) -->
      <div class="row" style="margin-left: 200px;">
            <div class="col-lg-3 col-xs-6" style="width:300px;height: 140;">
              <!-- small box -->
              <div class="small-box bg-aqua">
 
                <div class="inner">
                  <h3>내수업</h3>
                  <p>ㅋㅋㅋ</p>
                </div>
                <div class="icon">
                  <i class="ion ion-bag"></i>
                </div>
                <a href="#" class="small-box-footer">${sid } <i class="fa fa-arrow-circle-right"></i></a>
              </div>
                <div class="small-box bg-aqua">
              
                <div class="inner">
                  <h3>a</h3>
                  <p>ff</p>
                </div>
                <div class="icon">
                  <i class="ion ion-bag"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6" style="width:300px;height: 140;">
              <!-- small box -->
              <div class="small-box bg-green">
                <div class="inner">
                  <h3>53<sup style="font-size: 20px">%</sup></h3>
                  <p>Bounce Rate</p>
                </div>
                <div class="icon">
                  <i class="ion ion-stats-bars"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6" style="width:300px;height: 140;">
              <!-- small box -->
              <div class="small-box bg-yellow">
                <div class="inner">
                  <h3>44</h3>
                  <p>User Registrations</p>
                </div>
                <div class="icon">
                  <i class="ion ion-person-add"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6" style="width:300px;height: 140;">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3>65</h3>
                  <p>Unique Visitors</p>
                </div>
                <div class="icon">
                  <i class="ion ion-pie-graph"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
          </div><!-- /.row -->
<<<<<<< HEAD
=======
          
          </div> --%>
          
          
          
          
       	 <!-- TABLE: LATEST ORDERS -->


          


      <!-- Small boxes (Stat box) --> <br><br><br>
      <div style="width: 35%;margin-left:18%; float: left; z-index: auto;" >

  
 <div class="box">
             <div class="box-header with-border" >
                  <div  style="height:50px;"  align="center"><h2 class="box-title"><font size="5em;"><b>내가만든 강의</b></font></h2></div>
            
                   

           
                   <c:forEach var="dto" items="${list }"  varStatus="status">

      <!-- Small boxes (Stat box) -->
  
       
            <div class="col-lg-3 col-xs-6"  id="test"  style="width:50%;">
              <!-- small box -->

              <div class="small-box bg-green" style="width:100%; height:50%; background-image: url('img/벽지초.jpg'); ">

 
                <div class="inner" style="padding-bottom: 20%;width:100%;">
                  <h3>  ${dto.subject }</h3>
                  <p>${dto.start_time }~${dto.end_time }</p>
                </div>

                <div class="icon">
                  <i class="ion ion-pie-graph"></i>
                </div>

                <a href="myClassRoom.do?idx=${dto.idx }" class="small-box-footer">${dto.name } <i class="fa fa-arrow-circle-right"></i></a>
               <div class="icon">
                  <i class="ion ion-pie-graph"></i>
                </div>
              </div>
            </div>
			


          </c:forEach>
        <c:if test="${empty list }">
        <div > 	<h2>등록된 강의가 없습니다</h2> </div> 
          	            <div class="col-lg-3 col-xs-6"    >
              <!-- small box -->
              <div class="small-box bg-white" style=" width:100%; height:50%;  ">
 		
                <div class="inner" style="padding-bottom: 20%;">
                   <a href="makeClass.do?idx=${dto.idx }" class="small-box-footer">  <img src="img/더하기.png" style=" width:70%; height:60%; "></a>
                  <div class="icon">
                  <i class="ion ion-pie-graph"></i>
                </div>
                
              </div>
            </div><!-- ./col -->
     
          
          </div>
          </c:if>
          
          
          </div>
          </div>

          
              </div><!-- /.box-header -->
              
         <br> <br> <br> 
         <div style="width: 35%;  margin-top:-53px; float: right; margin-right:10%;z-index: auto;">
         <div class="box">
         
                <div class="box-header with-border" align="center" style="margin-top: 10px;">
                  <h3 class="box-title"><font size="5em;"><b>내수업</b></font></h3>
               <!-- /.box-header -->
                   

                 
        <c:if test="${empty list4 }">
       	<h2>등록된 강의가 없습니다</h2> 
          	            <div class="col-lg-3 col-xs-6"    >
              <!-- small box -->
              <div class="small-box bg-white" style=" width:100%; height:50%;  ">
 		
                <div class="inner" style="padding-bottom: 20%; ">
                   <a href="makeClass.do?idx=${dto.idx }"  style="height:30px;">  <img src="img/더하기.png" style=" width:70%; height:60%; "></a>
                  <div class="icon">
                  <i class="ion ion-pie-graph"></i>
                </div>
                
              </div>
            </div><!-- ./col -->
     
          
          </div>
          </c:if>
      </div>
               <c:forEach var="dto" items="${list4 }"  >

      <!-- Small boxes (Stat box) -->
  
       
                <div class="col-lg-3 col-xs-6"  style="margin-left: 5%; margin-right:-100px; width:50%;" >
              <!-- small box -->

             <div class="small-box bg-green" style="width:80%; height:50%;background-image: url('img/벽지보.jpg'); ">

 
                <div class="inner" style="padding-bottom: 20%;width:100%;">
                  <h3>  ${dto.subject }</h3>
                  <p>${dto.start_time }~${dto.end_time }</p>
                </div>

                <div class="icon">
                  <i class="ion ion-pie-graph"></i>
                </div>

                <a href="classShow.do?idx=${dto.idx }" class="small-box-footer">${dto.name } <i class="fa fa-arrow-circle-right"></i></a>
               <div class="icon">
                  <i class="ion ion-pie-graph"></i>
                </div>
              </div>
            </div>
			


          </c:forEach>
          
          </div>
   </div>
</div><!-- /.content-wrapper -->
    <aside class="main-sidebar">
      <%@ include file="side.jsp" %>

  </body>
</html>