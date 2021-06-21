<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Admin - Member Delete</title>
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
<h2>Admin - Member Delete</h2>
<hr>
회원번호 : ${memberVO.m_num }
ID : ${memberVO.m_id } <br>
가입일 : ${memberVO.m_register }
정말 해당 회원을 삭제하시겠습니까? <br>
<div class="form-group row">
<form action="<%=request.getContextPath()%>/admin/control/memberDelete" method="post">
<div class="col-sm-12 mb-3" align="right">
	<input type="hidden" name='m_num' id="m_num" value='${memberVO.m_num }'>
	<button type="submit" id='btn_send' class="btn btn-primary rounded-pill px-3 mb-lg-0 mx-1">확인</button>
</div>
</form>
</div>						
<hr>
<A href='<%=request.getContextPath()%>/admin/control/choose'>관리</A> <br>
<A href='<%=request.getContextPath()%>/'>Home</A>
</section>
</body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="<%=request.getContextPath()%>/js/scripts.js"></script>
</html>