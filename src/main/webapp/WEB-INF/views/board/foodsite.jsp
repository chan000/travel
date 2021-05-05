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
		<div class="col-sm-6 aligned center"
			style="position: absolute; margin-left: 25%; margin-top: 3%;">
			<div class="column">
				<h2 class="ui teal image header"></h2>
				<div class="ui large form">
					<div class="ui stacked segment">
						<table class="ui celled table">
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>내용</th>
									<th>작성자</th>
									<th>작성일</th>
								</tr>

								<c:forEach var="board" items="${list}">
								<tr>
									<td>${board.bno }</td>
									<td>${board.title }</td>
									<td>${board.contents }</td>
									<td>${board.writer }</td>
									<td>${board.updateDate }</td>
									</tr>
								</c:forEach>
							</thead>

						</table>
					</div>
				</div>
			</div>
		</div>
	</header>
</body>
</html>
