<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8"> 
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<meta name="description" content="" />
		<meta name="author" content="" />
		<title>SignEdu Create result</title>
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
<section class="msg">
		<div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
			<div class="container">
				<div class="card o-hidden border-0 shadow-lg my-5">
				<c:choose>
		        <c:when test="${param.cnt == 1 }">
		        	<div class="card-body p-6 text-center ">
						<h1 class="h3 text-gray-900 mb-5 font-card">회원가입이 완료되었습니다.</h1>
					    <div class="fs-3">	
					    로그인 해주세요!
					    <br/>
					    Thank you!				  	
					    </div>
					    <br/>
					    <hr>
					    <button type="button" id="btn_login" class="btn btn-primary rounded-pill mb-lg-0 mx-1 px-3">Login</button>
					    <!-- <button type="button" id="btn_login" class="btn btn-primary rounded-pill mb-lg-0 mx-1 px-3">로그인</button> <br><br>
					    <button type="button" id="btn_home" class="btn btn-primary rounded-pill mb-lg-0 mx-1 px-3">Home</button> -->
					    <br/>
					</div>
		        </c:when>
		        <c:otherwise>
		        	<div class="card-body p-6 text-center ">
						<h1 class="h3 text-gray-900 mb-5 font-card">회원 가입에 실패했습니다.</h1>
					    <div class="fs-3">	
					    다시한번 시도해주세요.
					    <br/>
					    계속 실패시 문의해주세요.				  	
					    </div>
					    <br/>
					    <hr>
					    <button type="button" id="btn_login" class="btn btn-primary rounded-pill mb-lg-0 mx-1 px-3">로그인</button> <br>
					    <button type="button" id="btn_home" class="btn btn-primary rounded-pill mb-lg-0 mx-1 px-3">Home</button>
					    <br/>
					</div>
		        </c:otherwise>
		     	</c:choose>
				</div>
			</div>
	</section>
</body>

<!-- Core theme CSS (includes Bootstrap)-->
<link href="<%=request.getContextPath()%>/css/styles.css" rel="stylesheet" type="text/css" />

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="<%=request.getContextPath()%>/js/scripts.js"></script>

<script type="text/javascript">
  $(function(){ 
    $('#btn_home').on('click', function() {
      location.href="${pageContext.request.contextPath}/";
    });
    $('#btn_login').on('click', function() {
        location.href="${pageContext.request.contextPath}/member/login";
     });
  });
</script>
</html>