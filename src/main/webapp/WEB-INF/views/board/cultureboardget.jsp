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
<title>문화상세보기</title>
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
	<%@ include file="/WEB-INF/views/header/header.jsp"%>
	<header class="masthead">
		<!-- 메인 내용 들어가는 곳 -->

  <div class="col-sm-6 aligned center"
			style="position: absolute; margin-left: 25%; margin-top: 10%;">
            <!-- 상단 -->
            <div class="titleType1">
                <div class="area_tag">

                    <div class="" style="text-align: center;">
                        <h1>dddd</h1>
                    </div>
                    <div>
                        <h5 style="text-align: center;">서울시 송파구</h5>
                    </div>

                </div>

                <div>
                   <div style="text-align: center;"> <img src="\assets\img\map\경상도1.png">
                    <img src="\assets\img\map\경상도1.png">
                    <img src="\assets\img\map\경상도1.png"></div>
                 

                </div>

                <h2 id="topTitle"></h2>

                <div class="area_address" id="topAddr">
                </div>
                <!-- 내용 -->
                <div class="db_cont_detail">
                    <!-- 상세정보 -->
                    <div id="detailGo">
                        <hr>
                        <!-- 내용더보기 -->
                        <div class="wrap_contView">
                            <h3>상세정보</h3>
                            
                            <div class="blind">
                                할아버지 공장은 폐염색 공장의 할아버지 감성을 살려 할아버지 공장으로 불리고 있다. 성수동 복합 문화 공간으로 공연, 전시, 대관, 카페, 식사까지 이용 가능합니다.
                            </div>
                            <div class="area_txtView top ms_detail">
                                <div class="inr_wrap">
                                    <div class="inr">
                                        <p>
                                        </p>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                        <!-- //내용더보기 -->
                    </div>
                </div>
            </div>
        </div>

	</header>
</body>
</html>
