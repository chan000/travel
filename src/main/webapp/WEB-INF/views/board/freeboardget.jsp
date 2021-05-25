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
<header class="masthead">
		<%@ include file="/WEB-INF/views/header/header.jsp"%>
		<!-- 메인 내용 들어가는 곳 -->
		<section class="container">
				<div class="row" style="width: 1000px"></div>
				<form>
				<input type="hidden" name="bno" value="${freeboard.bno}">
				<div class="column">
					<div>
						<div class="panel-body" style="margin-top: 17%">
							<h1 style="text-align: center;">${freeboard.title }</h1>
							<table class="table table-striped">
                                <tr>
                                 <td>작성자</td>
                                 <td><input type="text"  class="form-control" value="${login.uname }" readonly="readonly" name="writer"></td>
                                </tr>
                                <tr>
                                 <td>제목</td>
                                 <td><input type="text"  class="form-control"  name="title" readonly="readonly" value="${freeboard.title }"></td>
                                </tr>
                                <tr>
                                 <td>작성일</td>
                                 <td><input type="text"  class="form-control"  name="date" readonly="readonly" value="${freeboard.date }"></td>
                                </tr>
                                <tr>
                                <tr>
                                 <td>글내용</td>
                                 <td><textarea rows="10" cols="50" name="contents" class="form-control" readonly="readonly">${freeboard.contents }</textarea></td>
                                </tr>
                                 <tr> 
                                 <td colspan="2"  class="text-center">       
                        
								<button style="width: 200px;" type="submit" data-oper="modify" class="btn btn-warning useboard">수정</button>
								<button style="width: 200px;" type="submit" data-oper="remove" class="btn btn-danger useboard">삭제</button>
                                 <a style="width: 200px;" class="btn btn-info" type="button" href="/board/freeboard">목록보기</a>
                                 </td>
                                </tr>
                                </table>
						</div>
					</div>
				</div>
				</form>
		</section>
</header>
<script type="text/javascript">
	$(document).ready(function() {
		var formObj = $("form");
		$('.useboard').on("click", function(e) {
			e.preventDefault();

			var operation = $(this).data("oper");
			formObj.attr("method", "post");

			if (operation === "modify") {
				formObj.attr("action", "/board/freeboardmodify");
			} else if (operation === "remove") {
				formObj.attr("action", "/board/remove");
				alert("삭제되었습니다.");
			}
			formObj.submit();
		});
	}); // document
</script>
</body>
</html>
