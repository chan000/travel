<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>다님길</title>
<link rel="icon" type="image/x-icon"
	href="/resources/assets/img/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Varela+Round"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/resources/css/styles.css" rel="stylesheet" />
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" style="font-size: 30px" href="/">다님길</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="/board/toursite">관광</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="/board/culturesite">문화</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="/board/foodsite">음식</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="/board/freeboard">자유게시판</a></li>
					<c:if test="${empty login }">
						<li class="nav-item"><a class="nav-link js-scroll-trigger"
							href="/user/login">로그인</a></li>
					</c:if>
					<c:if test="${!empty login }">
						<li class="nav-item"><a class="nav-link js-scroll-trigger"
							href="/user/myinfo">내 정보</a></li>
						<li class="nav-item"><a class="nav-link js-scroll-trigger"
							href="/user/logout">로그아웃</a></li>
					</c:if>

				</ul>
			</div>

		</div>

	</nav>

</body>
</html>