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
<title>Grayscale - Start Bootstrap Theme</title>
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
</head>
<body>
	<%@ include file="/WEB-INF/views/header/header.jsp"%>
	<header class="masthead">
		<!-- 메인 내용 들어가는 곳 -->
		<div class="container">
			<div class="column" style="position: relative; top: 200px;">
				<h1 style="text-align: center;">회원가입</h1>
				<form class="form-inline d-flex">
					아이디 : <input
						class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0"
						id="inputEmail" type="email" placeholder="이메일을 입력해주세요." />

				</form>
				<form class="form-inline d-flex">
					비밀번호 : <input
						class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0"
						id="inputEmail" type="email" placeholder="이메일을 입력해주세요." />

				</form>
				<form class="form-inline d-flex">
					이름 : <input
						class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0"
						id="inputEmail" type="email" placeholder="이메일을 입력해주세요." />

				</form>
				<form class="form-inline d-flex">
					이메일 : <input
						class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0"
						id="inputEmail" type="email" placeholder="이메일을 입력해주세요." />

				</form>
				<form class="form-inline d-flex">
					성별
					<div class="col-lg-2">
						<input class="form-control" id="gender" type="text"
							value=<c:choose>
                  			<c:when test="${detail.gender eq 1}">
                  				<c:out value="남자"/>
                  			</c:when>
                  			<c:when test="${detail.gender eq 2}">
                  				<c:out value="여자"/>
                  			</c:when>
                  		</c:choose>>
                  		</div>
				</form>
				<a class="btn btn-warning ">회원가입</a>

			</div>
		</div>


	</header>
</body>
</html>
