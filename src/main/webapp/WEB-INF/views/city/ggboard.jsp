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
<title>경기도</title>
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
					<h1>송파구</h1>
					<button type="button" class="btn btn-danger" data-dismiss="modal">&times;</button>
				</div>
				<!-- body -->
				<div class="modal-body">
					<!-- 모달 팝업의 내용은 여기에 옵니다. -->
					<h5>관광지</h5>
					<!-- 데이터 넣으면 되려나 -->
					<h6 style="float: right;">
						<a href="/board/tourlist">상세보기</a>
					</h6>
					<br>
					<hr style="width: 100%;">
					<h5>음식</h5>
					<!-- 데이터 넣으면 되려나 -->
					<h6 style="float: right;">
						<a href="/board/tourlist">상세보기</a>
					</h6>
					<br>
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

			<div style="position: relative; top: 5px; left: 75px;">
				<img src="/resources/assets/img/do/경기도.png">


				<!-- ---------- 인천광역시 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 120px; top: 350px; height: 90px; width: 180px; border-radius: 50px; opacity: 0;"
					class="w3-button w3-black">인천광역시</button>


				<!-- ---------- 가평군 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 570px; top: 140px; height: 200px; width: 110px; border-radius: 50px; opacity: 0;"
					class="w3-button w3-black">가평군</button>




				<!-- ---------- 수원시 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 385px; top: 485px; width: 60px; opacity: 0;"
					class="w3-button w3-black">수원시</button>


				<!-- ---------- 용인시 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 470px; top: 470px; width: 100px; height: 120px; border-radius: 30px; opacity: 0;"
					class="w3-button w3-black">용인시</button>


				<!-- ---------- 이천시 버튼 ---------- -->
				<button data-toggle='modal' data-target='#testModal1'
					style="position: absolute; left: 610px; top: 465px; width: 60px; height: 150px; transform: rotate(-45deg) s;
                    border-radius: 20px; opacity: 0;"
					class="w3-button w3-black">이천시</button>
			</div>
			<!-- style="position: relative; top: 30px;" -->
		</div>
		<!-- class="container d-flex h-100 align-items-center" -->


	</header>

</body>
</html>
