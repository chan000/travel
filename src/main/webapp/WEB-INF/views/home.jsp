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
<style type="text/css">
.do {
	color: white;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/header/header.jsp"%>
	<header class="masthead">
		<!-- 메인 내용 들어가는 곳 -->

		<div class="container d-flex h-100 align-items-center">
			<div style="position: relative;">
				<div>
					<ul class="seoullist">
						<li class="seoultext"><a class="do" href="city/seoulboard">서울</a> <img
							style="position: absolute; left: 894px; top: -22px;"
							id="seoulmap" src="/resources/assets/img/map/서울.png"></li>
					</ul>
					<ul class="ggglist">
						<li class="ggtext"><a class="do" href="city/ggboard" >경기도</a> <img
							style="position: absolute; left: 791px; top: -105px;"
							 id="ggmap" src="/resources/assets/img/map/경기도.png"></li>
					</ul>

					<ul class="gwlist">
						<li class="gwtext"><a class="do" href="city/gwboard">강원도</a> <img
							style="position: absolute; left: 939px; top: -152px;" id="gwmap"
							src="/resources/assets/img/map/강원도.png"></li>
					</ul>
					<ul class="cclist">
						<li class="cctext"><a class="do" href="city/ccboard">충청도</a> <img
							style="position: absolute; left: 810px; top: 46px;" id="ccmap"
							src="/resources/assets/img/map/충청도.png"></li>
					</ul>
					<ul class="gslist">
						<li class="gstext"><a class="do" href="city/gsboard">경상도</a> <img
							style="position: absolute; left: 993px; top: 7px;" id="gsmap"
							src="/resources/assets/img/map/경상도.png"></li>
					</ul>
					<ul class="jllist">
						<li class="jltext"><a class="do" href="city/jlboard">전라도</a> <img
							style="position: absolute; left: 768px; top: 212px;" id="jlmap"
							src="/resources/assets/img/map/전라도.png"></li>
					</ul>
					<ul class="jejulist">
						<li class="jejutext"><a class="do" href="city/jejuboard">제주도</a> <img
							style="position: absolute; left: 803px; top: 549px;" id="jejumap"
							src="/resources/assets/img/map/제주도.png"></li>
					</ul>
				</div>
			</div>

			<div style="position: relative; left: 500px; height: 950px;">
				<!-- 서울 -->
				<div class="seoul">
					<a href="city/seoulboard"> <!-- 서울 태그  --> <img
						style="position: absolute; left: 300px; top: 240px; z-index: 1;"
						class="seoulmain" src="/resources/assets/img/map/서울메인.png">
					</a> <img style="position: absolute; left: 300px; top: 240px;"
						id="seoulmap" src="/resources/assets/img/map/서울.png">

				</div>
				<!-- 경기도 -->
				<div class="gg">
					<img style="position: absolute; left: 199px; top: 155px;"
						class="ggmain" src="/resources/assets/img/map/경기도메인.png"> <a
						href="city/ggboard"> <!-- 경기 태그  --> <img
						style="position: absolute; left: 199px; top: 155px;" id="ggmap"
						src="/resources/assets/img/map/경기도.png">
					</a>
				</div>
				<!-- 강원도 -->
				<div class="gw">
					<img style="position: absolute; left: 345px; top: 111px;"
						id="gwmain" src="/resources/assets/img/map/강원도메인.png"> <a
						href="city/gwboard"> <!-- 강원 태그  --> <img
						style="position: absolute; left: 345px; top: 109px;" id="gwmap"
						src="/resources/assets/img/map/강원도.png">
					</a>
				</div>
				<!-- 충청도 -->
				<div class="cc">
					<img style="position: absolute; left: 216px; top: 308px;"
						id="ccmain" src="/resources/assets/img/map/충청도메인.png">
					<div id="ccmap"
						style="position: absolute; left: 216px; top: 308px;">
						<a href="city/ccboard"> <!-- 충청 태그  --> <img
							style="border-radius: 7px"
							src="/resources/assets/img/map/충청도.png">
						</a>
					</div>

				</div>
				<!-- 경상도 -->
				<div class="gs">

					<img style="position: absolute; left: 400px; top: 270px;"
						id="gsmain" src="/resources/assets/img/map/경상도메인.png"> <a
						href="city/gsboard"> <!-- 경상 태그  --> <img
						style="position: absolute; left: 401px; top: 269px; height: auto;"
						id="gsmap" src="/resources/assets/img/map/경상도.png">
					</a>
				</div>
				<!-- 전라도 -->
				<div class="jl">

					<img style="position: absolute; left: 175px; top: 473px;"
						id="jlmain" src="/resources/assets/img/map/전라도메인.png"> <a
						href="city/jlboard"> <!-- 전라 태그  --> <img
						style="position: absolute; left: 175px; top: 473px;" id="jlmap"
						src="/resources/assets/img/map/전라도.png">
					</a>
				</div>
				<!-- 제주도 -->
				<div class="jeju">
					<img style="position: absolute; left: 210px; top: 810px;"
						id="mainE" src="/resources/assets/img/map/제주도메인.png"> <a
						href="city/jejuboard"> <!-- 제주 태그  --> <img
						style="position: absolute; left: 210px; top: 810px;" id="jejumap"
						src="/resources/assets/img/map/제주도.png">
					</a>
				</div>
			</div>
		</div>

	</header>
</body>
</html>
