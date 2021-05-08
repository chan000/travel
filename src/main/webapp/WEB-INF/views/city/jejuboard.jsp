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
<title>제주도</title>
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

			<div style="position: relative; left: 130px;">
				<img src="/resources/assets/img/do/제주도.png">

				<!-- ---------- 애월읍 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 250px; top: 90px; height: 100px; width: 100px; border-radius: 30px;"
					class="w3-button w3-black">애월읍</button>


				<!-- ---------- 조천읍 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 350px; top: 80px; height: 100px; width: 100px; border-radius: 30px;"
					class="w3-button w3-black">조천읍</button>


				<!-- ---------- 구좌읍 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 470px; top: 20px; height: 130px; width: 300px; border-radius: 30px;"
					class="w3-button w3-black">구좌읍</button>


				<!-- ---------- 우도면 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 819px; top: 60px; width: 60px; height: 60px; border-radius: 30px;"
					class="w3-button w3-black">우도면</button>


				<!-- ---------- 성산읍 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 630px; top: 150px; height: 220px; width: 130px; border-radius: 30px;"
					class="w3-button w3-black">성산읍</button>


				<!-- ---------- 표선면 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 480px; top: 180px; height: 220px; width: 145px; border-radius: 30px;"
					class="w3-button w3-black">표선면</button>


				<!-- ---------- 남원읍 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 330px; top: 195px; height: 220px; width: 125px; border-radius: 30px; transform: rotate(10deg);"
					class="w3-button w3-black">남원읍</button>


				<!-- ---------- 안덕면 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 220px; top: 195px; height: 190px; width: 100px; border-radius: 30px; transform: rotate(15deg);"
					class="w3-button w3-black">안덕면</button>


				<!-- ---------- 대정읍 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 0px; top: 380px; width: 380px; height: 70px; border-radius: 30px; transform: rotate(15deg);"
					class="w3-button w3-black">대정읍</button>


				<!-- ---------- 한경면 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 50px; top: 200px; height: 160px; width: 110px; border-radius: 30px; transform: rotate(-35deg);"
					class="w3-button w3-black">한경면</button>


				<!-- ---------- 한림읍 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 130px; top: 120px; height: 170px; width: 120px; border-radius: 30px;"
					class="w3-button w3-black">한림읍</button>

			</div>
			<!-- style="position: relative; top: 30px;" -->
		</div>
		<!-- class="container d-flex h-100 align-items-center" -->
	</header>

</body>
</html>
