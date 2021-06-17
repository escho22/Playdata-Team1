<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" />
<title>Learn - Level 4</title>
</head>
<body>
Learn - Level 4
<hr>
<table border="1">
	<thead>
		<tr>
			<th colspan="2">단어 선택</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="wordVO" items="${list}">
		<tr>
			<td>${wordVO.w_word }</td>
			<td><A href='/learn/level4/learn_4_${wordVO.w_num }'>학습하기</A></td>
		</tr>
		</c:forEach>
	</tbody>
	<tfoot>
		<tr>
			<th colspan="2">
				<A href='/learn/level4/learn_4_1'>처음부터</A>
			</th>
		</tr>
	</tfoot>
</table>
<hr>
<A href='/learn/select'>목록</A>
<hr>
</body>
</html>