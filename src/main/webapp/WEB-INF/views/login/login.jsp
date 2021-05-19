<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>로그인 화면</title>
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
<link href="/resources/css/login.css" rel="stylesheet" />
</head>
<body>
	<%@ include file="/WEB-INF/views/header/header.jsp"%>
	<header class="masthead">
		<!-- 메인 내용 들어가는 곳 -->
		<form action="/login/loginPost" method="post">

			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-2"></div>
					<div class="col-lg-6 col-md-8 login-box">

						<div class="col-lg-12 login-title">로그인 페이지</div>

						<div class="col-lg-12 login-form">
							<div class="col-lg-12 login-form">
									<div class="form-group">
										<label class="form-control-label">아이디</label> <input
											type="text" class="form-control">
									</div>
									<div class="form-group">
										<label class="form-control-label">패스워드</label> <input
											type="password" class="form-control" i>
									</div>

									<div class="col-lg-12 loginbttm">
										<div class="col-lg-6 login-btm login-text">
											<!-- Error Message -->
										</div>
										<div class="col-lg-6 login-btm login-button">
											<button type="submit" class="btn btn-outline-primary">로그인</button>
										</div>
										<div class="col-lg-6 login-btm login-button">
											<a href="/login/join" type="submit"
												class="btn btn-outline-primary">회원가입</a>
										</div>
									</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</header>
</body>
</html>
