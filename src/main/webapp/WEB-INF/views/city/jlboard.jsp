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
<title>전라도</title>
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

			<div style="position: relative; top: 30px; left: 120px;">
				<img src="/resources/assets/img/do/전라도.png">

				<!-- ---------- 군산시 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 230px; top: 60px; height: 70px; width: 110px; opacity: 0;"
					class="w3-button w3-black">군산시</button>


				<!-- ---------- 전주시 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 390px; top: 120px; height: 70px; width: 80px; border-radius: 50px; opacity: 0;"
					class="w3-button w3-black">전주시</button>


				<!-- ---------- 담양군 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 360px; top: 360px; height: 80px; width: 60px; transform: rotate(-30deg); border-radius: 50px; opacity: 0;"
					class="w3-button w3-black">담양군</button>


				<!-- ---------- 순천시 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 460px; top: 470px; height: 90px; width: 110px; border-radius: 50px; opacity: 0;"
					class="w3-button w3-black">순천시</button>


				<!-- ---------- 여수시 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 550px; top: 550px; height: 100px; width: 100px; border-radius: 50px; opacity: 0;"
					class="w3-button w3-black">여수시</button>


				<!-- ---------- 보성군 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 400px; top: 530px; height: 100px; width: 100px; border-radius: 50px; opacity: 0;"
					class="w3-button w3-black">보성군</button>


				<!-- ---------- 영암군 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 207px; top: 545px; height: 80px; width: 120px; border-radius: 50px; opacity: 0;"
					class="w3-button w3-black">영암군</button>


				<!-- ---------- 해남군 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 200px; top: 620px; height: 120px; width: 100px; border-radius: 50px; opacity: 0;"
					class="w3-button w3-black">해남군</button>



			</div>
			<!-- style="position: relative; top: 30px;" -->
		</div>
		<!-- class="container d-flex h-100 align-items-center" -->
	</header>

</body>
</html>
