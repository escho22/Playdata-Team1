<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.8.0/p5.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.8.0/addons/p5.dom.min.js"></script>

<title>Quiz Level 4 - 1</title>
</head>
<body>
<script src="/js/webcam_detection.js"></script>
	퀴즈페이지
	<br>
	<h1>Quiz Level 4 - 1</h1>
	<hr>

	<table>
		<tr>
			<td>${word}</td>
			<td><button id="capture">capture</button></td>
			<td><button id="submit">submit</button></td>
		</tr>
	</table>
	<hr>


	<table>
		<tr>
			<td>이전</td>
			<td><A href='/quiz/level4/choose'>목록</A></td>
			<td><A href='/quiz/level4/quiz_4_2'>다음</A></td>
		</tr>
	</table>
</body>
</html>