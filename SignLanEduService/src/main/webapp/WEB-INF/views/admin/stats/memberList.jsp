<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Admin - Member Statistics</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />    
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
 
<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@1,700&display=swap" rel="stylesheet" />

<!-- Core theme CSS (includes Bootstrap)-->
<link href="<%=request.getContextPath()%>/css/styles.css" rel="stylesheet" type="text/css"/>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>  

<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="<%=request.getContextPath()%>/js/scripts.js"></script>
</head>
<body>
<section class="masthead">
<h2>Admin - Member Statistics</h2>
<hr>
<table>
<thead>
<tr>
	<th>회원번호</th>
	<th>ID</th>
	<th>이름</th>
	<th>생년월일</th>
	<th>성별</th>
	<th>이메일</th>
	<th>가입일</th>
	<th>최근로그인</th>
	<th>포인트</th>
	<th>관리자여부</th>
</tr>
</thead>
<tbody>
	<c:forEach var="memberVO" items="${list}">
	<c:choose>
	<c:when test="${memberVO.m_sex == 0 }"> <c:set var="sex" value="남성"/> </c:when>
	<c:otherwise> <c:set var="sex" value="여성"/> </c:otherwise>
	</c:choose>
	<c:choose>
	<c:when test="${memberVO.m_is_admin == 0 }"> <c:set var="is_admin" value="일반"/> </c:when>
	<c:otherwise> <c:set var="is_admin" value="관리자"/> </c:otherwise>
	</c:choose>
	<tr>
		<td>${memberVO.m_num }</td>
		<td>${memberVO.m_id }</td>
		<td>${memberVO.m_name }</td>
		<td>${memberVO.m_birth }</td>
		<td>${sex }</td>
		<td>${memberVO.m_email }</td>
		<td>${memberVO.m_register }</td>
		<td>${memberVO.m_recent }</td>
		<td>${memberVO.m_point }점</td>
		<td>${is_admin }</td>
	</tr>
	</c:forEach>
</tbody>
<tfoot>
<tr>
	<th colspan="10">총 ${fn:length(list) }명</th>
</tr>
</tfoot>
</table>
<hr>
<A href='/admin/stats/choose'>통계</A> <br>
<A href='/'>Home</A>
</section>
</body>
</html>