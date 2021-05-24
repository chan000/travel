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
				<div class="column" style="position: relative; top: 200px;">
					<h1 style="text-align: center;">회원가입</h1>
					<div class="form-inline d-flex">
						아이디 : <input value="${login.uid }"
							class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0"
							 name="uid" placeholder="아이디를 입력해주세요." /> 
							<span id="checkID">중복체크</span><br> <span id="resultComment"></span>

					</div>
					<div class="form-inline d-flex">
						비밀번호 : <input
							class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0"
							id="upwd" name="upwd" type="password"  />

					</div>
					<div class="form-inline d-flex">
						이름 : 
						<input value="${login.uname }"
							class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0"
							 name="uname" placeholder="이름을 입력해주세요." />

					</div>
					<div class="form-inline d-flex">
						이메일 : <input
							class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0"
							 id="uemail" name="uemail"  />

					</div>
					<div class="form-inline d-flex">
						닉네임 : <input value="${login.unickname }"
							class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0"
							id="unickname" name="unickname"  />

					</div>
					
						  <div class="form-group row">
                        <button class="btn btn-primary btn-lg col-lg-1 col-lg-offset-4" id="modifybtn" type="submit"><i class="icofont-check-circled"></i></button>
                        <a href="/user/myinfo" class="btn btn-default btn-lg col-lg-1 col-lg-offset-1" type="button"><i class="icofont-close-circled"></i></a>
                    </div>
				</div>
			</div>
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
				var uemail = data.uemail;
				$("#uemail").val(uemail);
				var unickname = data.unickname;
				$("#unickname").val(unickname);
// 				var maddress = data.maddress;
// 				$("#maddress").val(maddress);
// 				var gender = data.gender;
// 				$("#gender").val(gender);
// 				var military = data.military;
// 				$("#military").val(military);
// 				var marry = data.marry;
// 				$("#marry").val(marry);
// 				var vacachk = data.vacachk;
// 				$("#vacachk").val(vacachk);
			})
		}
		getMyInfo();
    	
    	$("#modifybtn").on("click", function(e) {
			e.preventDefault();
			
			
			
			
			var upwd = $("#upwd").val();
			var uemail = $("#uemail").val();
			var unickname = $("#unickname").val();
			
			
			console.log(upwd);
			console.log(unickname);
			console.log(uemail);
			
			if (upwd == "") {
				alert("비밀번호를 입력해 주세요!")
				$("#upwd").focus();
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
				
			}) // 수정 요함
			

	
    	
    	})
		
    	
    	
//     	var deptno = $("#hidememdeptno").data("deptno");
    	
//     	$('#deptno').val(deptno).prop("selected", true);
	});


    </script>

</body>

</html>
