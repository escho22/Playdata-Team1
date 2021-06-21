<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>SignEdu - My Record</title>
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
</head>
<body>
<section class="masthead">
<h2>${memberVO.m_id } 님의 학습 이력</h2> <br>
<table border="1">
	<thead>
		<tr>
			<th>학습 단어</th>
			<th>일시</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="learnVO" items="${llist}">
		<tr>
			<td>${wlist[learnVO.w_num-1].w_word }</td>
			<td>${learnVO.l_date }</td>
		</tr>
		</c:forEach>
	</tbody>
	<tfoot>
		<tr>
			<th colspan="2">총 ${fn:length(llist) }건</th>
		</tr>
	</tfoot>
</table>
<hr>
<h2>${memberVO.m_id } 님의 퀴즈 이력</h2> <br>
<table border="1">
	<thead>
		<tr>
			<th>퀴즈 단어</th>
			<th>일시</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="quizVO" items="${qlist}">
		<tr>
			<td>${wlist[quizVO.w_num-1].w_word }</td>
			<td>${quizVO.q_date }</td>
		</tr>
		</c:forEach>
	</tbody>
	<tfoot>
		<tr>
			<th colspan="2">총 ${fn:length(qlist) }건</th>
		</tr>
	</tfoot>
</table>
<hr>
<A href='/member/myInfo'> myInfo </A> <br>
<A href='/'> Home </A>
</section>
</body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>  

<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="<%=request.getContextPath()%>/js/scripts.js"></script>
</html>