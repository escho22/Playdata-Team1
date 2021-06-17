<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--*************
Top ::
페이지 맨위 상단에 들어갈 Navigation bar 및 모달창
*****************-->

<html lang="ko">
    <body id="page-top">
    	<!--******* Navigation :: 네비게이션 바 (브랜드 아이콘, 페이지 카테고리, 로그인 창, 회원가입버튼 포함) *******-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top shadow-sm" id="mainNav">
            <div class="container px-5">
				<a class="navbar-brand fw-bold" href="/#page-top">lantern</a>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav me-auto mb-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link me-lg-4" href="#features">About</a></li>
						<li id="learn" class="nav-item"><a class="nav-link me-lg-4" href="#download">Learn</a></li>
                   		<li id="Quiz" class="nav-item"><a class="nav-link me-lg-4" href="#download">Quiz</a></li>
                        <li class="nav-item"><a class="nav-link me-lg-4" href="#download">beta+</a></li>
                    </ul>
                    <ul class="navbar-nav ms-auto me-2 my-lg-0">
                    	<li class="nav-item"><a class="nav-link me-lg-0" href='${root}/member/login'>Sign-in</a></li>
                    </ul>
                    <button class="btn btn-primary rounded-pill px-3 mb-2 mb-lg-0" onclick="location.href='/member/create'">
                        <span class="d-flex align-items-center">
                            <i class="bi-person-fill me-2"></i>
                            <span class="small">Create Account</span>
                        </span>
                    </button>
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
        
        <!--**************
        js 및 부트스트랩 경로
        ******************-->
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="<%=request.getContextPath()%>/js/scripts.js"></script>
    </body>
</html>


<%-- <!-- 강사님이랑 했던 것 -->
<DIV class='container_main' style='width: 100%;'>
	<!-- 화면 상단 메뉴 -->
	<DIV class='top_img'>
		<DIV class='top_menu_label'>Resort 0.1 영화와 여행이있는 리조트</DIV>
		<NAV class='top_menu'>
			<span style='padding-left: 0.5%;'></span> <A class='menu_link'
				href='/'>힐링 리조트</A><span class='top_menu_sep'>&nbsp;</span>

			<c:choose>
				<c:when test="${sessionScope.id == null}">
					<A class='menu_link' href='${root}/users/login'>Login</A>
					<span class='top_menu_sep'> </span>
				</c:when>
				<c:otherwise>
					<A class='menu_link' href='/categrp/list'>카테고리 그룹</A>
					<span class='top_menu_sep'>&nbsp;</span>
					<A class='menu_link' href='/users/list'>회원 목록</A>
					<span class='top_menu_sep'>&nbsp;</span>
          ${sessionScope.id } <A class='menu_link'
						href='${root}/users/logout'>Logout</A>
					<span class='top_menu_sep'> </span>
				</c:otherwise>
			</c:choose>
		</NAV>
	</DIV>

	<!-- 화면을 2개로 분할하여 좌측은 메뉴, 우측은 내용으로 구성 -->
	<DIV class="row" style='margin-top: 2px;'>
		<DIV class="col-sm-3 col-md-2">
			<!-- 메뉴 출력 컬럼 -->
			<img src='/menu/images/myimage.png' style='width: 100%;'>
			<div style='margin-top: 5px;'>
				<img src='/menu/images/myface.png'>힐링 리조트
			</div>
			<!-- Spring 출력 카테고리 그룹 / 카테고리 -->
			<jsp:include page="/cate/list_index_left.do" flush='false' /> // ERROR
			<c:import url="/cate/list_index_left" />
		</div>

		<DIV class="col-sm-9 col-md-10 cont">
			<!-- 내용 출력 컬럼 -->

			<DIV class='content'> --%>


<%-- <c:set var="root" value="${pageContext.request.contextPath }"/>
<c:choose>
	<c:when test="${not empty sessionScope.m_id && sessionScope.m_is_admin == 1}">
		<c:set var="str">관리자 페이지 입니다.</c:set>
	</c:when>
	<c:when test="${not empty sessionScope.m_id && sessionScope.m_is_admin != 1}">
		<c:set var='str'>안녕하세요  ${sessionScope.m_id } 님 !</c:set>
	</c:when>
	<c:otherwise>
		<c:set var="str">기본 페이지 입니다.</c:set>
	</c:otherwise>
</c:choose>

<test>

<!DOCTYPE html> 
<html>
<head>
  <title>memo</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style type="text/css">
  #grade{
  
   color : orange;
  }  
  </style>
</head>
<body> 
<!--상단메뉴-->
<div class="container">
  <ul class="nav nav-tabs">
    <li class="active"><a href="${root}/">Home</a></li>
        <li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">Learn <span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="${root}/learn/select">난이도 선택</a></li>
        <li><a href="${root}/learn/level4/choose">Level 4</a></li>
      </ul>
    </li> 
    
    <li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">Quiz <span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="${root}/quiz/select">난이도 선택</a></li>
        <li><a href="${root}/quiz/level4/choose">Level 4</a></li>
      </ul>
    </li>
    <c:choose>
    <c:when test="${empty sessionScope.id }">
    <li><a href="${root}/member/create">회원가입</a></li>
    <li><a href="${root}/member/login">로그인</a></li>
    </c:when>
    <c:otherwise>
    <li><a href="${root}/member/read">나의정보</a></li>
    <li><a href="${root}/member/update">회원수정</a></li>
    <li><a href="${root}/member/logout">로그아웃</a></li>
    </c:otherwise>
    </c:choose> 
    <c:if test="${not empty sessionScope.id && sessionScope.grade == 'A'}">
    <li><a href="${root}/admin/list">회원목록</a></li>
    </c:if>
  </ul>
</div>
</body>
</html> --%>