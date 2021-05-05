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
<title>제주도</title>
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

			<div style="position: relative; left: 130px;" >
                    <img src="/resources/assets/img/do/제주도.png">

 <!-- ---------- 애월읍 버튼 ---------- -->
 <button onclick="document.getElementById('id01').style.display='block'"
 style="position: absolute; left: 250px; top: 90px; height: 100px; width: 100px; border-radius: 30px;"
 class="w3-button w3-black">애월읍</button>
 <div id="id01" class="w3-modal">
 <div class="w3-modal-content w3-card-4 w3-animate-zoom">
 
 
     <span onclick="document.getElementById('id01').style.display='none'"
         class="w3-button w3-white w3-xlarge w3-display-topright">&times;</span>
     <h2>애월읍</h2>
 
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

 <!-- ---------- 조천읍 버튼 ---------- -->
 <button onclick="document.getElementById('id01').style.display='block'"
 style="position: absolute; left: 350px; top: 80px; height: 100px; width: 100px; border-radius: 30px;"
 class="w3-button w3-black">조천읍</button>
 <div id="id01" class="w3-modal">
 <div class="w3-modal-content w3-card-4 w3-animate-zoom">
 
 
     <span onclick="document.getElementById('id01').style.display='none'"
         class="w3-button w3-white w3-xlarge w3-display-topright">&times;</span>
     <h2>조천읍</h2>
 
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

 <!-- ---------- 구좌읍 버튼 ---------- -->
 <button onclick="document.getElementById('id01').style.display='block'"
 style="position: absolute; left: 470px; top: 20px; height: 130px; width: 300px; border-radius: 30px;"
 class="w3-button w3-black">구좌읍</button>
 <div id="id01" class="w3-modal">
 <div class="w3-modal-content w3-card-4 w3-animate-zoom">
 
 
     <span onclick="document.getElementById('id01').style.display='none'"
         class="w3-button w3-white w3-xlarge w3-display-topright">&times;</span>
     <h2>구좌읍</h2>
 
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

 <!-- ---------- 우도면 버튼 ---------- -->
 <button onclick="document.getElementById('id01').style.display='block'"
 style="position: absolute; left: 819px; top: 60px; width: 60px; height: 60px; border-radius: 30px;"
 class="w3-button w3-black">우도면</button>
 <div id="id01" class="w3-modal">
 <div class="w3-modal-content w3-card-4 w3-animate-zoom">
 
 
     <span onclick="document.getElementById('id01').style.display='none'"
         class="w3-button w3-white w3-xlarge w3-display-topright">&times;</span>
     <h2>우도면</h2>
 
     <div class="w3-bar w3-border-bottom">
         <button class="tablink w3-bar-item w3-button" onclick="openCity(event, 'London')">관광</button>
         <button class="tablink w3-bar-item w3-button" onclick="openCity(event, 'Paris')">문화</button>
         <button class="tablink w3-bar-item w3-button" onclick="openCity(event, 'Tokyo')">음식</button>
     </div>
     <div id="London" class="w3-container city">
         <p>우도면</p>
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

  <!-- ---------- 성산읍 버튼 ---------- -->
  <button onclick="document.getElementById('id01').style.display='block'"
  style="position: absolute; left: 630px; top: 150px; height: 220px; width: 130px; border-radius: 30px;"
  class="w3-button w3-black">성산읍</button>
  <div id="id01" class="w3-modal">
  <div class="w3-modal-content w3-card-4 w3-animate-zoom">
  
  
      <span onclick="document.getElementById('id01').style.display='none'"
          class="w3-button w3-white w3-xlarge w3-display-topright">&times;</span>
      <h2>성산읍</h2>
  
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

  <!-- ---------- 표선면 버튼 ---------- -->
  <button onclick="document.getElementById('id01').style.display='block'"
  style="position: absolute; left: 480px; top: 180px; height: 220px; width: 145px; border-radius: 30px;"
  class="w3-button w3-black">표선면</button>
  <div id="id01" class="w3-modal">
  <div class="w3-modal-content w3-card-4 w3-animate-zoom">
  
  
      <span onclick="document.getElementById('id01').style.display='none'"
          class="w3-button w3-white w3-xlarge w3-display-topright">&times;</span>
      <h2>표선면</h2>
  
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

  <!-- ---------- 남원읍 버튼 ---------- -->
  <button onclick="document.getElementById('id01').style.display='block'"
  style="position: absolute; left: 330px; top: 195px; height: 220px; width: 125px; border-radius: 30px; transform: rotate(10deg);"
  class="w3-button w3-black">남원읍</button>
  <div id="id01" class="w3-modal">
  <div class="w3-modal-content w3-card-4 w3-animate-zoom">
  
  
      <span onclick="document.getElementById('id01').style.display='none'"
          class="w3-button w3-white w3-xlarge w3-display-topright">&times;</span>
      <h2>남원읍</h2>
  
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

  <!-- ---------- 안덕면 버튼 ---------- -->
  <button onclick="document.getElementById('id01').style.display='block'"
  style="position: absolute; left: 220px; top: 195px; height: 190px; width: 100px; border-radius: 30px; transform: rotate(15deg);"
  class="w3-button w3-black">안덕면</button>
  <div id="id01" class="w3-modal">
  <div class="w3-modal-content w3-card-4 w3-animate-zoom">
  
  
      <span onclick="document.getElementById('id01').style.display='none'"
          class="w3-button w3-white w3-xlarge w3-display-topright">&times;</span>
      <h2>안덕면</h2>
  
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

  <!-- ---------- 대정읍 버튼 ---------- -->
  <button onclick="document.getElementById('id01').style.display='block'"
  style="position: absolute; left: 0px; top: 380px;  width: 380px; height: 70px; border-radius: 30px; transform: rotate(15deg);"
  class="w3-button w3-black">대정읍</button>
  <div id="id01" class="w3-modal">
  <div class="w3-modal-content w3-card-4 w3-animate-zoom">
  
  
      <span onclick="document.getElementById('id01').style.display='none'"
          class="w3-button w3-white w3-xlarge w3-display-topright">&times;</span>
      <h2>대정읍</h2>
  
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

   <!-- ---------- 한경면 버튼 ---------- -->
   <button onclick="document.getElementById('id01').style.display='block'"
   style="position: absolute; left: 50px; top: 200px; height: 160px; width: 110px; border-radius: 30px; transform: rotate(-35deg);"
   class="w3-button w3-black">한경면</button>
   <div id="id01" class="w3-modal">
   <div class="w3-modal-content w3-card-4 w3-animate-zoom">
   
   
       <span onclick="document.getElementById('id01').style.display='none'"
           class="w3-button w3-white w3-xlarge w3-display-topright">&times;</span>
       <h2>한경면</h2>
   
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

   <!-- ---------- 한림읍 버튼 ---------- -->
   <button onclick="document.getElementById('id01').style.display='block'"
   style="position: absolute; left: 130px; top: 120px; height: 170px; width: 120px; border-radius: 30px;"
   class="w3-button w3-black">한림읍</button>
   <div id="id01" class="w3-modal">
   <div class="w3-modal-content w3-card-4 w3-animate-zoom">
   
   
       <span onclick="document.getElementById('id01').style.display='none'"
           class="w3-button w3-white w3-xlarge w3-display-topright">&times;</span>
       <h2>한림읍</h2>
   
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
				
				
				
			</div><!-- style="position: relative; top: 30px;" -->
		</div><!-- class="container d-flex h-100 align-items-center" -->	
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
