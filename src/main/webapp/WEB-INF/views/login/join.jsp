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
<title>회원가입창</title>
<link rel="icon" type="image/x-icon"
	href="/resources/assets/img/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
		<form action="/login/join" method="post">
			<div class="container">
				<div class="column" style="position: relative; top: 200px;">
					<h1 style="text-align: center;">회원가입</h1>
					<div class="form-inline d-flex">
						아이디 : <input
							class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0"
							 name="uid" placeholder="아이디를 입력해주세요." /> 
							<span id="checkID">중복체크</span><br> <span id="resultComment"></span>

					</div>
					<div class="form-inline d-flex">
						비밀번호 : <input
							class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0"
							 name="upwd" placeholder="비밀번호를 입력해주세요." />

					</div>
					<div class="form-inline d-flex">
						이름 : <input
							class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0"
							 name="uname" placeholder="이름을 입력해주세요." />

					</div>
					<div class="form-inline d-flex">
						이메일 : <input
							class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0"
							 name="uemail" placeholder="이메일을 입력해주세요." />

					</div>
					<div class="form-inline d-flex">
						닉네임 : <input
							class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0"
							 name="unickname" placeholder="닉네임을 입력해주세요." />

					</div>
					
						<a type="submit" class="btn btn-warning ">회원가입</a>
					


				</div>
			</div>
		</form>


	</header>

	<script type="text/javascript">
		$("checkID").on("click", function(e) {
			e.preventDefault();

			var uidValue = $("#uidInput").val();

			var str = "";

			$.ajax({
				type : 'post',
				url : '/login/check/' + uidValue,
				headers : {
					"Content-Type" : "Application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType : 'text',
				success : function(result) {
					if (result.uid === uidValue) {
						str += "아이디 사용 가능합니다.";
						$("resultComment").html(str);
					}

				},
				error : function(result) {

				}
			}); // ajax
		}); // checkID
	</script>
</body>
</html>
