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
<title>강원도</title>
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
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.city {
	display: none
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/header/header.jsp"%>
	<header class="masthead">
		<!-- 메인 내용 들어가는 곳 -->
		<div class="container d-flex h-100 align-items-center">

			<div style="position: relative; top: 10px; left: 180px;" >
                    <img src="/resources/assets/img/do/강원도.png">


 <!-- ---------- 춘천시 버튼 ---------- -->
 <button onclick="document.getElementById('id01').style.display='block'"
 style="position: absolute; left: 150px; top: 250px; height: 120px; width: 130px;"
 class="w3-button w3-black">춘천시</button>
<div id="id01" class="w3-modal">
 <div class="w3-modal-content w3-card-4 w3-animate-zoom">


     <span onclick="document.getElementById('id01').style.display='none'"
         class="w3-button w3-white w3-xlarge w3-display-topright">&times;</span>
     <h2>춘천시</h2>

     <div class="w3-bar w3-border-bottom">
         <button class="tablink w3-bar-item w3-button" onclick="openCity(event, 'London')">관광</button>
         <button class="tablink w3-bar-item w3-button" onclick="openCity(event, 'Paris')">문화</button>
         <button class="tablink w3-bar-item w3-button" onclick="openCity(event, 'Tokyo')">음식</button>
     </div>
     <div id="London" class="w3-container city">
         <p>제천, 단양 관광지</p>
         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
             sed do eiusmod tempor incididunt ut labore et dolore magna
             aliqua. Ut enim ad minim veniam, quis nostrud exercitation
             ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
     </div>
     <div id="Paris" class="w3-container city">
         <p>Paris is the capital of France.</p>
         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
     </div>
     <div id="Tokyo" class="w3-container city">
         <p>Tokyo is the capital of Japan.</p>
         <br>
     </div>
     <div class="w3-container w3-light-grey w3-padding">
         <button class="w3-button w3-right w3-white w3-border"
             onclick="document.getElementById('id01').style.display='none'">닫기</button>
     </div>
 </div>
</div>

<!-- ---------- 속초시 버튼 ---------- -->
<button onclick="document.getElementById('id01').style.display='block'"
style="position: absolute; left: 430px; top: 170px; "
class="w3-button w3-black">속초시</button>
<div id="id01" class="w3-modal">
<div class="w3-modal-content w3-card-4 w3-animate-zoom">


    <span onclick="document.getElementById('id01').style.display='none'"
        class="w3-button w3-white w3-xlarge w3-display-topright">&times;</span>
    <h2>속초시</h2>

    <div class="w3-bar w3-border-bottom">
        <button class="tablink w3-bar-item w3-button" onclick="openCity(event, 'London')">관광</button>
        <button class="tablink w3-bar-item w3-button" onclick="openCity(event, 'Paris')">문화</button>
        <button class="tablink w3-bar-item w3-button" onclick="openCity(event, 'Tokyo')">음식</button>
    </div>
    <div id="London" class="w3-container city">
        <p>제천, 단양 관광지</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
            sed do eiusmod tempor incididunt ut labore et dolore magna
            aliqua. Ut enim ad minim veniam, quis nostrud exercitation
            ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="Paris" class="w3-container city">
        <p>Paris is the capital of France.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
    </div>
    <div id="Tokyo" class="w3-container city">
        <p>Tokyo is the capital of Japan.</p>
        <br>
    </div>
    <div class="w3-container w3-light-grey w3-padding">
        <button class="w3-button w3-right w3-white w3-border"
            onclick="document.getElementById('id01').style.display='none'">닫기</button>
    </div>
</div>
</div>

 <!-- ---------- 평창군 버튼 ---------- -->
 <button onclick="document.getElementById('id01').style.display='block'"
 style="position: absolute; left: 410px; top: 350px; height: 180px; width: 100px; transform: rotate(30deg);"
 class="w3-button w3-black">평창군</button>
<div id="id01" class="w3-modal">
 <div class="w3-modal-content w3-card-4 w3-animate-zoom">


     <span onclick="document.getElementById('id01').style.display='none'"
         class="w3-button w3-white w3-xlarge w3-display-topright">&times;</span>
     <h2>평창군</h2>

     <div class="w3-bar w3-border-bottom">
         <button class="tablink w3-bar-item w3-button" onclick="openCity(event, 'London')">관광</button>
         <button class="tablink w3-bar-item w3-button" onclick="openCity(event, 'Paris')">문화</button>
         <button class="tablink w3-bar-item w3-button" onclick="openCity(event, 'Tokyo')">음식</button>
     </div>
     <div id="London" class="w3-container city">
         <p>제천, 단양 관광지</p>
         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
             sed do eiusmod tempor incididunt ut labore et dolore magna
             aliqua. Ut enim ad minim veniam, quis nostrud exercitation
             ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
     </div>
     <div id="Paris" class="w3-container city">
         <p>Paris is the capital of France.</p>
         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
     </div>
     <div id="Tokyo" class="w3-container city">
         <p>Tokyo is the capital of Japan.</p>
         <br>
     </div>
     <div class="w3-container w3-light-grey w3-padding">
         <button class="w3-button w3-right w3-white w3-border"
             onclick="document.getElementById('id01').style.display='none'">닫기</button>
     </div>
 </div>
</div>

<!-- ---------- 강릉시 버튼 ---------- -->
<button onclick="document.getElementById('id01').style.display='block'"
style="position: absolute; left: 550px; top: 300px; height: 150px; width: 70px;  transform: rotate(-45deg);"
class="w3-button w3-black">강릉시</button>
<div id="id01" class="w3-modal">
<div class="w3-modal-content w3-card-4 w3-animate-zoom">


    <span onclick="document.getElementById('id01').style.display='none'"
        class="w3-button w3-white w3-xlarge w3-display-topright">&times;</span>
    <h2>강릉시</h2>

    <div class="w3-bar w3-border-bottom">
        <button class="tablink w3-bar-item w3-button" onclick="openCity(event, 'London')">관광</button>
        <button class="tablink w3-bar-item w3-button" onclick="openCity(event, 'Paris')">문화</button>
        <button class="tablink w3-bar-item w3-button" onclick="openCity(event, 'Tokyo')">음식</button>
    </div>
    <div id="London" class="w3-container city">
        <p>제천, 단양 관광지</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
            sed do eiusmod tempor incididunt ut labore et dolore magna
            aliqua. Ut enim ad minim veniam, quis nostrud exercitation
            ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="Paris" class="w3-container city">
        <p>Paris is the capital of France.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
    </div>
    <div id="Tokyo" class="w3-container city">
        <p>Tokyo is the capital of Japan.</p>
        <br>
    </div>
    <div class="w3-container w3-light-grey w3-padding">
        <button class="w3-button w3-right w3-white w3-border"
            onclick="document.getElementById('id01').style.display='none'">닫기</button>
    </div>
</div>
</div>
				
				
				
				
				
				
				
				
			</div>
			<!-- style="position: relative; top: 30px;" -->
		</div>
		<!-- class="container d-flex h-100 align-items-center" -->
	</header>
	<script>
		document.getElementsByClassName("tablink")[0].click();

		function openCity(evt, cityName) {
			var i, x, tablinks;
			x = document.getElementsByClassName("city");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablink");
			for (i = 0; i < x.length; i++) {
				tablinks[i].classList.remove("w3-light-grey");
			}
			document.getElementById(cityName).style.display = "block";
			evt.currentTarget.classList.add("w3-light-grey");
		}
	</script>
</body>
</html>
