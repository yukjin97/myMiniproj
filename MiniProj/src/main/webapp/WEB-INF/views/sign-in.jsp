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
    <title>Sign In</title>

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
        <h1 id='title' class="mb-5">Sign <span style="color:rgba(10, 13, 219, 0.842);">In</span></h1>
        <div id="image_container"><img class="img-fluid" src="${path}/resource/image/teddy1.jpeg" alt="..." /></div>
        <div id="form_container" class="p-4">
            <div class="h-100 p-5" style="border:1px solid none; ">
                <!-- <h3 class="p-5 mr-2 fs-1" style="position:absolute; top:0; right:0;text-align: right; color:gray;">
                        <b style="cursor: pointer">X</b>
                </h3> -->
                <!-- <h1 class="mb-5">Sign In</h1> -->

                <!-- <form method="POST" id="loginForm" action="/auth/signIn">  db없음-->
                <form id="loginForm" action="sign-in" method="post">
                    <label for="Input Email" class="form-label">Input ID</label>
                    <input type="text" class="form-control mb-3" id="id" name="id" placeholder="Input your ID">

                    <label for="inputPW" class="form-label">Input PW</label>
                    <input type="password" class="form-control mb-3" id="password" name="password"
                        placeholder="Input your password">


                    <input class="btn btn-primary w-100 mb-3" type="submit"  value="Sign In">
                    <button id="signup" type="button" class="btn btn-outline-success mb-3"
                        style="float:right; width:100%">Sign Up</button>
                </form>
            </div>
        </div>
    </section>

</body>
<script>
$(function () {
    $('#loginForm').submit(function(){
        let id= $('#id').val();
        let password = $('#password').val();
        if(!id){
            alert("아이디를 입력하세요.");
            $('#id').focus();
            return false;
        }else if(!password){
            alert("비밀번호를 입력하세요.");
            $('#password').focus();
            return false;
        }
    })
})
    $(document).ready(function () {
        $("#signup").click(function () { $(location).attr("href", "sign-up") })
    })

    function openRightMenu() {
        document.getElementById("rightMenu").style.display = "block";
    }

    function closeRightMenu() {
        document.getElementById("rightMenu").style.display = "none";
    }
</script>

</html>