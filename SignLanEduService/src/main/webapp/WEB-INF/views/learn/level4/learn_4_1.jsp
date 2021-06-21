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
	  	<title>Learn - Level 4-1</title>
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
	<section class="learn">
			<div class="container">
				<div class="mb-5 mb-lg-0 text-lg-start fs-3 pb-3">
					 Learn :: level 4-1
				</div>
				<div class="card o-hidden border-0 shadow-lg">
					<div class="form-group text-center">
						<h1 class="h3 text-gray-900 mb-5 font-card mt-5 fs-2"> ${wordVO.w_word} </h1>
						<hr>
					</div>
					<div class="card-body px-5">
						<div class="row">
							<div class="col-lg-6">
								<video class="v_learn" src='${wordVO.w_path}' width="500" height="500" controls autoplay loop></video>
							</div>
							<div class="col-lg-6 mt-6">
								<video class="v_learn" autoplay width='500' height="360" id="videoElement"></video>
							</div>
						</div>
					</div>					
					<form action="<%=request.getContextPath()%>/learn/level4/learn_4_1" method="POST" id="creatLearn" name='lfrm4_1'>
						<input type='hidden' name='m_id' id='m_id' value="${sessionScope.id }">
						<input type='hidden' name='w_num' id='w_num' value="${wordVO.w_num }">
					<hr>
					<div class="justify-content-center text-center mt-45">
					<c:choose>
						<c:when test="${param.cnt == 1 }">
       					  	<span><i class="bi bi-check2-all me-1"></i>다음문제로 넘어가 주세요!</span>
       					</c:when>
						<c:otherwise>
							<span>학습미완료</span>
       					</c:otherwise>
					</c:choose>
					</div>
					<div class="form-group row justify-content-center text-center">
						<div class="col-lg-3 py-4 text-lg-end pt-lg-45">
							<span class="pointer fs-6 mt-lg-4" onclick="location.href='<%=request.getContextPath()%>/learn/level4/choose'"><i class="bi bi-justify me-2 style="style="font-size: 1rem;"></i>목록</span>
						</div>
						<div class="col-lg-3 py-4 text-lg-center">
							<button class="btn btn-outline-primary rounded-pill mb-lg-0 mx-1 px-3 fs-6 alertNext" type="submit" form="creatLearn">학습완료</button>
						</div>
						<div class="col-lg-3 py-4 text-lg-start pt-lg-45">
							<span class="pointer fs-6 mt-lg-4" onclick="location.href='<%=request.getContextPath()%>/learn/level4/learn_4_2'">다음<i class="bi bi-chevron-right ms-2 style="style="font-size: 1rem;"></i></span>				 
						</div>
					</div>
					</form>
				 </div>
			   </div>
			</section>
	 	<script src="<%=request.getContextPath()%>/js/webcam_learn.js"></script>
	</body>

	<script type="<%=request.getContextPath()%>/text/javascript">
		$().ready(function() {
			$(".alertNext").click(function() {
				Swal.fire({
				  icon: 'success',
				  title: '학습완료, 다음문제로 넘어가 주세요',
				  showConfirmButton: false,
				});
			});
		});
	</script>	

	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

</html>