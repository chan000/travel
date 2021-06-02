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
<title>내정보</title>
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

				<div class="container">
					<div class="column" style="position: relative; top: 100px;">
						<h1 style="text-align: center;">내 정보</h1>
						<br>

						<table style="width:700; height: 600; border-collapse: collapse; 
								font-size: 12pt; margin-left: 150px; cellpadding= 0">
							<tr class="register" height="30">
								<td width="5%" style="text-align: center;"></td>
								<td width="15%">아이디</td>
								<td><input type="text" id="uid" name="uid" disabled="disabled" /></td>
							</tr>
							<tr height="7">
								<td colspan="3"><hr /></td>
							</tr>
							<tr class="register" height="30">
								<td width="5%" style="text-align: center;"></td>
								<td width="15%">비밀번호</td>
								<td><input type="password" id="upwd" name="upwd" disabled="disabled"/></td>
							</tr>
							<tr height="7">
								<td colspan="3"><hr /></td>
							</tr>
							<tr class="register" height="30">
								<td width="5%" style="text-align: center;"></td>
								<td width="15%">이 름</td>
								<td><input type="text" id="uname" name="uname" disabled="disabled"/></td>
							</tr>
							
							<tr height="7">
								<td colspan="3"><hr /></td>
							</tr>
							<tr class="register" height="30">
								<td width="5%" style="text-align: center;"></td>
								<td width="15%">이메일</td>
								<td><input type="email" id="uemail" name="uemail" disabled="disabled"/></td>
							</tr>

							<tr height="7">
								<td colspan="3"><hr /></td>
							</tr>
							<tr class="register" height="30">
								<td width="5%" style="text-align: center;"></td>
								<td width="15%">닉네임</td>
								<td><input type="text" id="unickname" name="unickname" disabled="disabled"/></td>
							</tr>

							<tr height="7">
								<td colspan="3"><hr /></td>
							</tr>
						</table>

						<a style="width: 300px; margin-left: 150px;" href="/user/myinfomodify"
							class="btn btn-warning " id="submitbtn" type="submit">수정</a>
						<a style="width: 300px;" class="btn btn-info" type="button" href="/">뒤로</a>

					</div>
				</div>

	</header>
 <script type="text/javascript">
    $(document).ready(function() {
		var uno = ${login.uno};
		
		function getMyInfo(){
			$.getJSON("/myRest/" + uno, function(data) {
				
				var uid = data.uid;
				$("#uid").val(uid);
				var uname = data.uname;
				$("#uname").val(uname);
				var uemail = data.uemail;
				$("#uemail").val(uemail);
				var upwd = data.upwd;
				$("#upwd").val(upwd);
				var unickname = data.unickname;
				$("#unickname").val(unickname);
				
			}) // getJSON
		}	// getMyInfo
		getMyInfo();
	});	// document
    </script>
	
</body>
</html>
