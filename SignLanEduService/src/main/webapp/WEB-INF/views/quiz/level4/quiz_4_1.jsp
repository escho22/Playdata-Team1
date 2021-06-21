<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
	    <meta charset="utf-8" />
	    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	    <meta name="description" content="" />
	    <meta name="author" content="" />
	    <!-- 페이지 탭에 표시될 아이콘 및 페이지명 -->
	  	<title>Quiz - Level 4-1</title>
	    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
	     
	    <!-- Bootstrap icons-->
	   	<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
	     
	    <!-- Google fonts-->
	    <link rel="preconnect" href="https://fonts.gstatic.com" />
	    <link href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap" rel="stylesheet" />
	    <link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap" rel="stylesheet" />
	    <link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap" rel="stylesheet" />
	    <link href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@1,700&display=swap" rel="stylesheet" />
	    <link href="https://fonts.googleapis.com/css?family=Raleway:400,300,600,800,900" rel="stylesheet" type="text/css">
		
		
		<style>
			#myBar {
				width: 0%;
				height: 30px;
				background-color: #5433ff;
				text-align: center; /* To center it horizontally (if you want) */
				line-height: 30px; /* To center it vertically */
				color: white;
				margin-left: 0.95rem;
				margin-right: 0.95rem;
			}
			
			#container-canvas1, #container-canvas2 {
			 	transform: rotateY(180deg);
			   -webkit-transform:rotateY(180deg); /* Safari and Chrome */
			   -moz-transform:rotateY(180deg); /* Firefox */
			    margin-left: 18rem;
			}			
		</style>
	</head>

	<body>
		<section class="quiz">
				<div class="container px-4">
					<div class="mb-5 mb-lg-0 text-lg-start fs-3">
					Quiz :: level 4-1
					<hr>
					<div class="card o-hidden border-0 shadow-lg">
						<p id="answer" style="display: none; height: 100px;">${index}</p>
						
						<script src="<%=request.getContextPath()%>/js/webcam_detection.js"></script>
						<script src="<%=request.getContextPath()%>/js/quiz_result.js"></script>
						
						<div class="form-group text-center">
							<p id="w_num" style="display: none;">${w_num}</p>
							<div id="problem_word" class="h3 text-gray-900 mb-5 font-card mt-5 fs-2">${word}</div>
							<hr>
						</div>
						
						<div class="form-group row justify-content-center text-center">
							<div class="col-lg-3 pb-2 text-lg-end">
								<button id="capture" class="btn btn-outline-primary rounded-pill px-4 mb-2 mb-lg-0">capture</button>
							</div>
							<div class="col-lg-3 pb-2 text-lg-start">
								<button id="submit" class="btn btn-primary rounded-pill px-4 mb-2 mb-lg-0">submit</button>
							</div>

							<div id="message" style="text-align:center;"></div>
							<div id="display_word" style="visibility:hidden; text-align:center;"></div>
							<div id="display_conf" style="visibility:hidden; text-align:center;"></div>
					
							<br/>
							<div class="mx-2">
								<div id="myBar"></div>
							</div>
					
							<div id="container-canvas1"></div>
							<div id="container-canvas2"></div>
					
							<div class="form-group row justify-content-center text-center pt-4">
								<div class="col-lg-3 py-4 text-lg-end pt-lg-45">
									<span class="pointer fs-6 mt-lg-4" onclick="location.href='<%=request.getContextPath()%>/quiz/select'"><i class="bi bi-justify me-2 style="style="font-size: 1rem;"></i>목록</span>
								</div>
								<div class="col-lg-3 py-4 text-lg-center">
									<button type="button" id="save_btn" class="btn btn-outline-primary rounded-pill mb-lg-0 mx-1 px-3 fs-6 alertNext" type="submit" form="creatLearn">학습완료</button>
								</div>
								<div class="col-lg-3 py-4 text-lg-start pt-lg-45">
									<span class="pointer fs-6 mt-lg-4" onclick="location.href='<%=request.getContextPath()%>/quiz/level4/quiz_4_2'">다음<i class="bi bi-chevron-right ms-2 style="style="font-size: 1rem;"></i></span>				 
								</div>
						   </div>
					</div>
				</div>
			</div>
		</section>
	</body>
	
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="<%=request.getContextPath()%>/css/styles.css" rel="stylesheet" type="text/css"/>
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>  
		
	<!-- Bootstrap core JS-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/scripts.js"></script> 
	    
	<!-- Webcam - p5 Js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.8.0/p5.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.8.0/addons/p5.dom.min.js"></script>

</html>