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
<title>음식 상세보기</title>
<link rel="icon" type="image/x-icon"
	href="/resources/assets/img/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Varela+Round"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/resources/css/styles.css" rel="stylesheet" />
<link href="/resources/css/slide.css" rel="stylesheet" />
</head>
<body>
	<%@ include file="/WEB-INF/views/header/header.jsp"%>
	<header class="masthead">
		<!-- 메인 내용 들어가는 곳 -->

		<div class="col-sm-6 aligned center"
			style="position: absolute; margin-left: 25%; margin-top: 5%;">
			<!-- 상단 -->
			<div class="titleType1">
				<div class="area_tag">

					<div class="" style="text-align: center;">
						<h1 id="fbtitle"></h1>
					</div>
					<div id="fbaddr1" style="text-align: center">
						<h5 style="text-align: center;" id="fbaddr1"></h5>
						<br>
					</div>

				</div>

				<div class="slider">
					<input type="radio" name="slide" id="slide1" checked> <input
						type="radio" name="slide" id="slide2"> <input type="radio"
						name="slide" id="slide3"> <input type="radio" name="slide"
						id="slide4">
					<ul id="imgholder" class="imgs">
						<li id="fbimg1"></li>
						<li id="fbimg2"></li>
						<li id="fbimg3"></li>
					</ul>
					<div class="bullets">
						<label for="slide1">&nbsp;</label> <label for="slide2">&nbsp;</label>
						<label for="slide3">&nbsp;</label>
					</div>
				</div>
				<div class="area_address" id="topAddr"></div>
				<!-- 내용 -->
				<hr>
				<div class="db_cont_detail">
					<!-- 상세정보 -->
					<div id="detailGo">
						<hr>
						
						<div class="wrap_contView">
							<h4>상세 주소</h4>
							<p id="fbaddr2"></p>
						</div>
						<div class="wrap_contView">
							<h4>상세 정보</h4>

							<div id="fbcontents1" class="blind"></div>
							<div class="area_txtView top ms_detail">
								<div class="inr_wrap">
									<div class="inr">
										<p id="fbcontents1"></p>
									</div>
								</div>
							</div>
						</div>
						<a href="/board/foodsite" class="btn btn-primary"
						style="float: right; width: 150px; border-radius: 50px;">목록</a>
					</div>
				</div>
			</div>
		</div>

	</header>

	<script type="text/javascript">
		$(document).ready(function() {
			var fbno = window.location.search.split("=").reverse()[0];
			//현재 주소의 파라미터값을 가져온다. split으로 "="로 파라미터를 나눈뒤 reverse로 뒤부터 0번지를 꺼낸다.
			// 			var fbno = $("fbno");
			// 			var fbno = this.fbno;

			var fbtitle = "";
			var fbaddr1 = "";
			var fbaddr2 = "";
			var fbcontents1 = "";
			var fbimg1= "";
			var fbimg2= "";
			var fbimg3= "";
			function foodGet() {
				$.getJSON("/board/foodboardget/" + fbno, function(data) {
					fbtitle = data.fbtitle;
					$("#fbtitle").html(fbtitle);
				
					fbaddr1 = data.fbaddr1;
					$("#fbaddr1").html(fbaddr1);

					fbcontents1 = data.fbcontents1;
					$("#fbcontents1").html(fbcontents1);
					
					fbaddr2 = data.fbaddr2;
					$("#fbaddr2").html(fbaddr2);
					
					fbimg1 = "<img src='/resources/assets/img/seoul/food/contents/"+data.fbimg1+"'>";
					$("#fbimg1").html(fbimg1);
					fbimg2 = "<img src='/resources/assets/img/seoul/food/contents/"+data.fbimg2+"'>";
					$("#fbimg2").html(fbimg2);
					fbimg3 = "<img src='/resources/assets/img/seoul/food/contents/"+data.fbimg3+"'>";
					$("#fbimg3").html(fbimg3);
					
					

				}); // getJSON
			}// foodGet
			foodGet();

		}); // document
	</script>
</body>
</html>
