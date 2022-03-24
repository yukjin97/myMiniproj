<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#text{
font-size: 200px;
color: red;
text-align: center;
margin-top:10px;
}
#img{
text-align: center;
margin-top:100px
}
</style>
</head>
<body>
<div id="img"><img src="${path }/resource/image/warning-g5c8c3cfbb_1280.png" alt="My Image" width="300px" height="300px">
</div>
<div id="text">점검중...</div>
</body>
</html>