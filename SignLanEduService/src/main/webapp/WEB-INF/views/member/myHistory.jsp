<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<!DOCTYPE html> 
<html lang="ko">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<meta name="description" content="" />
		<meta name="author" content="" />
		<!-- 페이지 탭에 표시될 아이콘 및 페이지명 -->
		<title>SignEdu - My Record</title>
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
			<div class="container px-6">
				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
							<div class="p-6">
								<div class="text-center">
									<h1 class="h3 text-gray-900 mb-5 font-card">${memberVO.m_id } 님의 이력</h1>
								</div>
								<div class="text-lg-end mb-5">
									<button class='btn btn-primary rounded-pill' onclick="location.href='<%=request.getContextPath()%>/member/myInfo'"> myInfo </button>
									<button class='btn btn-primary rounded-pill' onclick="location.href='<%=request.getContextPath()%>/'"> Home </button>
								</div>
								<div class="row">
									<div class="col-lg-6">
										<h3 class="h4 text-gray-900 mb-2 font-card">${memberVO.m_id } 님의 학습 이력</h3> <br/>
										<table border="1">
											<thead>
												<tr>
													<th>학습 단어</th>
													<th>일시</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="learnVO" items="${llist}">
												<tr>
													<td>${wlist[learnVO.w_num-1].w_word }</td>
													<td>${learnVO.l_date }</td>
												</tr>
												</c:forEach>
											</tbody>
											<tfoot>
												<tr>
													<th colspan="2">총 ${fn:length(llist) }건</th>
												</tr>
											</tfoot>
										</table>
									</div>
									<div class="col-lg-6">
										<h3 class="h4 text-gray-900 mb-2 font-card">${memberVO.m_id } 님의 퀴즈 이력</h3> <br/>
										<table border="1">
										<thead>
											<tr>
												<th>퀴즈 단어</th>
												<th>정답여부</th>
												<th>일치도</th>
												<th>일자</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="quizVO" items="${qlist}">
											<c:choose>
											<c:when test="${quizVO.q_correct == 0 }"> <c:set var="correct" value="X"/> </c:when>
											<c:otherwise> <c:set var="correct" value="O"/> </c:otherwise>
											</c:choose>
											<tr>
												<td>${wlist[quizVO.w_num-1].w_word }</td>
												<td>${correct }</td>
												<td>${quizVO.q_percent }</td>
												<td>${quizVO.q_date }</td>
											</tr>
											</c:forEach>
										</tbody>
										<tfoot>
											<tr>
												<th colspan="4">총 ${fn:length(qlist) }건</th>
											</tr>
										</tfoot>
									</table>
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