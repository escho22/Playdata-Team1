<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" />
<title>Level 4 - 4</title>
</head>
<body>
학습페이지<br>
Level 4 - 4
<hr>

<table border="1">
<tr><td colspan="2">단어 : ${wordVO.w_word}</td></tr>
<tr> 
	<td><video src='${wordVO.w_path}' width='400' controls autoplay></video>
	</td> <td> 웹캠 </td> 
</tr>
</table>

<hr>
<table>
<tr> <td><A href='/learn/level4/learn_4_3'>이전</A></td> <td><A href='/learn/level4/choose'>목록</A></td> <td><A href='/learn/level4/learn_4_5'>다음</A></td> </tr>
</table>

</body>
</html>