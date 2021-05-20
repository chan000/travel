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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
						<h1 style="text-align: center;">자유게시판</h1>
						<table class="ui celled table">
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>내용</th>
									<th>작성자</th>
									<th>작성일</th>
								</tr>

								<c:forEach var="board" items="${freeboard}">
									<tr>
										<td>${board.bno }</td>
										<td><a
											href="/board/freeboardget?bno=${board.bno}&page=${cri.page}">${board.title }</a></td>
										<td>${board.contents }</td>
										<td>${board.writer }</td>
										<td>${board.date }</td>
									</tr>
								</c:forEach>
							</thead>

						</table>

						<div class="row">
							<div class="text-body">
								<select name="searchType">
									<option value="n"
										<c:out value="${cri.searchType == null ? 'selected' : '' }" />>
										선택</option>
									<option value="t"
										<c:out value="${cri.searchType eq 't' ? 'selected' : '' }" />>
										제목</option>
									<option value="c"
										<c:out value="${cri.searchType eq 'c' ? 'selected' : '' }" />>
										내용</option>
									<option value="w"
										<c:out value="${cri.searchType eq 'w' ? 'selected' : '' }" />>
										글쓴이</option>
								</select> <input type="text" name="keyword" id="keywordInput"
									value="${cri.keyword }">
								<button id="searchBtn">Search</button>

							</div>
						</div>

						<div class="container">
							<div class="row">
								<div class="col-md-9">

									<ul class="pagination">
										<!-- 이전 페이지 버튼 -->
										<c:if test="${pageMaker.prev }">
											<li class="page-item"><a class="page-link"
												href="/board/freeboard?page=${pageMaker.startPage -1 }&searchType=${cri.searchType}&keyword=${cri.keyword}">
													&laquo; </a></li>
										</c:if>

										<!-- 페이지 번호 버튼 -->
										<c:forEach begin="${pageMaker.startPage }"
											end="${pageMaker.endPage }" var="idx">
											<li class="page-item
										    		<c:out value="${pageMaker.cri.page == idx ? 'active' : '' }" />">
										    		<a class="page-link"
										    			href="/board/freeboard?page=${idx }&searchType=${cri.searchType}&keyword=${cri.keyword}">${idx }</a>
										    	</li>
										</c:forEach>

										<!-- 다음 페이지 버튼 -->
										<c:if test="${pageMaker.next && pageMaker.endPage >0 }">
											<li class="page-item"><a class="page-link"
												href="/board/freeboard?page=${pageMaker.endPage +1 }&searchType=${cri.searchType}&keyword=${cri.keyword}">
													&raquo; </a></li>
										</c:if>
									</ul>
								</div>
								<div class="col-md-3" style="float: right;">

									<a class="btn btn-warning " href="/board/freeboardregi">글쓰기</a>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</header>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		
		$('#searchBtn').on("click", function(event) {
			self.location ="freeboard"
				+ "?page=1"
				+ "&searchType="
				+ $("select option:selected").val()
				+ "&keyword=" + $("#keywordInput").val();
		}); // searchBtn
	}); // document
</script>
</html>
