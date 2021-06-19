<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignEdu - My Info</title>
</head>
<body>
<h2>${memberVO.m_id } 님의 정보</h2>
<hr>
<table border="1">
	<thead>
		<tr>
			<th>ID</th>
			<th>이름</th>
			<th>생년월일</th>
			<th>성별</th>
			<th>이메일</th>
			<th>가입일</th>
			<th>최근로그인</th>
			<th>포인트</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>${memberVO.m_id }</td>
			<td>${memberVO.m_name }</td>
			<td>${memberVO.m_birth }</td>			
			<td>
			<c:choose>
				<c:when test="${memberVO.m_sex == 0 }">남성</c:when>
				<c:otherwise>여성</c:otherwise>
			</c:choose>
			</td>
			<td>${memberVO.m_email }</td>
			<td>${memberVO.m_register }</td>
			<td>${memberVO.m_recent }</td>
			<td>${memberVO.m_point }</td>
		</tr>
	</tbody>
</table>
<hr>
<A href='/member/myLearnList'>나의 학습 이력</A> <br>
<A href='/member/myQuizList'>나의 퀴즈 이력</A> <br>
<A href='/'>Home</A>
</body>
</html>