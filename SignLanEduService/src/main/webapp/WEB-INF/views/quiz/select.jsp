<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
	    <meta charset="utf-8" />
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	    <meta name="description" content="" />
	    <meta name="author" content="" />
	    <!-- 페이지 탭에 표시될 아이콘 및 페이지명 -->
	  	<title>Quiz - Select Level</title>
	    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
	     
	    <!-- Bootstrap icons-->
	   	<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
	     
	    <!-- Google fonts-->
	    <link rel="preconnect" href="https://fonts.gstatic.com" />
	    <link href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap" rel="stylesheet" />
	    <link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap" rel="stylesheet" />
	    <link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap" rel="stylesheet" />
	    <link href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@1,700&display=swap" rel="stylesheet" />
		 
	</head>
	<body>
		<section class="quiz">
			<div class="container px-5">
	            <div class="row gx-1">
					<div class="mb-5 mb-lg-0 text-lg-start fs-3">
					Quiz ::
					<hr>
					</div>
					<div class="py-4">
						<div class="text-center">
							<h1 class="h3 text-gray-900 mb-5 font-card">Choosing a Levels <i class="bi bi-arrow-down-left" style="font-size: 2rem;"></i></h1>
						</div>
						<div class="d-flex flex-column align-items-center justify-content-center">
							<button class="btn btn-outline-primary rounded-pill py-3 pe mb-3 px-sm-6 alertStart" name="alertStart">
							    Level 1
							</button>
							<button class="btn btn-outline-primary rounded-pill py-3 mb-3 px-sm-6 alertStart" name="alertStart">
							    Level 2
							</button>
							<button class="btn btn-outline-primary rounded-pill py-3 mb-3 px-sm-6 alertStart" name="alertStart">
								Level 3
							</button>
							<button class="btn btn-outline-primary rounded-pill py-3 mb-3 px-sm-6" onclick="location.href='<%=request.getContextPath()%>/quiz/level4/quiz_4_1'">
								Level 4
							</button>
						</div>
					</div>
				</div>
				<hr>
				<div class="text-lg-end">
					<a href='<%=request.getContextPath()%>/'> Home </a>
				</div>
			</div>
	</section>
	</body>
	
   	<script type="text/javascript">
	$().ready(function() {
		$(".alertStart").click(function() {
			Swal.fire({
				icon : 'error',
				title : 'Comming Soon...',
			});
		});
	});
	</script>	
	     
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="<%=request.getContextPath()%>/css/styles.css" rel="stylesheet" type="text/css"/>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>  
	
	<!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/scripts.js"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

</html>