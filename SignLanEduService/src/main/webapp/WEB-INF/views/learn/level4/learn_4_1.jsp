<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<form action="/learn/level4/learn_4_1" method="POST" id="creatLearn" name='lfrm4_1'>
	<input type='hidden' name='m_id' id='m_id' value="${sessionScope.id }">
	<input type='hidden' name='w_num' id='w_num' value="${wordVO.w_num }">
</form>
<button type="submit" form="creatLearn">학습완료</button>
<hr>
<DIV class='message'>
<c:choose>
        <c:when test="${param.cnt == 1 }">
          학습완료, 다음문제로 넘어가 주세요.
          <hr>
        </c:when>
        <c:otherwise>
          학습 미완료
          <hr>
        </c:otherwise>
      </c:choose>
</DIV>
<table>
<tr> <td>이전</td> <td><A href='/learn/level4/choose'>목록</A></td> <td><A href='/learn/level4/learn_4_2'>다음</A></td> </tr>
</table>

<script src="/js/webcam_learn.js"></script>
</body>
</html>