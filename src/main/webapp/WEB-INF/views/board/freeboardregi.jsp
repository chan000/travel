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
</head>
<body>
	<%@ include file="/WEB-INF/views/header/header.jsp"%>
	<header class="masthead">
		<!-- 메인 내용 들어가는 곳 -->
		
		<section class="container">
		<form action="/board/freeboardregi" method="post">
                  <div class="row" style="width:1000px">
                  </div>
                  <div class="column">
                    <div >
                        <div class="panel-body" style="margin-top: 17%">
                        <h1 style="text-align: center;">자유게시판</h1>
                            <div class="form-group">
                              <label class="col-sm-1 ">제목</label>
                              <div class="col-sm-11">
                                <input type="text" class="form-control" id="title" name="title" >
                              </div>
                            </div>
                            <div class="form-group">
                              <label class="col-sm-1 control-label">작성자</label>
                              <div class="col-sm-11">
                                <input class="form-control" value="${login.uname }" readonly type="text" name="writer" >
                              </div>
                            </div>
                            <div class="form-group">
                              <label class="col-sm-1 control-label">내용</label>
                              <div class="col-sm-11">
                                <textarea class="form-control" rows="6" id="contents" name="contents"></textarea>
                              </div>
                            </div>
                          <input id="submitBtn" class="btn btn-primary" type="submit" value="제출">
                          
                        </div>
                    </div>
                  </div>
                  <!-- page end-->
              </form>
              </section>
	</header>
</body>
</html>
