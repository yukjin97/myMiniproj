<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>MUSIC</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${path}/resource/css/subpage.css" rel="stylesheet" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>

<body>
	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
	<!-- sidebar -->
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

	

	<div class="w3-container"></div>
	<!-- Header-->
	<header class=" py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="text-center text-black">
				<h1 class="display-4 fw-bolder">Movie</h1>
				<p class="lead fw-normal mb-0">Let's watch a movie together</p>
			</div>
		</div>
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<div class="container-fluid">
				<ul class="navbar-nav">
					<input type="button" value="글쓰기"
						onclick="location.href = 'musicwriteform'">
					<li class="nav-item"><a class="nav-link active">Movie
							Genre --</a></li>
					<li class="nav-item"><a class="nav-link" data-target="all"
						id="action-link" href="#">all</a></li>
					<li class="nav-item"><a class="nav-link" data-target="Balad"
						id="action-link" href="#">Balad</a></li>
					<li class="nav-item"><a class="nav-link" data-target="Hip-Hop"
						id="comedy-link" href="#">Hip-Hop</a></li>
					<li class="nav-item"><a class="nav-link" data-target="Indie"
						id="romance-link" href="#">Indie</a></li>
					<li class="nav-item"><a class="nav-link" data-target="Pop"
						id="fantasy-link" href="#">Pop</a></li>
					
				</ul>
	</header>


	<!-- Section-->
	<section class="py-5">

		<div class="container px-4 px-lg-5 mt-5">
			<div
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
<c:forEach items="${muswrt}" var="muswrt">
				<div class="col ${muswrt.genre} mb-5" >
					<div class="card h-100" onclick = "location.href = 'musicdetail?boardnum=${muswrt.boardnum}'">
						<img class="card-img-top" src="${path }/upload/${muswrt.image}" alt="..." />
						<div class="card-body p-4">
							<div class="text-center">
								<h5 class="fw-bolder"> ${muswrt.title }</h5>
							</div>
						</div>
					</div>
					</div>
</c:forEach>
			</div>
		</div>
	</section>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<script>
		function openRightMenu() {
			document.getElementById("rightMenu").style.display = "block";
		}

		function closeRightMenu() {
			document.getElementById("rightMenu").style.display = "none";
		}
	</script>

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
		$(".nav-link").click(function() {
			id = $($(this).data("target")).selector;
			if (id == "Balad") {
				$(".col").css('display', 'none');
				$(".Balad").css('display', 'block');
			} else if (id == "Hip-Hop") {
				$(".col").css('display', 'none');
				$(".Hip-Hop").css('display', 'block');
			} else if (id == "Indie") {
				$(".col").css('display', 'none');
				$(".Indie").css('display', 'block');
			} else if (id == "Pop") {
				$(".col").css('display', 'none');
				$(".Pop").css('display', 'block');
			}  else if (id == "all") {
				$(".col").css('display', 'block');
			}
		})  
/*  		$(".nav-link").click(function() {
			id = $($(this).data("target")).selector;
				$.ajax({
				type:"POST",
				url:"http://localhost:8090/movie",
				dataType:"text",
				async:false,
				data:id,
				success:function(data){
					const element=getElementById(id)
					element.innerHTML = "<div style='color:red'>A</div>";
					alert("suc");
				}
				}) */

		 
		
	</script>
	<script src="${path}/resource/js/btn.js"></script>
</body>

</html>