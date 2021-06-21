<%@ page contentType="text/html; charset=UTF-8" %>
 
<!DOCTYPE html> 
<html lang="ko">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<meta name="description" content="" />
		<meta name="author" content="" />
		<!-- 페이지 탭에 표시될 아이콘 및 페이지명 -->
		<title>Login</title>
		<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
		 
		<!-- Bootstrap icons-->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
		 
		<!-- Google fonts-->
		<link rel="preconnect" href="https://fonts.gstatic.com" />
		<link href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap" rel="stylesheet" />
		<link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap" rel="stylesheet" />
		<link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap" rel="stylesheet" />
		
	</head> 

	<body>
		<section class="signin">
			<div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
			<div class="container px-6">
				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<div class="row">
							<div class="col-lg-6">
								<div class="p-6">
									<div class="text-center">
										<h1 class="h3 text-gray-900 mb-5 font-card">Sign-in</h1>
									</div>
									<form class="user" name='frm' method='POST' action='./login'>
										<input type="hidden" name="rurl" value="${param.rurl}">
										<input type="hidden" name="contentsno" value="${param.contentsno}"> 
										<input type="hidden" name="nowPage" value="${param.nowPage}"> 
										<input type="hidden" name="nPage" value="${param.nPage}"> 
										<input type="hidden" name="col" value="${param.col}"> 
										<input type="hidden" name="word" value="${param.word}">
										<div class="form-group row justify-content-center">
											<span class="d-flex align-items-center col-sm-1 me-lg-2"> 
												<i class="bi-person-fill" style="font-size: 1.5rem;"></i>
											</span>
											<div class="col-sm-9 mb-4 mb-sm-0">
												<input type='text' class="form-control" name='m_id' id='m_id'
													value='${ck_id }' required="required" placeholder="* ID"
													autofocus="autofocus">
											</div>
										</div>
										<div class="form-group row justify-content-center">
											<span class="d-flex align-items-center col-sm-1 me-lg-2"> 
												<i class="bi bi-lock-fill" style="font-size: 1.5rem;"></i>
											</span>
											<div class="col-sm-9 mb-4 mb-sm-0">
												<input type='password' class="form-control" name='m_pw'
													id='m_pw' value='${ck_passwd }' required="required" placeholder="* Password">
											</div>
										</div>
										<div class="form-group row justify-content-center">
											<div class="col-sm-10 mb-3 p-2" align="right">
												<button type="button" onclick="loadDefault();" class="btn btn-secondary rounded-pill mb-lg-0 mx-1">Test ID</button>
												<button type="submit" class="btn btn-primary rounded-pill px-3 mb-lg-0">Sign-in</button>
											</div>
										</div>
										<hr>
										<div class="text-center">
											<a class="small" href="forgot-password.html">Forgot
												Password?</a>
										</div>
										<div class="text-center">
											<a class="small" href='<%=request.getContextPath()%>/member/create'>
											Do you want to join us? Sign-up!</a>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</body>

	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="<%=request.getContextPath()%>/css/styles.css" rel="stylesheet" type="text/css"/>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>  
	
	<!-- Bootstrap core JS-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/scripts.js"></script>

	<!-- 확인 후 지우기 -->
	<script type="text/javascript">
	  function loadDefault() {
	    $('#m_id').val('test1');
	    $('#m_pw').val('1234');
	  }  
	</script> 

</html>

