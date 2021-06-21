<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
    <head>
	    <meta charset="utf-8" />
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	    <meta name="description" content="" />
	    <meta name="author" content="" />
	    <!-- 페이지 탭에 표시될 아이콘 및 페이지명 -->
	  	<title>Learn - Level 4-2</title>
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
학습페이지<br>
Level 4 - 2
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
<form action="<%=request.getContextPath()%>/learn/level4/learn_4_2" method="POST" id="creatLearn" name='lfrm4_2'>
	<input type='hidden' name='m_id' id='m_id' value="${sessionScope.id }">
	<input type='hidden' name='w_num' id='w_num' value="${wordVO.w_num }">
</form>
<button type="submit" form="creatLearn">학습완료</button>
<hr>
<DIV class='message'>
<c:choose>
        <c:when test="${param.cnt == 1 }">
          학습완료, 다음문제로 넘어가 주세요.
        </c:when>
        <c:otherwise>
          학습 미완료
        </c:otherwise>
      </c:choose>
</DIV>
<hr>
<table>
<tr> <td><A href='<%=request.getContextPath()%>/learn/level4/learn_4_1'>이전</A></td> <td><A href='<%=request.getContextPath()%>/learn/level4/choose'>목록</A></td> <td><A href='<%=request.getContextPath()%>/learn/level4/learn_4_3'>다음</A></td> </tr>
</table>
</section>
<script src="<%=request.getContextPath()%>/js/webcam_learn.js"></script>
</body>
</html>