<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignEdu - My Learn</title>
</head>
<body>
<h2>${memberVO.m_id } 님의 학습 이력</h2>
<hr>
<table border="1">
	<thead>
		<tr>
			<th>학습 단어</th>
			<th>학습 일</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="learnVO" items="${list}">
		<tr>
			<td>${learnVO.w_num }</td>
			<td>${learnVO.l_date }</td>		
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
<A href='/'> Home </A>
</body>
</html>