<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Admin - Control Select</title>
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
<section class="signup">
<div class="container px-6">
	<div class="card o-hidden border-0 shadow-lg my-5">
		<div class="card-body p-0">
			<!-- Nested Row within Card Body -->
			<div class="row">
				<div class="col-lg-6">
					<div class="p-6">
						<div class="text-center">
							<h1 class="h3 text-gray-900 mb-5 font-card">Admin - Control Select</h1>
						</div>
						
						<div class="form-group row">
						<form action="<%=request.getContextPath()%>/admin/control/memberUpdate" method="get">
							<div class="col-sm-6 mb-3 mb-sm-0">
								<input type='text' class="form-control form-control-user"
									name='m_num' id='m_num' value=''
									required="required" placeholder="* m_num">
							</div>
							<div class="col-sm-12 mb-3" align="right">
								<button id='btn_send' class="btn btn-primary rounded-pill px-3 mb-lg-0 mx-1">회원수정</button>
							</div>
						</form>
						</div>
						
						<div class="form-group row">
						<form action="<%=request.getContextPath()%>/admin/control/memberDelete" method="get">
							<div class="col-sm-6 mb-3 mb-sm-0">
								<input type='text' class="form-control form-control-user"
									name='m_num' id='m_num' value=''
									required="required" placeholder="* m_num">
							</div>
							<div class="col-sm-12 mb-3" align="right">
								<button id='btn_send' class="btn btn-primary rounded-pill px-3 mb-lg-0 mx-1">회원삭제</button>
							</div>
						</form>
						</div>
						
						<div class="form-group row">
							<div class="col-sm-12 mb-3" align="right">
								<A href='<%=request.getContextPath()%>/admin/control/wordCreate' class="btn btn-primary rounded-pill px-3 mb-lg-0 mx-1">단어생성</A>
								<A href='<%=request.getContextPath()%>/admin/control/wordList' class="btn btn-primary rounded-pill px-3 mb-lg-0 mx-1">단어목록</A>
							</div>
						</div>
						
						<div class="form-group row">
							<div class="col-sm-12 mb-3" align="right">
								<A href='<%=request.getContextPath()%>/admin/select' class="btn btn-primary rounded-pill px-3 mb-lg-0 mx-1"> 목록 </A>
								<A href='<%=request.getContextPath()%>/' class="btn btn-primary rounded-pill px-3 mb-lg-0 mx-1">Home</A>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</section>
</body>
</html>