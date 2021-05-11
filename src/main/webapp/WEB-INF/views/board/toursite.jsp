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
<link href="css/footprint.css" rel="stylesheet" />
    <link href="css/common.css" rel="stylesheet" />
    <link href="css/content.css" rel="stylesheet" />
</head>
<body>
	<%@ include file="/WEB-INF/views/header/header.jsp"%>
	<header class="masthead">
		<!-- 메인 내용 들어가는 곳 -->
		<div id="contents" style="position: relative; top: 150px;">

                <div class="tit_cont">
                   
                    <h2 class="tag">ddd</h2>
                    <a href="javascript:" class="btn_represch">새로고침</a>
                    
                </div>
        
                <div class="wrap_contView clfix">
        
                    <!-- 썸네일 리스트 -->
                    <div class="box_leftType1">
                        <div class="total_check">
                    
                        </div>
                        <h3 class="blind" id="blindsearchtype">최신순</h3>
                        <ul class="list_thumType flnon">
                            <li  class="bdr_nor">
                                <div class="photo">
                                    <a></a>                                    
                                    <img src="\assets\img\map\s1.png" >
                                </div>
                                    <div class="area_txt">
                                        <div class="tit">
                                            
                                            <a>ddd</a>
                                            <p>ddd</p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        
                            <!-- paging -->
                        <div class="page_box">
                            
                        </div>
                        <!-- //paging -->
                    </div>
                    <!-- //썸네일 리스트 -->
        
                    <div class="box_rightType1">
                        <!-- 태그 리스트 -->
                        <div class="area_tagList">
                        
                            <ul class="tag_list area_list js_one" id="arealist">
                                <li id="All"><button type="button" class="btn_all_active"><span>#전체</span></button></li>
                                <li id="1"><button type="button" class="btn"><span>#서울</span></button></li>
                                <li id="1"><button type="button" class="btn"><span>#경기</span></button></li>
                                <li id="1"><button type="button" class="btn"><span>#강원</span></button></li>
                                <li id="1"><button type="button" class="btn"><span>#충청</span></button></li>
                                <li id="1"><button type="button" class="btn"><span>#경상</span></button></li>
                                <li id="1"><button type="button" class="btn"><span>#전라</span></button></li>
                                <li id="39"><button type="button" class="btn"><span>#제주</span></button></li>
                            </ul>
                           
                            <ul class="tag_list cnt_list js_multi" id="taglist">
                            </ul>
        
                        </div>
                        
                       
                </div>
            </div>
            </div>
            <!-- //contents -->
	</header>
</body>
</html>
