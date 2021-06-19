<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>SignEdu - My Quiz Record</title>
</head>
<body>
<h2>${memberVO.m_id } 님의 퀴즈 이력</h2>
<hr>
<table border="1">
	<thead>
		<tr>
			<th>퀴즈 단어</th>
			<th>일시</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="quizVO" items="${list}">
		<tr>
			<td>${wlist[quizVO.w_num-1].w_word }</td>
			<td>${quizVO.q_date }</td>
		</tr>
		</c:forEach>
	</tbody>
	<tfoot>
		<tr>
			<th colspan="2">총 ${fn:length(list) }건</th>
		</tr>
	</tfoot>
</table>

<hr>
<A href='/member/myInfo'> myInfo </A> <br>
<A href='/'> Home </A>

</body>
</html>