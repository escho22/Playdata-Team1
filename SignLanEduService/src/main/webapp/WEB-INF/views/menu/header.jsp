<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
	<!--*************
	Top ::
	페이지 맨위 상단에 들어갈 Navigation bar 및 모달창
	*****************-->
    <body id="page-top">
	    <!-- ***********
		custom 설정
		************* -->
		<c:set var="root" value="${pageContext.request.contextPath }"/>
		<c:choose>
			<c:when test="${not empty sessionScope.m_id && sessionScope.m_is_admin == 1}">
				<c:set var="str">
					<li class="dropdown">
						<a class="nav-link dropdown text-decoration-none fs-7" data-toggle="dropdown" href="#">
						<i class="bi bi-megaphone me-1" style="font-size: 1rem;"></i> 관리자 계정, ${sessionScope.m_id } <i class="bi bi-caret-down-fill ms-1" style="font-size: 1rem;"></i></a>
						<div class="dropdown-menu text-decoration-none" style="position: absolute; inset: 0px auto auto 0px; margin: 0px; transform: translate(0px, 60px);">
							<a class="dropdown-item text-decoration-none fs-7 ctag" href="/admin/select"><i class="bi bi-cone-striped me-2" style="font-size: 1rem;"></i> 관리자 페이지  </a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item text-decoration-none fs-7 ctag" href="/member/logout"><i class="bi bi-box-arrow-right me-2" style="font-size: 1rem;"></i> Sign Out </a>
						</div>
					</li>
				</c:set>
			</c:when>
			<c:when test="${not empty sessionScope.m_id && sessionScope.m_is_admin != 1}">		
				<c:set var="str">
					<li class="dropdown">
						<a class="nav-link dropdown text-decoration-none fs-7" data-toggle="dropdown" href="#">
						<i class="bi bi-emoji-laughing me-1" style="font-size: 1rem;"></i> 안녕하세요.  ${sessionScope.m_id } 님 ! <i class="bi bi-caret-down-fill ms-1" style="font-size: 1rem;"></i></a>
						<div class="dropdown-menu text-decoration-none" style="position: absolute; inset: 0px auto auto 0px; margin: 0px; transform: translate(0px, 60px);">
							<a class="dropdown-item text-decoration-none fs-7 ctag" href="/member/myHistory"><i class="bi bi-brush me-2" style="font-size: 1rem;"></i> My history  </a>
							<a class="dropdown-item text-decoration-none fs-7 ctag" href="/member/myInfo"><i class="bi bi-person-circle me-2" style="font-size: 1rem;"></i> Profile  </a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item text-decoration-none fs-7 ctag" href="/member/logout"><i class="bi bi-box-arrow-right me-2" style="font-size: 1rem;"></i> Sign Out </a>
						</div>
					</li>
				</c:set>
			</c:when>
			<c:otherwise>
				<c:set var='str'>
					<a class="nav-link me-lg-0 me-2"> 
					<span class="pointer" onclick="location.href='/member/login'">Sign-in</span>
					</a>
				</c:set>
				<c:set var='signup'>
	             	<button class="btn btn-primary rounded-pill px-3 mb-2 mb-lg-0" onclick="location.href='/member/create'">
	         			<span class="d-flex align-items-center">
	          				<i class="bi-person-fill me-2"></i>
	          				<span class="small">Create Account</span>
	         			</span>
	        		</button>
	        	</c:set>
			</c:otherwise>		
		</c:choose>
    
    
    	<!--******* Navigation :: 네비게이션 바 (브랜드 아이콘, 페이지 카테고리, 로그인 창, 회원가입버튼 포함) *******-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top shadow-sm" id="mainNav">
            <div class="container px-5">
				<a class="navbar-brand fw-bold" href="/#page-top">lantern</a>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav me-auto mb-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link me-lg-4" href="<%=request.getContextPath()%>/#features">About</a></li>
						<li id="learn" class="nav-item"><a class="nav-link me-lg-4" href="/learn/select">Learn</a></li>
                   		<li id="Quiz" class="nav-item"><a class="nav-link me-lg-4" href="/quiz/select">Quiz</a></li>
                    </ul>
                    <ul class="navbar-nav ms-auto me-2 my-lg-0">                 
                    	<li class="nav-item"><span>${str}</span><li>
                    </ul>
                    <span>${signup}</span>
                </div>
            </div>
        </nav>        
        <!--******* Feedback modal :: FAQ 모달창 *******-->
        <div class="modal fade" id="feedbackModal" tabindex="-1" aria-labelledby="feedbackModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header bg-gradient-primary-to-secondary p-4">
                        <h5 class="modal-title font-alt text-white" id="feedbackModalLabel">Send feedback</h5>
                        <button class="btn-close btn-close-white" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body border-0 p-4">
                        <form>
                            <div class="form-floating mb-4">
                                <input class="form-control" id="inputName" type="text" placeholder="Enter your name..." />
                                <label for="inputName">Name</label>
                            </div>
                            <div class="form-floating mb-4">
                                <input class="form-control" id="inputEmail" type="email" placeholder="name@example.com" />
                                <label for="inputEmail">Email address</label>
                            </div>
                            <div class="form-floating mb-4">
                                <input class="form-control" id="inputPhone" type="tel" placeholder="(123) 456-7890" />
                                <label for="inputPhone">Phone number</label>
                            </div>
                            <div class="form-floating mb-4">
                                <textarea class="form-control" id="inputMessage" placeholder="Enter your message here..." style="height: 10rem"></textarea>
                                <label for="inputMessage">Message</label>
                            </div>
                            <div class="d-grid"><button class="btn btn-primary rounded-pill py-3" type="submit">Submit</button></div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <!--**************
    js 및 부트스트랩 경로
    ******************-->	
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="<%=request.getContextPath()%>/css/styles.css" rel="stylesheet" type="text/css"/>
	
	<!-- Bootstrap core JS-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- Core theme JS-->
    <script src="<%=request.getContextPath()%>/js/scripts.js"></script>
</html>