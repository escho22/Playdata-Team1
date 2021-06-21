<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<!-- 페이지 탭에 표시될 아이콘 및 페이지명 -->
<title>SignEdu - Admin</title>
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
	<h2>Welcome to Admin Page</h2>
	<hr>
	<br>
	<table>
		<tr>
			<td><A href='<%=request.getContextPath()%>/admin/control/choose'>관리</A></td>
		</tr>
		<tr>
			<td><A href='<%=request.getContextPath()%>/admin/stats/choose'>통계</A></td>
		</tr>
	</table>
	<br>
	<hr>
	<A href='<%=request.getContextPath()%>/'>Home</A>
</section>	
</body>
</html>