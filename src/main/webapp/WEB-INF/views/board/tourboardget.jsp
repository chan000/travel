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
<title>관광상세보기</title>
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
<input type="hidden" 
					   name="bno" 
					   value="${board.tbno }">
	<%@ include file="/WEB-INF/views/header/header.jsp"%>
	<header class="masthead">
		<!-- 메인 내용 들어가는 곳 -->

		<div class="col-sm-6 aligned center"
			style="position: absolute; margin-left: 25%; margin-top: 10%;">
			<!-- 상단 -->
			<div class="titleType1">
				<div class="area_tag">

					<div id="tbtitle" class="" style="text-align: center;">
						<h1></h1>
					</div>
					<div id="tbaddr1">
						<h5 style="text-align: center;"></h5>
						<br>
					</div>

				</div>

				<div class="slider">
					<input type="radio" name="slide" id="slide1" checked> <input
						type="radio" name="slide" id="slide2"> <input type="radio"
						name="slide" id="slide3"> <input type="radio" name="slide"
						id="slide4">
					<ul id="imgholder" class="imgs">
						<li><img src="/resources/assets/img/seoul/tour/경상도1.png"></li>
						<li><img src="/resources/assets/img/seoul/tour/경상도1.png"></li>
						<li><img src="/resources/assets/img/seoul/tour/경상도1.png"></li>
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
						<!-- 내용더보기 -->
						<div class="wrap_contView">
							<h3>상세정보</h3>

							<div id="tbcontents1" class="blind"></div>
							<div class="area_txtView top ms_detail">
								<div class="inr_wrap">
									<div class="inr">
										<p></p>
									</div>
								</div>
							</div>
						</div>
						<!-- //내용더보기 -->
					</div>
				</div>
			</div>
		</div>

	</header>

	<script type="text/javascript">
		$(document).ready(function() {
			var tbno = $(this).data("tbno");
			console.log(tbno);
			function tourGet() {
				$.getJSON("/board/tourboardget/" + tbno, function(data) {
					var tbtitle = data.tbtitle;
					$("#tbitle").val(tbtitle);
					var tbaddr1 = data.tbaddr1;
					$("#tbaddr1").val(tbaddr1);
					var tbcontents1 = data.tbcontents1;
					$("#tbcontents1").val(tbcontents1);
				}); // getJSON
			}// tourGet
			tourGet();

		}); // document
	</script>
</body>
</html>
