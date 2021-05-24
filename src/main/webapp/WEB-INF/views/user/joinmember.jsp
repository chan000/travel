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
		<div class="form">
			<form method="post" action="/user/joinmember">

				<div class="container">
					<div class="column" style="position: relative; top: 100px;">
						<h1 style="text-align: center;">회원가입</h1>
						<br>

						<table width="700" height="600" cellpadding="0"
							style="border-collapse: collapse; font-size: 12pt; margin-left: 150px;">
							<tr class="register" height="30">
								<td width="5%" style="text-align: center;">*</td>
								<td width="15%">아이디</td>
								<td><input type="text" id="uid" name="uid"
									placeholder="아이디 입력" required="required" /><button id="checkId">중복체크</button><br>
									<span id="resultComment"></span></td>
							</tr>
							<tr height="7">
								<td colspan="3"><hr /></td>
							</tr>
							<tr class="register" height="30">
								<td width="5%" style="text-align: center;">*</td>
								<td width="15%">비밀번호</td>
								<td><input type="password" id="upwd" name="upwd"
									placeholder="비밀번호 입력" required="required" /></td>
							</tr>
							<tr height="7">
								<td colspan="3"><hr /></td>
							</tr>
							<tr class="register" height="30">
								<td width="5%" style="text-align: center;">*</td>
								<td width="20%">비밀번호 확인</td>
								<td><input type="password" name="reupwd" id="reupwd"
									placeholder="비밀번호 재확인" required="required" />
							</tr>
							<tr height="7">
								<td colspan="3"><hr /></td>
							</tr>
							<tr class="register" height="30">
								<td width="5%" style="text-align: center;">*</td>
								<td width="15%">이 름</td>
								<td><input type="text" id="uname" name="uname"
									required="required" placeholder="이름 입력" /></td>
							</tr>
							<tr height="7">
								<td colspan="3"><hr /></td>
							</tr>
							<tr class="register" height="30">
								<td width="5%" style="text-align: center;">*</td>
								<td width="15%">성 별</td>
								<td>남 성<input type="radio" name="ugender" value="1" checked />&nbsp;
									여 성<input type="radio" name="wUserGender" value="2" />
								</td>
							</tr>
							<tr height="7">
								<td colspan="3"><hr /></td>
							</tr>
							<tr class="register" height="30">
								<td width="5%" style="text-align: center;">*</td>
								<td width="15%">이메일</td>
								<td><input type="email" id="uemail" name="uemail"
									required="required" placeholder="이메일 입력" /></td>
							</tr>

							<tr height="7">
								<td colspan="3"><hr /></td>
							</tr>
							<tr class="register" height="30">
								<td width="5%" style="text-align: center;">*</td>
								<td width="15%">닉네임</td>
								<td><input type="text" id="unickname" name="unickname"
									required="required" placeholder="닉네임 입력" /></td>
							</tr>

							<tr height="7">
								<td colspan="3"><hr /></td>
							</tr>
						</table>

						<button style="width: 300px; margin-left: 150px;"
							class="btn btn-info " id="submitbtn" type="submit">가입하기
						</button>
						<a style="width: 300px;" class="btn btn-info" type="button"
							href="/user/login">뒤로</a>

					</div>
				</div>
			</form>
		</div>

	</header>
	<script type="text/javascript">
		$("#checkId").on("click", function(e) {
			e.preventDefault();

			var uidValue = $("#uid").val();
			var str = "";

			$.ajax({
				type : 'post',
				url : '/myRest/'+uidValue,
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType : 'text',
				success : function(result) {
					if (result.uid === uidValue) {
						str += "아이디 체크가 완료되었습니다.";
						$("#resultComment").html(str);
						alert("아이디 중복입니다.");
					}
					console.log(result);
				},
				error : function(result) {
					console.log("에러발생");
				}
			});
		});
	</script>

	<script type="text/javascript">
		var formObj = $("form");

		$("#submitbtn").on("click", function(e) {
			e.preventDefault();
			var upwd = $("#upwd").val();

			if ($("#uid").val() == "") {
				alert("아이디를 입력해 주세요!");
				$("#uid").focus();
				return;
			} else if (upwd == "") {
				alert("비밀번호를 입력해 주세요!");
				$("#upwd").focus();
				return;
			} else if (upwd != $("#reupwd").val()) {
				alert("비밀번호가 일치하지 않습니다!");
				$("#reupwd").focus();
				return;
			} else if ($("uname").val() == "") {
				alert("이름을 입력해 주세요!");
				$("#uname").focus();
				return;
			} else if ($("#uemail").val() == "") {
				alert("이메일을 입력해 주세요!");
				$("#uemail").focus();
				return;

			} else if ($("unickname").val() == "") {
				alert("닉네임을 입력해 주세요!");
				$("#unickname").focus();
				return;
			} else {
				alert("회원가입이 완료되었습니다.")
				formObj.submit();
			}
		})
	</script>
</body>
</html>
