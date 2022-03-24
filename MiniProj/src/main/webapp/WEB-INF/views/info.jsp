<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Bootstrap -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
    integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    
      <link href="${path}/resource/css/logstyles.css" rel="stylesheet"/> 
  
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
    crossorigin="anonymous"></script>
  <title>INFO</title>

  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  
<title>Info</title>
</head>

<body>
 <div class="w3-sidebar w3-bar-block w3-card w3-animate-right" style="display:none;right:0;" id="rightMenu">
        <button onclick="closeRightMenu()" class="w3-bar-item w3-button w3-large">Close &times;</button>
        <a href="index" class="w3-bar-item w3-button">home</a>
        <a href="info" class="w3-bar-item w3-button">info</a>
        <c:choose>
          	<c:when test="${empty id }">
	            <a href="sign-in" class="w3-bar-item w3-button">sign in</a>
          	</c:when>
          	<c:otherwise>
          		<a class="w3-bar-item w3-button" href="logout">sign out</a>
          	</c:otherwise>
          </c:choose>
        <a href="sign-up" class="w3-bar-item w3-button">sign up</a>
    </div>

    <div class="w3-teal">
        <button id="sidebtt" class="w3-button w3-white w3-xlarge w3-right"
            onclick="openRightMenu()">&#9776;</button>
    </div>

    <div class="w3-container">
    </div>


  <section>
  
    <h1 id='title' class="mb-5">Info</h1>
    <div id="image_container"><img class="img-fluid" src="${Path}/resource/image/infobear.jpg" alt="..." /></div>
    <div id="form_container" class="p-4">
      <div class="h-100 p-5">
        <!-- <form method="POST" id="loginForm" action="/auth/signUp">  db없음-->
        <form id="loginForm" action="/info" method="post">
          <label for="Email" class="form-label">ID</label>
          <input type="text" class="form-control mb-3" id="id" name="id" placeholder="${mem.id}" disabled>

          <label for="Name" class="form-label">Name</label>
          <input type="text" class="form-control mb-3" id="name" name="name" placeholder="${mem.name}" disabled>
          <button class="btn btn-primary w-100 mb-3" onclick="btnActive()" type="button">edit</button>
          <div id="chkpw" style="display: none;">
          	<input id="password" type="password" class="form-control mb-3" name="password" placeholder="가존">
            <input id="chkpwd" type="password" class="form-control mb-3" name="chkpwd" placeholder="Input your Password">
            <input id="chkbtn" class="btn btn-secondary w-100 mb-3" onclick="chkbtn()" type="submit" value="save">
          </div>
        </form>
      </div>
    </div>
  </section>
</body>

<script>

  function btnActive() {
    if (document.getElementById('chkpw').style.display != "block") {
      document.getElementById('chkpw').style.display = "block";
    } else if (document.getElementById('chkpw').style.display = "block") {
      document.getElementById('chkpw').style.display = "none";
    }
  }

  function openRightMenu() {
    document.getElementById("rightMenu").style.display = "block";
  }

  function closeRightMenu() {
    document.getElementById("rightMenu").style.display = "none";
  }

  

  
  $('#save').on("click", function () {
    $("#password").attr("disabled", true);
    $("#name").attr("disabled", true);
  });
</script>

</html>