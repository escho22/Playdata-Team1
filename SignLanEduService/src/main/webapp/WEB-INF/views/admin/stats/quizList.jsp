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
<title>Admin - Quiz Statistics</title>
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
<h2>Admin - Quiz Statistics</h2>
<hr>
<table>
<thead>
<tr>
	<th>번호</th>
	<th>단어</th>
	<th>단어내용</th>
	<th>정답여부</th>
	<th>일치도</th>
	<th>날짜</th>
</tr>
</thead>
<tbody>
	<c:forEach var="quizVO" items="${qlist}">
	<c:choose>
	<c:when test="${quizVO.q_correct == 0 }"> <c:set var="correct" value="X"/> </c:when>
	<c:otherwise> <c:set var="correct" value="O"/> </c:otherwise>
	</c:choose>
	<tr>
		<td>${quizVO.q_num }</td>
		<td>${mlist[quizVO.m_num-1].m_id }</td>
		<td>${wlist[quizVO.w_num-1].w_word }</td>
		<td>${correct }</td>
		<td>${quizVO.q_percent }</td>
		<td>${quizVO.q_date }</td>
	</tr>
	</c:forEach>
</tbody>
<tfoot>
<tr>
	<th colspan="6">총 ${fn:length(qlist) }명</th>
</tr>
</tfoot>
</table>
<hr>
<A href='<%=request.getContextPath()%>/admin/stats/choose'>통계</A> <br>
<A href='<%=request.getContextPath()%>/'>Home</A>
</section>
</body>
</html>