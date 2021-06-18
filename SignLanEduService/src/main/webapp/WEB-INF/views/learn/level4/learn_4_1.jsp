<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" />
<title>Level 4 - 1</title>
</head>
<body>
학습페이지<br>
Level 4 - 1
<hr>

<table>
<tr><td colspan="2"> 단어 </td></tr>
<tr> <td> 동영상 </td> <td> 웹캠 </td> </tr>
</table>

<div id="container">
<video autoplay="true" id="video" width="800"></video>
</div>

<script src="${pageContext.request.contextPath}js/webcam_learn.js"></script>

<table>
<tr> <td>이전</td> <td><A href='/learn/level4/choose'>목록</A></td> <td><A href='/learn/level4/learn_4_2'>다음</A></td> </tr>
</table>

</body>
</html>