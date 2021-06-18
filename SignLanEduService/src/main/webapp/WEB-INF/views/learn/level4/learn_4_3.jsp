<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" />
<title>Level 4 - 3</title>
</head>
<body>
학습페이지<br>
Level 4 - 3
<hr>

<table border="1">
<tr><td colspan="2">단어 : ${wordVO.w_word}</td></tr>
<tr> 
	<td><video src='${wordVO.w_path}' width='640' height="360" controls autoplay loop></video> </td> 
	<td> 
		<div id="container">
			<video autoplay width='640' height="360" id="videoElement"></video>
		</div> 
	</td> 
</tr>
</table>

<hr>
<table>
<tr> <td><A href='/learn/level4/learn_4_2'>이전</A></td> <td><A href='/learn/level4/choose'>목록</A></td> <td><A href='/learn/level4/learn_4_4'>다음</A></td> </tr>
</table>

<script src="/js/webcam_learn.js"></script>
</body>
</html>