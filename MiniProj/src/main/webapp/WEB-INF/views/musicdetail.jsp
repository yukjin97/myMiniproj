<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<h2>자세히</h2>
<table>
<tr>
<td class="td_left">
<label for="board_subject">제목</label>
</td>
<td class="td_right">
<input type="text" id="board_subject" name="title" value="${muswrt.title}" disabled>
</td>
</tr>
<tr>
<td class="td_left">
<label for ="board_content">가사</label>
</td>
<td class="td_right">
<textarea id="board_content" type="text" name="story" cols="40" rows="15" disabled>${muswrt.story}</textarea>
</td>
</tr>
<td class="td_end"><input type="button" value="수정" onclick = "location.href = 'musicmodify?boardnum=${muswrt.boardnum}'"></td>
<td class="td_end"><input type="button" value="삭제" onclick = "location.href = 'musicdelete?boardnum=${muswrt.boardnum}'"></td>
</table>
</section>
</body>
</html>
