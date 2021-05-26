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
<title>문화 게시판</title>
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
<link href="/resources/css/button.css" rel="stylesheet" />
</head>
<body>
	<%@ include file="/WEB-INF/views/header/header.jsp"%>
	<header class="masthead1">
		<h1>문화</h1>
	</header>
 <section class="about-section text-center" id="about">
	
		<div class="row1">
		</div>
</section>
</body>
<script type="text/javascript">
$(document).ready(function(){
	
	function getCultureList(page){
		$.getJSON("/board/culturesite/"+page, function(data){
			
			var str = "";
			
			$(data.list).each(function(){
				
				str +=  "<div class='col-xs-12 col-sm-6 col-md-3'>"
                + "<div class='thumbnail'>"
                + "<img src='/resources/assets/img/culture/thum/"+this.cbthumnail+"'>"
                + "<div class='caption'>"
                + "<h3>"+this.cbtitle+"</h3>"
                + "<p>"+this.cbinfo+"</p>"
                + "<div class='button-container-1'><span class='mas'>"+this.cbtitle+"</span>"
                + "<button id='work' type='button' name='Hover'>"+this.cbinfo+"</button>"
                + "</div></div></div></div>"
                
                   
				
				
			});//each
			$(".row1").html(str);
			
		});//getJson
		
		
		
	}//getCultureList
	getCultureList(1);
	
})//document

	
</script>


</html>
