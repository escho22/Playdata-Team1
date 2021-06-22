<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
    <head>
	    <meta charset="utf-8" />
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	    <meta name="description" content="" />
	    <meta name="author" content="" />
	    <!-- 페이지 탭에 표시될 아이콘 및 페이지명 -->
	  	<title>Quiz - Level 4</title>
	    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
	     
	    <!-- Bootstrap icons-->
	   	<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
	     
	    <!-- Google fonts-->
	    <link rel="preconnect" href="https://fonts.gstatic.com" />
	    <link href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap" rel="stylesheet" />
	    <link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap" rel="stylesheet" />
	    <link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap" rel="stylesheet" />
	    <link href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@1,700&display=swap" rel="stylesheet" />

	    <!-- Core theme CSS (includes Bootstrap)-->
	    <link href="<%=request.getContextPath()%>/css/styles.css" rel="stylesheet" type="text/css"/>
	
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>  
		
		<!-- Bootstrap core JS-->
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
	    <script src="<%=request.getContextPath()%>/js/scripts.js"></script> 
	</head>
	
<body>
	<body>
		<section class="quiz">
			<div class="container px-5">
	            <div class="row gx-1">
					<div class="mb-5 mb-lg-0 text-lg-start fs-3">
					Quiz :: level 4
					<hr>
					</div>
					<div class="py-4">
						<div class="text-center">
							<h1 class="h3 text-gray-900 mb-5 font-card">Level 4 Completed! <i class="bi bi-stars" style="font-size: 2rem;"></i></h1>
							<div class="h4 font-card font-blue">
								<img src='<%=request.getContextPath()%>/assets/img/welldone.png' width="440" height="200" alt="Well done!">
							</div>
							<div class="fs-3 mt-45">				
							Quiz End!						
							<br/>
							I am proud of you! Good Job! 
							</div>
							<br/>
						</div>
					</div>
					<hr>
					<div class="text-lg-end">
						<a href="<%=request.getContextPath()%>/quiz/select"> 목록 </a>
					</div>
				</div>
			</div>
		</section>
	</body>
</html>

