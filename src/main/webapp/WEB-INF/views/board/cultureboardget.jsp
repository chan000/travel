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
<title>문화 상세보기</title>
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
<%-- 	<input type="hidden" name="cbno" value="${foodget.cbno}"> --%>
	<%@ include file="/WEB-INF/views/header/header.jsp"%>
	<header class="masthead">
		<!-- 메인 내용 들어가는 곳 -->

		<div class="col-sm-6 aligned center"
			style="position: absolute; margin-left: 25%; margin-top: 5%;">
			<!-- 상단 -->
			<div class="titleType1">
				<div class="area_tag">

					<div class="" style="text-align: center;">
						<h1 id="cbtitle"></h1>
					</div>
					<div id="cbaddr1" style="text-align: center">
						<h5 style="text-align: center;" id="cbaddr1"></h5>
						<br>
					</div>

				</div>

				<div class="slider">
					<input type="radio" name="slide" id="slide1" checked> <input
						type="radio" name="slide" id="slide2"> <input type="radio"
						name="slide" id="slide3"> <input type="radio" name="slide"
						id="slide4">
					<ul id="imgholder" class="imgs">
						<li id="cbimg1"></li>
						<li id="cbimg2"></li>
						<li id="cbimg3"></li>
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
							<p id="cbaddr2"></p>
						</div>
						<div class="wrap_contView">
							<h4>상세 정보</h4>

							<div id="cbcontents1" class="blind"></div>
							<div class="area_txtView top ms_detail">
								<div class="inr_wrap">
									<div class="inr">
										<p id="cbcontents1"></p>
									</div>
								</div>
							</div>
						</div>
						<a href="/board/culturesite" class="btn btn-primary"
						style="float: right;">삭제</a>
						<a href="/board/freeboard?page=${cri.page}" class="btn btn-primary"
						style="float: right;">수정</a>
						<a href="/board/freeboard?page=${cri.page}" class="btn btn-primary"
						style="float: right;">목록</a>
					</div>
				</div>
			</div>
		</div>

	</header>

	<script type="text/javascript">
		$(document).ready(function() {
			var cbno = window.location.search.split("=").reverse()[0];
			//현재 주소의 파라미터값을 가져온다. split으로 "="로 파라미터를 나눈뒤 reverse로 뒤부터 0번지를 꺼낸다.
			// 			var cbno = $("cbno");
			// 			var cbno = this.cbno;

			var cbtitle = "";
			var cbaddr1 = "";
			var cbaddr2 = "";
			var cbcontents1 = "";
			var cbimg1= "";
			var cbimg2= "";
			var cbimg3= "";
			function foodGet() {
				$.getJSON("/board/cultureboardget/" + cbno, function(data) {
					cbtitle = data.cbtitle;
					$("#cbtitle").html(cbtitle);
				
					cbaddr1 = data.cbaddr1;
					$("#cbaddr1").html(cbaddr1);

					cbcontents1 = data.cbcontents1;
					$("#cbcontents1").html(cbcontents1);
					
					cbaddr2 = data.cbaddr2;
					$("#cbaddr2").html(cbaddr2);
					
					cbimg1 = "<img src='/resources/assets/img/culture/contents/"+data.cbimg1+"'>";
					$("#cbimg1").html(cbimg1);
					cbimg2 = "<img src='/resources/assets/img/culture/contents/"+data.cbimg2+"'>";
					$("#cbimg2").html(cbimg2);
					cbimg3 = "<img src='/resources/assets/img/culture/contents/"+data.cbimg3+"'>";
					$("#cbimg3").html(cbimg3);
					
					

				}); // getJSON
			}// foodGet
			foodGet();

		}); // document
	</script>
</body>
</html>
