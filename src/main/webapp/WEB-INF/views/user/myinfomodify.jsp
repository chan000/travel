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
		<div class="form">
		<form method="get" action="/user/myinfo">
		<input type="hidden" name="uno" value="${login.uno}" />
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
								<td width="5%" style="text-align: center;">*</td>
								<td width="15%">비밀번호</td>
								<td><input type="password" id="upwd" name="upwd" required="required" /></td>
							</tr>
							<tr height="7">
								<td colspan="3"><hr /></td>
							</tr>
							<tr class="register" height="30">
								<td width="5%" style="text-align: center;">*</td>
								<td width="20%">비밀번호 확인</td>
								<td><input type="password" name="reupwd" id="reupwd"
									 required="required" />
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
								<td width="15%">성 별</td>
								<td>남 성<input type="radio" name="ugender" value="1" checked />&nbsp;
									여 성<input type="radio" name="wUserGender" value="2" />
								</td>
							</tr>
							<tr height="7">
								<td colspan="3"><hr /></td>
							</tr>
							<tr class="register" height="30">
								<td width="5%" style="text-align: center;"></td>
								<td width="15%">이메일</td>
								<td><input type="email" id="uemail" name="uemail" /></td>
							</tr>

							<tr height="7">
								<td colspan="3"><hr /></td>
							</tr>
							<tr class="register" height="30">
								<td width="5%" style="text-align: center;"></td>
								<td width="15%">닉네임</td>
								<td><input type="text" id="unickname" name="unickname" /></td>
							</tr>

							<tr height="7">
								<td colspan="3"><hr /></td>
							</tr>
						</table>

						<a style="width: 300px; margin-left: 150px;" href="/user/myinfomodify"
							class="btn btn-info " id="modifybtn" type="submit">수정하기</a>
						<a style="width: 300px;" class="btn btn-info" type="button" href="/user/myinfo">취소</a>

					</div>
				</div>
<!--                         <button class="btn btn-primary btn-lg col-lg-1 col-lg-offset-4" id="modifybtn" type="submit"><i class="icofont-check-circled"></i></button> -->
		</form>
			</div>


	</header>
    
    <script type="text/javascript">
	var uno = ${login.uno};
	var uname = "${login.uname}";
	var formObj = $("form");
    	
    $(document).ready(function() {
	var uno = ${login.uno};
		
		function getMyInfo(){
			$.getJSON("/myRest/" + uno, function(data) {
				var uname = data.uname;
				$("#uname").val(uname);
				var uid = data.uid;
				$("#uid").val(uid);
			})
		}
		getMyInfo();
    	
    	$("#modifybtn").on("click", function(e) {
			e.preventDefault();
			
			var upwd = $("#upwd").val();
			var uemail = $("#uemail").val();
			var unickname = $("#unickname").val();
			
			
			if (upwd == "") {
				alert("비밀번호를 입력해 주세요!")
				$("#upwd").focus();
				return;
			} else if (upwd != $("#reupwd").val()) {
				alert("비밀번호가 일치하지 않습니다!");
				$("#reupwd").focus();
				return;
			}

			$.ajax({
				type : 'put',
				url : '/myRest/modifyinfo/' + uno,
				header : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "PUT"
				},
				contentType : "application/json",
				data : JSON.stringify({
					upwd : upwd,
					uemail : uemail,
					unickname : unickname,

				}),
				dataType : 'text',
				success : function(result) {
					if(result == 'SUCCESS') {
						alert(uname + "님의 정보가 수정 되었습니다.");
						self.location = "/user/myinfo";
					}
				}
				
			}) // ajax

    	
    	}) // 수정버튼
	
	}); // document


    </script>

</body>

</html>
