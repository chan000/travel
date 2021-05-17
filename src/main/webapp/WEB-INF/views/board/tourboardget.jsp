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
	<input type="hidden" name="tbno" value="${tourget.tbno}">
	<%@ include file="/WEB-INF/views/header/header.jsp"%>
	<header class="masthead">
		<!-- 메인 내용 들어가는 곳 -->

		<div class="col-sm-6 aligned center"
			style="position: absolute; margin-left: 25%; margin-top: 5%;">
			<!-- 상단 -->
			<div class="titleType1">
				<div class="area_tag">

					<div class="" style="text-align: center;">
						<h1 id="tbtitle"></h1>
					</div>
					<div id="tbaddr1" style="text-align: center">
						<h5 style="text-align: center;" id="tbaddr1"></h5>
						<br>
					</div>

				</div>

				<div class="slider">
					<input type="radio" name="slide" id="slide1" checked> <input
						type="radio" name="slide" id="slide2"> <input type="radio"
						name="slide" id="slide3"> <input type="radio" name="slide"
						id="slide4">
					<ul id="imgholder" class="imgs">
						<li><img src="/resources/assets/img/seoul/tour/경복궁1.png"></li>
						<li><img src="/resources/assets/img/seoul/tour/경복궁2.png"></li>
						<li><img src="/resources/assets/img/seoul/tour/경복궁3.png"></li>
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
							<h3>상세 주소</h3>
							<p id="tbaddr2"></p>
						</div>
						<div class="wrap_contView">
							<h3>상세 정보</h3>

							<div id="tbcontents1" class="blind"></div>
							<div class="area_txtView top ms_detail">
								<div class="inr_wrap">
									<div class="inr">
										<p id="tbcontents1"></p>
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
			var tbno = window.location.search.split("=").reverse()[0];
			//현재 주소의 파라미터값을 가져온다. split으로 "="로 파라미터를 나눈뒤 reverse로 뒤부터 0번지를 꺼낸다.
			// 			var tbno = $("tbno");
			// 			var tbno = this.tbno;

			var tbtitle = "";
			var tbaddr1 = "";
			var tbaddr2 = "";
			var tbcontents1 = "";
			function tourGet() {
				$.getJSON("/board/tourboardget/" + tbno, function(data) {
					tbtitle = data.tbtitle;
					$("#tbtitle").html(tbtitle);
				
					tbaddr1 = data.tbaddr1;
					$("#tbaddr1").html(tbaddr1);

					tbcontents1 = data.tbcontents1;
					$("#tbcontents1").html(tbcontents1);
					
					tbaddr2 = data.tbaddr2;
					$("#tbaddr2").html(tbaddr2);

				}); // getJSON
			}// tourGet
			tourGet();

		}); // document
	</script>
</body>
</html>
