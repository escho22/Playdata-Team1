<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Admin - Create Word</title>
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

<section class="signup">
		<div class="container px-6">
			<div class="card o-hidden border-0 shadow-lg my-5">
				<div class="card-body p-0">
					<!-- Nested Row within Card Body -->
					<div class="row">
						<div class="col-lg-6">
							<div class="p-6">
								<div class="text-center">
									<h1 class="h3 text-gray-900 mb-5 font-card">단어생성</h1>
								</div>
								
								<form class="user" name='frm' id='frm' method='POST'
									action='<%=request.getContextPath()%>/admin/control/wordCreate' class="form-horizontal">									
									<div class="form-group row">
										<div class="col-sm-6 mb-4 mb-sm-0">
											<label class="form-control form-control-user">단어</label>
										</div>
										<div class="col-sm-6 mb-3 mb-sm-0">
											<input type='text' class="form-control form-control-user"
												name='w_word' id='w_word' value=''
												required="required" placeholder="* 단어">
										</div>									
									</div>
									
									<div class="form-group row">
										<div class="col-sm-6 mb-4 mb-sm-0">
											<label class="form-control form-control-user">단어설명</label>
										</div>
										<div class="col-sm-6 mb-3 mb-sm-0">
											<input type='text' class="form-control form-control-user"
												name='w_explain' id='w_explain' value=''
												required="required" placeholder="* 단어설명">
										</div>
									</div>
									
									<div class="form-group row">
										<div class="col-sm-6">
											<label class="form-control form-control-user">경로</label>
										</div>
										<div class="col-sm-6">
											<input type='text' class="form-control form-control-user"
												name='w_path' id='w_path' value=''
												required="required" placeholder="* Name">
										</div>
									</div>

									<div class="form-group row">
										<div class="col-sm-6">
											<label class="form-control form-control-user">모델번호</label>
										</div>
										<div class="col-sm-6">
											<input type="text" class="form-control form-control-user"
												name='w_index' id="w_index" value='${memberVO.m_birth }'
												placeholder="Birth">
										</div>
									</div>
									
									<div class="form-group row">
										<div class="col-sm-6">
											<label class="form-control form-control-user">난이도</label>
										</div>
										<div class="col-sm-6">
											<input type="text" class="form-control form-control-user"
												name='w_difficulty' id="w_difficulty" value='${memberVO.m_birth }'
												placeholder="Birth">
										</div>
									</div>

									<div class="form-group row">
										<div class="col-sm-12 mb-3" align="right">
											<button id='btn_send'
												class="btn btn-primary rounded-pill px-3 mb-lg-0 mx-1">Create</button>
											<button type="button" onclick="location.href='<%=request.getContextPath()%>/admin/control/choose'"
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
<!-- <section class="signup"> -->
<%-- <A href='<%=request.getContextPath()%>/admin/control/choose'>관리</A> <br> --%>
<%-- <A href='<%=request.getContextPath()%>/'>Home</A> --%>
<!-- </section> -->
</body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="<%=request.getContextPath()%>/js/scripts.js"></script>
</html>