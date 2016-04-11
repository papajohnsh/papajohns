<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

#img1{
position: fixed; 
left:${x1}px;
top:${y1}px;
}
#img2{
position: fixed; 
left:${x2}px;
top:${y2}px;
}
#img3{
position: fixed; 
left:${x3}px;
top:${y3}px;
}
#img4{
position: fixed; 
left:${x4}px;
top:${y4}px;
}
#img5{
position: fixed; 
left:${x5}px;
top:${y5}px;
}
#img6{
position: fixed; 
left:${x6}px;
top:${y6}px;
}
#img7{
position: fixed; 
left:${x7}px;
top:${y7}px;
}
#img8{
position: fixed; 
left:${x8}px;
top:${y8}px;
}
#img9{
position: fixed; 
left:${x9}px;
top:${y9}px;
}
#img10{
position: fixed; 
left:${x10}px;
top:${y10}px;
}
#img11{
position: fixed; 
left:${x11}px;
top:${y11}px;
}
#img12{
position: fixed; 
left:${x12}px;
top:${y12}px;
}
#img13{
position: fixed; 
left:${x13}px;
top:${y13}px;
}
#img14{
position: fixed; 
left:${x14}px;
top:${y14}px;
}
#img15{
position: fixed; 
left:${x15}px;
top:${y15}px;
}
#img16{
position: fixed; 
left:${x16}px;
top:${y16}px;
}
#img17{
position: fixed; 
left:${x17}px;
top:${y17}px;
}
#img18{
position: fixed; 
left:${x18}px;
top:${y18}px;
}
#img19{
position: fixed; 
left:${x19}px;
top:${y19}px;
}
#img20{
position: fixed; 
left:${x20}px;
top:${y20}px;
}
#img21{
position: fixed; 
left:${x21}px;
top:${y21}px;
}
#img22{
position: fixed; 
left:${x22}px;
top:${y22}px;
}
#img23{
position: fixed; 
left:${x23}px;
top:${y23}px;
}
#img24{
position: fixed; 
left:${x24}px;
top:${y24}px;
}
#img25{
position: fixed; 
left:${x25}px;
top:${y25}px;
}
#img26{
position: fixed; 
left:${x26}px;
top:${y26}px;
}
#img27{
position: fixed; 
left:${x27}px;
top:${y27}px;
}
#img28{
position: fixed; 
left:${x28}px;
top:${y28}px;
}
#img29{
position: fixed; 
left:${x29}px;
top:${y29}px;
}
#img30{
position: fixed; 
left:${x30}px;
top:${y30}px;
}
</style>
</head>
<body>
<c:forEach var="dto" items="${list }">
<img src="${dto.idx }.jpg" id="img${dto.idx }" width="50px" height="50px">
</c:forEach> 
</body>
</html>