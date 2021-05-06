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
<title>자유 게시판</title>
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
		<section id="main-content">
			<section class="wrapper">
				<div class="row"></div>
			</section>
			<div class="panel-body">
				<div class="table-responsive" style="margin-top: 17%;">
					<table class="table table-bordered">
						<tbody>
							<div style="text-align: center;">
								<h3>제목</h3>
							</div>
							<tr>
								<td class="text-center gr"><strong>작성자</strong></td>
								<td>${board.bwriter }</td>
							</tr>
							<tr>
								<td class="text-center gr"><strong>작성일</strong></td>
								<td>${board.bwrite_date }</td>
							</tr>
							<tr>
								<td class="text-center gr"><strong>내용 </strong></td>
								<td>${board.bcontent }</td>
							</tr>
						</tbody>
					</table>
					<a href="/mine/general" class="btn btn-primary"
						style="float: right;">목록</a>
				</div>
			</div>
			</section>
	</header>
</body>
</html>
