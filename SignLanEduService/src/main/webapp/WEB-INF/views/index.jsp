<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!--******* 홈화면 메인슬라이드 및 About페이지 템플릿 *******-->
<html lang="ko">
    <head>
	    <meta charset="utf-8" />
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	    <meta name="description" content="" />
	    <meta name="author" content="" />
	    <!-- 페이지 탭에 표시될 아이콘 및 페이지명 -->
	    <title>lantern</title>
	    <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/favicon.ico"/>
	     
	    <!-- Bootstrap icons-->
	   	<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
	     
	    <!-- Google fonts-->
	    <link rel="preconnect" href="https://fonts.gstatic.com" />
	    <link href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap" rel="stylesheet" />
	    <link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap" rel="stylesheet" />
	    <link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap" rel="stylesheet" />
	    <link href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@1,700&display=swap" rel="stylesheet" />

	</head>
	
	
	<!-- *****************
	위에 head는 css, js, bootstrap, fonts 관련 설정이므로 
	수정 및 삭제 금지
	- 아래 슬라이드 템플릿만 수정 가능
	**********************-->
	
	<body>
	<!-- ***** 민규님이 만드신 index.jsp 	
	<table border="1">
		<tr>
			<td><A href='/learn/select'>학습</A></td>
			<td><A href='/quiz/select'>퀴즈</A></td>
			<td><A href='/member/myInfo'>내 정보</A></td>
		</tr>
	</table>
	<A href='/learn/select'>학습</A> -->
	<!--******* Mashead header :: 메인 슬라이드 1 *******-->
	    <section class="masthead">
	        <div class="container px-5">
	            <div class="row gx-5 align-items-center">
	                <div class="col-lg-6">
	                    <!--******* Mashead text and app badges *******-->
	                    <div class="mb-5 mb-lg-0 text-center text-lg-start">
	                        <h3 class="display-1 lh-1 mb-3 font-slide">
	                        	Stop
	                        	<br/> 
	                        	waiting,
	                    		<br/>
	                    		Start 
	                    		<br/> 
	                    		lanterning!</h3>
	                        <p class="lead fw-normal text-muted mb-5">Do you want to learn sign language? Come join us! If you are worried, click try button.</p>
	                        <div class="d-flex flex-column flex-lg-row align-items-center">
	                       		 <a class="btn btn-primary py-3 px-4 rounded-pill me-3" href="<%=request.getContextPath()%>/#features">Lantern</a>
	                             <button class="btn btn-primary py-3 px-4 rounded-pill" onclick="location.href='https://sldict.korean.go.kr/front/sign/signList.do?top_category=CTE'" target='blank'>수어사전</button> 
	                        </div>
	                    </div>
	                </div>
	                <div class="col-lg-6">	                
					<!--******* Masthead device mockup feature :: 아이폰 및 도형 목업 *******-->
					<div class="masthead-device-mockup">
					<img src="assets/img/hands.png" width="500" height="500" alt="hand" style="transform:rotate(340deg);" />
						<%-- <svg class="circle" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
	                            <defs>
	                                <linearGradient id="circleGradient" gradientTransform="rotate(45)">
	                                    <stop class="gradient-start-color" offset="0%"></stop>
	                                    <stop class="gradient-end-color" offset="100%"></stop>
	                                </linearGradient>
	                            </defs>
	                            <circle cx="50" cy="50" r="50"></circle></svg>
						<svg class="shape-1 d-none d-sm-block" viewBox="0 0 240.83 240.83" xmlns="http://www.w3.org/2000/svg">
	                            <rect x="-32.54" y="78.39" width="305.92" height="84.05" rx="42.03" transform="translate(120.42 -49.88) rotate(45)"></rect>
	                            <rect x="-32.54" y="78.39" width="305.92" height="84.05" rx="42.03" transform="translate(-49.88 120.42) rotate(-45)"></rect></svg>
						<svg class="shape-2 d-none d-sm-block" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
							<circle cx="50" cy="50" r="50"></circle></svg>
						<div class="device-wrapper">
							<div class="device" data-device="iPhoneX" ata-orientation="portrait" data-color="black"></div>
						</div> --%>
					</div>
				</div>
	            </div>
	        </div>
	    </section>
	    
	    <!--******* Quote/testimonial aside :: 중간 배너 *******-->
	    <aside class="text-center bg-gradient-primary-to-secondary">
	        <div class="container px-5">
	            <div class="row gx-5 justify-content-center">
	                <div class="col-xl-8">
	                    <div class="h2 fs-1 text-white mb-2">"A fun way to learn and master basic <br/> sign language words!"</div>
	                </div>
	            </div>
	        </div>
	    </aside>
	    
	    <!--******* Call to action section :: ABOUT 슬라이드 1 *******-->
	    <section id="features" class="cta">
	        <div class="cta-content">
	            <div class="container px-5">
	                <h2 class="text-white display-1 lh-1 mb-4">
	                    about ::
	                    <br />
	                    LANTERN 
	                </h2>
	            </div>
	        </div>
	    </section>
	    
	    <!--******* Basic features section :: ABOUT 슬라이드 2 *******-->
	    <section class="bg-light">
	        <div class="container px-5">
	            <div class="row gx-5 align-items-center justify-content-center justify-content-lg-between">
	                <div class="col-12 col-lg-5">
	                    <h2 class="display-4 lh-1 mb-4">Lantern</h2>
	                    <p class="lead fw-normal text-muted mb-5 mb-lg-0">Lantern은 배려하고 소통하는 사회를 만들기 위해 끊임없이 노력하고,신뢰와 믿음으로 더불어 일하며, 혁신적 마인드로 변화를 지향하고 있습니다.앞으로도 더 큰 미래를 향해 끊임없이 도전하겠습니다.</p>
	                <br>
	                
	                <ul class="lead fw-normal text-muted mb-5 mb-lg-0">
	                <li>수어 통역 전문가 영상을 통한 학습</li>
	           		<li>학습과 동시에 거울 모드를 통한 동작 확인</li>
	                <li>퀴즈 방식을 통한 이해도 테스트 및 반복 연습</li>
	                <li>오프라인 교육의 보조 학습 서비스 이용 가능</li>
	                </ul>
	                </div>
	                <div class="col-sm-8 col-md-6">
	                    <div class="px-5 px-sm-0"><img class="img-fluid rounded-circle" src="https://source.unsplash.com/u8Jn2rzYIps/900x900" alt="..." /></div>
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
    <script src="js/scripts.js"></script>
    
</html>
