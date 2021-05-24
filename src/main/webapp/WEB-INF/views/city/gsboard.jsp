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
<title>경상도</title>
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
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<%@ include file="/WEB-INF/views/header/header.jsp"%>
<body>
	<div class="modal" id="testModal1">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- header -->
				<div class="modal-header">
					<!-- 모달 팝업의 제목이 옵니다. -->
					<h5>투표결과 보기</h5>
					<button type="button" class="btn btn-danger" data-dismiss="modal">&times;</button>
				</div>
				<!-- body -->
				<div class="modal-body">
					<!-- 모달 팝업의 내용은 여기에 옵니다. -->
					투표결과<br> 득표수 : <br>
					<div id="foodInfo"></div>

					승률 : <br>
				</div>
				<!-- footer -->
				<div class="modal-footer">
					<!-- 모달 팝업에서 버튼 등 기타 요소들이 여기에 옵니다. -->
					<button type="button" class="btn btn-primary">확인</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">
						닫기</button>
				</div>
			</div>
		</div>
	</div>
	<header class="masthead">

		<!-- 메인 내용 들어가는 곳 -->
		<div class="container d-flex h-100 align-items-center">

			<div style="position: relative; top: 30px; left: 200px;">
				<img src="/resources/assets/img/do/경상도.png">
				<!-- ---------- 영주시 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 250px; top: 50px; height: 70px; opacity: 0;"
					class="w3-button w3-black">영주시</button>


				<!-- ---------- 안동시 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 280px; top: 130px; height: 90px; width: 120px; opacity: 0;"
					class="w3-button w3-black">안동시</button>


				<!-- ---------- 포항시 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 440px; top: 290px; height: 50px; width: 120px; transform: rotate(45deg); opacity: 0;"
					class="w3-button w3-black">포항시</button>


				<!-- ---------- 경주시 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 420px; top: 350px; height: 80px; width: 120px; opacity: 0;"
					class="w3-button w3-black">경주시</button>


				<!-- ---------- 창녕군 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 250px; top: 460px; height: 90px; width: 80px; opacity: 0;"
					class="w3-button w3-black">창녕군</button>


				<!-- ---------- 부산광역시 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 400px; top: 580px; height: 60px; width: 160px; transform: rotate(-40deg); opacity: 0;"
					class="w3-button w3-black">부산광역시</button>

			</div>
			<!-- style="position: relative; top: 30px;" -->
		</div>
		<!-- class="container d-flex h-100 align-items-center" -->
	</header>

</body>
</html>
