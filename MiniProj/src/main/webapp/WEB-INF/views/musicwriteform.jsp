<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
h2 {
    text-align: center;
}

table {
    margin: auto;
    width: 450px;
    border:solid;
   border-collapse: collapse;
   border-color: darkgray;
}
td{
border:solid;
border-color: darkgray;
}

.td_left {
    width: 150px;
    background: Cornsilk;
}

.td_right {
    width: 300px;
    background: ivory;
}
.td_end {
    width: 300px;
    background: Moccasin;
}

#commandCell {
    text-align: center;
}
</style>
</head>
<body>

<section id="./musicwriteForm">
<h2>게시판글등록</h2>
<form action="musicwriteform" method="post" enctype="multipart/form-data" name="musicwriteform" >
<table>
<tr>
<td class="td_left">
<label for="board_subject">제목</label>
</td>
<td class="td_right">
<input type="text" id="board_subject" name="title">
</td>
</tr>
<tr>
<td class="td_left">
<label for ="board_content">가사</label>
</td>
<td class="td_right">
<textarea id="board_content" type="text" name="story" cols="40" rows="15"></textarea>
</td>
</tr>
<tr>
<td class="td_left">장르</td>
<td class="td_right"><select id="genre" name="genre" onchange="selectBoxChange(this.value);">
	<option value="Balad">Balad</option>
	<option value="Hip-Hop">Hip-Hop</option>
	<option value="Indie">Indie</option>
	<option value="Pop">Pop</option>
		
</select></td>
</tr>
<tr>
<td class="td_left">사진</td><td class="td_right"><input type="file" name="file"></td>
</tr>

<td class="td_end" colspan="2" center><input type="submit" value="check"></td>
</table>
</form>
</section>
</body>
</html>
