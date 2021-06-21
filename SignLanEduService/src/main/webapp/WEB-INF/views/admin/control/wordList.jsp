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
<title>Admin - Word List</title>
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
<h2>Admin - Word List</h2>
<hr>
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>단어</th>
			<th>단어내용</th>
			<th>경로</th>
			<th>모델번호</th>
			<th>난이도</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="wordVO" items="${list}">
		<tr>
			<td>${wordVO.l_num }</td>
			<td>${wordVO.w_word }</td>
			<td>${wordVO.w_explain }</td>
			<td>${wordVO.w_path }</td>
			<td>${wordVO.w_index }</td>
			<td>${wordVO.w_difficulty }</td>
		</tr>
		</c:forEach>
	</tbody>
	<tfoot>
		<tr>
			<th colspan="6">총 ${fn:length(list) }개의 단어</th>
		</tr>
	</tfoot>
</table>
<hr>
<A href='/admin/control/choose'>관리</A> <br>
<A href='/'>Home</A>
</section>
</body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="<%=request.getContextPath()%>/js/scripts.js"></script>
</html>