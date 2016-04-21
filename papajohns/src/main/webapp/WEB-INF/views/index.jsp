<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<%@ include file="header.jsp" %>
   
    <!-- Left side column. contains the logo and sidebar -->

   <!-- Content Wrapper. Contains page content -->
   
<div><img src="copy.jpg" style="width:100%;  height:300px; margin:0px auto; opacity:0.5" ></div>
        <!-- Main content -->
     
        
                
              </div><!-- /.box -->
          <div class="row" >
            <div class="col-md-12">
              <%-- <div class="box">
                <div class="box-header with-border" align="center">
                  <h3 class="box-title">내강의실</h3>
                  <br><br><br>
                </div><!-- /.box-header -->
                   
      <!-- Small boxes (Stat box) -->
      <div style="margin: 0px auto;">
       
            <div class="col-lg-3 col-xs-6" >
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
            <div class="col-lg-3 col-xs-6" style="width:100px;height: 140;">
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
            <div class="col-lg-3 col-xs-6">
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
            <div class="col-lg-3 col-xs-6">
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
          
          </div> --%>
          
          
          
          
       	 <!-- TABLE: LATEST ORDERS -->

<div class="box">
                <div class="box-header with-border" align="center">
                  <h3 class="box-title">내가만든 강의</h3>
                </div><!-- /.box-header -->
                   

                   <c:forEach var="dto" items="${list }">

      <!-- Small boxes (Stat box) -->
      <div style="margin: 0px auto;">
       
            <div class="col-lg-3 col-xs-6" >
              <!-- small box -->
              <div class="small-box bg-aqua">
 
                <div class="inner">
                  <h3> ${dto.name }</h3>
                  <p>${dto.start_time }~${dto.end_time }</p>
                </div>
                <div class="icon">
                  <i class="ion ion-bag"></i>
                </div>
                <a href="classShow.do?idx=${dto.idx }" class="small-box-footer">${dto.subject } <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->



          </div><!-- /.row -->
          </c:forEach>
          
          </div>
         
          <div class="box">
                <div class="box-header with-border" align="center">
                  <h3 class="box-title">내가 참여한 강의</h3>
                  
                </div><!-- /.box-header -->
                   
                   
                   <c:forEach var="dto" items="${list4 }">

      <!-- Small boxes (Stat box) -->
      <div style="margin: 0px auto;">
       
            <div class="col-lg-3 col-xs-6" >
              <!-- small box -->
              <div class="small-box bg-aqua">
 
                <div class="inner">
                  <h3> ${dto.name }</h3>
                  <p>${dto.start_time }~${dto.end_time }</p>
                </div>
                <div class="icon">
                  <i class="ion ion-bag"></i>
                </div>
                <a href="classShow.do?idx=${dto.idx }" class="small-box-footer">${dto.subject } <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->



          </div><!-- /.row -->
          </c:forEach>
          
          </div>
    
    
   

 
  </body>
</html>
