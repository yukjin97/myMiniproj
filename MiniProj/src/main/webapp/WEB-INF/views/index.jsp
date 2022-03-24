<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
        crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous">
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous">
    </script>

 
    <link href="${path}/resource/css/styles.css" rel="stylesheet"/> 
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
</head>
<body>
    <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
    <!-- sidebar -->
    <div class="w3-sidebar w3-bar-block w3-card w3-animate-right" style="display:none;right:0;" id="rightMenu">
        <button onclick="closeRightMenu()" class="w3-bar-item w3-button w3-large">Close &times;</button>
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

    <!-- center -->
    <section class="content-section" id="WOOK">
        <div class="title_text_box">
            <div class="intext">
                <h3 class="cont_text">Wook's Blog
                </h3>
            </div>
            <div class="row gx-0">
                <div class="col-lg-6">
                    <a class="portfolio-item" href="movie">
                        <div class="caption" style="border-top-left-radius: 7% 10%;">
                            <div class="caption-content">
                                <div class="h2">MOVIE</div>
                            </div>
                        </div>
                        <img class="img-fluid" src="${path}/resource/image/video.webp" style="border-top-left-radius: 7% 10%;" alt="..." />
                    </a>
                </div>
                <div class="col-lg-6">
                    <a class="portfolio-item" href="music">
                        <div class="caption" style="border-top-right-radius: 7% 10%;">
                            <div class="caption-content">
                                <div class="h2">MUSIC</div>
                            </div>
                        </div>
                        <img class="img-fluid" src="${path}/resource/image/music.webp" style="border-top-right-radius: 7% 10%;"
                            alt="..." />
                    </a>
                </div>
                <div class="col-lg-6">
                    <a class="portfolio-item" href="error">
                        <div class="caption" style="border-bottom-left-radius: 7% 10%;">
                            <div class="caption-content">
                                <div class="h2">SHOP</div>
                            </div>
                        </div>
                        <img class="img-fluid" src="${path}/resource/image/shop.jpeg" style="border-bottom-left-radius: 7% 10%;" " alt="
                            ..." />
                    </a>
                </div>
                <div class="col-lg-6">
                    <a class="portfolio-item" href="error">
                        <div class="caption" style="border-bottom-right-radius: 7% 10%;">
                            <div class="caption-content">
                                <div class="h2">STUDY</div>
                            </div>
                        </div>
                        <img class="img-fluid" src="${path}/resource/image/study2.jpg" style="border-bottom-right-radius: 7% 10%;"
                            alt="..." />
                    </a>
                </div>
            </div>
        </div>
    </section>
    <!-- <div>
            <div>
                    <div class="info_text">juy7416@naver.com</div>
        </div> -->

</body>
<script>
    function openRightMenu() {
        document.getElementById("rightMenu").style.display = "block";
    }

    function closeRightMenu() {
        document.getElementById("rightMenu").style.display = "none";
    }
</script>
</html>