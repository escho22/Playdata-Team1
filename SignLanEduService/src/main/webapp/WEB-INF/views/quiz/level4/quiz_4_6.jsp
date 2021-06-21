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
	  	<title>Quiz - Level 4-6</title>
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
				width: 10%;
				height: 30px;
				background-color: #04AA6D;
				text-align: center; /* To center it horizontally (if you want) */
				line-height: 30px; /* To center it vertically */
				color: white;
			}
			
			#container-canvas1, #container-canvas2 {
			 	transform: rotateY(180deg);
			   -webkit-transform:rotateY(180deg); /* Safari and Chrome */
			   -moz-transform:rotateY(180deg); /* Firefox */
			}
			
		</style>	
	</head>

	<body>
		<p id="answer" style="display: none; height: 100px;">${index}</p>
	
		<script src="/js/webcam_detection.js"></script>
		<script src="/js/quiz_result.js"></script>
	
		<h1>Quiz Level 4 - 6</h1>
		<hr>
		<div id="w_num" style="display: none;">${w_num}</div>
		<div id="problem">Quiz 단어:</div>
		<div id="problem_word">${word}</div>
		<div id="message"></div>
	
		<hr>
		<table>
			<tr>
				<td><button id="capture" class="btn btn-info">capture</button></td>
				<td><button id="submit" class="btn btn-info">submit</button></td>
			</tr>
		</table>
	
		<br>
		<div id="myProgress">
			<div id="myBar"></div>
		</div>
	
		<div id="container-canvas1"></div>
		<div id="container-canvas2"></div>
	
		<hr>
	
		<table>
			<tr>
				<td><button type="button" id="save_btn" class="btn btn-info">저장</button></td>
				<td><button id="btn_next" type="button"
						onclick="location.href='/quiz/level4/quiz_4_5'"
						class="btn btn-info">이전</button></td>
				<td><button id="btn_list" type="button"
						onclick="location.href='/quiz/level4/choose'" class="btn btn-info">목록</button></td>
				<td><button id="btn_next" type="button"
						onclick="location.href='/quiz/finish'"
						class="btn btn-info">마침</button></td>
			</tr>
		</table>
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