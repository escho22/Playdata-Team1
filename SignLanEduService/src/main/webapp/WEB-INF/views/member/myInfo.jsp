<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>SignEdu - My Info</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />

<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />

<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@1,700&display=swap"
	rel="stylesheet" />


<!-- Core theme CSS (includes Bootstrap)-->
<link href="<%=request.getContextPath()%>/css/styles.css"
	rel="stylesheet" type="text/css" />

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Bootstrap core JS-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
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
									<h1 class="h3 text-gray-900 mb-5 font-card">${memberVO.m_id }님의
										정보</h1>
								</div>

								<form class="user" name='frm' id='frm' method='POST'
									action='./create' class="form-horizontal">
									<div class="form-group row">
										<div class="col-sm-6 mb-4 mb-sm-0">
											<input type='text' class="form-control form-control-user"
												name='m_id' id='m_id' value='${memberVO.m_id }'
												required="required" placeholder="* ID" autofocus="autofocus"
												readonly="readonly">
										</div>
										<div class="col-sm-6 mb-3 mb-sm-0">
											<input type='text' class="form-control form-control-user"
												name='m_pw' id='m_pw' value='${memberVO.m_pw }'
												required="required" placeholder="* Password">
										</div>
									</div>
									<div class="form-group">
										<input type='text' class="form-control form-control-user"
											name='m_name' id='m_name' value='${memberVO.m_name }'
											required="required" placeholder="* Name" readonly="readonly">
									</div>
									<div class="form-group row">
										<div class="col-sm-6">
											<input type="text" class="form-control form-control-user"
												name='m_birth' id="m_birth" value='${memberVO.m_birth }'
												placeholder="Birth" readonly="readonly">
										</div>
										<div class="col-sm-6">
											<input type="email" class="form-control form-control-user"
												name='m_sex' id="m_sex" value='${memberVO.m_sex }'
												placeholder="Gender" readonly="readonly" readonly="readonly">
										</div>
									</div>
									<div class="form-group">
										<input type='text' class="form-control form-control-user"
											name='m_email' id='m_email' value='${memberVO.m_email }'
											required="required" placeholder="* Email Address"
											readonly="readonly">
									</div>
									<div class="form-group row">
										<div class="col-sm-12 mb-3" align="right">
											<button id='btn_send'
												class="btn btn-primary rounded-pill px-3 mb-lg-0 mx-1">Update</button>
											<button type="button" onclick="location.href='../'"
												class="btn btn-primary rounded-pill mb-lg-0">Cancel</button>
										</div>
									</div>
								</form>
								<div class="col-lg-6 d-none d-lg-block bg-register-image"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>