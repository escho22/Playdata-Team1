<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<meta name="description" content="" />
		<meta name="author" content="" />
		<title>SignEdu - My Info</title>
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
	<h2>${memberVO.m_id }님의 정보</h2>
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
				<td><c:choose>
						<c:when test="${memberVO.m_sex == 0 }">남성</c:when>
						<c:otherwise>여성</c:otherwise>
					</c:choose></td>
				<td>${memberVO.m_email }</td>
				<td>${memberVO.m_register }</td>
				<td>${memberVO.m_recent }</td>
				<td>${memberVO.m_point }</td>
			</tr>
		</tbody>
	</table>
	<hr>
	<A href='/member/myLearnList'>나의 학습 이력</A>
	<br>
	<A href='/member/myQuizList'>나의 퀴즈 이력</A>
	<br>
	<A href='/'>Home</A>
</section>
</body>
</html>