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
	    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
	     
	    <!-- Bootstrap icons-->
	   	<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
	     
	    <!-- Google fonts-->
	    <link rel="preconnect" href="https://fonts.gstatic.com" />
	    <link href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap" rel="stylesheet" />
	    <link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap" rel="stylesheet" />
	    <link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap" rel="stylesheet" />
	     
	    <!-- Core theme CSS (includes Bootstrap)-->
	    <link href="css/styles.css" rel="stylesheet" type="text/css"/>
	
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>  
		
		<!-- Bootstrap core JS-->
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
	    <script src="js/scripts.js"></script>
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
	                        <h3 class="display-1 lh-1 mb-3 font-alt">
	                        	Stop waiting,
	                    		<br/>
	                    		Start learning!</h3>
	                        <p class="lead fw-normal text-muted mb-5">Do you want to learn sign language? Come join us! If you are worried, click try button.</p>
	                        <div class="d-flex flex-column flex-lg-row align-items-center">
	                            <a class="me-lg-3 mb-4 mb-lg-0" href="#!">
	                            <img class="app-badge" src="assets/img/google-play-badge.svg" alt="..." /></a>
	                            <a href="#!"><img class="app-badge" src="assets/img/app-store-badge.svg" alt="..." /></a>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-lg-6">
	                
					<!--******* Masthead device mockup feature :: 아이폰 및 도형 목업 *******-->
					<div class="masthead-device-mockup">
						<svg class="circle" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
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
						</div>
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
	                    <div class="h2 fs-1 text-white mb-4">"An intuitive solution to a common problem that we all face, wrapped up in a single app!"</div>
	                </div>
	            </div>
	        </div>
	    </aside>
	    
	    <!--******* Call to action section :: ABOUT 슬라이드 1 *******-->
	    <section id="features" class="cta">
	        <div class="cta-content">
	            <div class="container px-5">
	                <h2 class="text-white display-1 lh-1 mb-4">
	                    Stop waiting.
	                    <br />
	                    Start learning.
	                </h2>
	                <a class="btn btn-outline-light py-3 px-4 rounded-pill" href="https://startbootstrap.com/theme/new-age" target="_blank">Download for free</a>
	            </div>
	        </div>
	    </section>
	    
	    <!--******* Basic features section :: ABOUT 슬라이드 2 *******-->
	    <section class="bg-light">
	        <div class="container px-5">
	            <div class="row gx-5 align-items-center justify-content-center justify-content-lg-between">
	                <div class="col-12 col-lg-5">
	                    <h2 class="display-4 lh-1 mb-4">Enter a new age of web design</h2>
	                    <p class="lead fw-normal text-muted mb-5 mb-lg-0">This section is perfect for featuring some information about your application, why it was built, the problem it solves, or anything else! There's plenty of space for text here, so don't worry about writing too much.</p>
	                </div>
	                <div class="col-sm-8 col-md-6">
	                    <div class="px-5 px-sm-0"><img class="img-fluid rounded-circle" src="https://source.unsplash.com/u8Jn2rzYIps/900x900" alt="..." /></div>
	                </div>
	            </div>
	        </div>
	    </section>
	    
	    <!--******* App features section :: ABOUT 슬라이드 3 *******-->
	    <section>
	        <div class="container px-5">
	            <div class="row gx-5 align-items-center">
	                <div class="col-lg-8 order-lg-1 mb-5 mb-lg-0">
	                    <div class="container-fluid px-5">
	                        <div class="row gx-5">
	                            <div class="col-md-6 mb-5">
	                                <!-- Feature item-->
	                                <div class="text-center">
	                                    <i class="bi-phone icon-feature text-gradient d-block mb-3"></i>
	                                    <h3 class="font-alt">Device Mockups</h3>
	                                    <p class="text-muted mb-0">Ready to use HTML/CSS device mockups, no Photoshop required!</p>
	                                </div>
	                            </div>
	                            <div class="col-md-6 mb-5">
	                                <!-- Feature item-->
	                                <div class="text-center">
	                                    <i class="bi-camera icon-feature text-gradient d-block mb-3"></i>
	                                    <h3 class="font-alt">Flexible Use</h3>
	                                    <p class="text-muted mb-0">Put an image, video, animation, or anything else in the screen!</p>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row">
	                            <div class="col-md-6 mb-5 mb-md-0">
	                                <!-- Feature item-->
	                                <div class="text-center">
	                                    <i class="bi-gift icon-feature text-gradient d-block mb-3"></i>
	                                    <h3 class="font-alt">Free to Use</h3>
	                                    <p class="text-muted mb-0">As always, this theme is free to download and use for any purpose!</p>
	                                </div>
	                            </div>
	                            <div class="col-md-6">
	                                <!-- Feature item-->
	                                <div class="text-center">
	                                    <i class="bi-patch-check icon-feature text-gradient d-block mb-3"></i>
	                                    <h3 class="font-alt">Open Source</h3>
	                                    <p class="text-muted mb-0">Since this theme is MIT licensed, you can use it commercially!</p>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-lg-4 order-lg-0">
	                    <!-- Features section device mockup-->
	                    <div class="features-device-mockup">
	                        <svg class="circle" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
	                            <defs>
	                                <linearGradient id="circleGradient" gradientTransform="rotate(45)">
	                                    <stop class="gradient-start-color" offset="0%"></stop>
	                                    <stop class="gradient-end-color" offset="100%"></stop>
	                                </linearGradient>
	                            </defs>
	                            <circle cx="50" cy="50" r="50"></circle></svg
	                        ><svg class="shape-1 d-none d-sm-block" viewBox="0 0 240.83 240.83" xmlns="http://www.w3.org/2000/svg">
	                            <rect x="-32.54" y="78.39" width="305.92" height="84.05" rx="42.03" transform="translate(120.42 -49.88) rotate(45)"></rect>
	                            <rect x="-32.54" y="78.39" width="305.92" height="84.05" rx="42.03" transform="translate(-49.88 120.42) rotate(-45)"></rect></svg
	                        ><svg class="shape-2 d-none d-sm-block" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg"><circle cx="50" cy="50" r="50"></circle></svg>
	                        <div class="device-wrapper">
	                            <div class="device" data-device="iPhoneX" data-orientation="portrait" data-color="black">
	                                <div class="screen bg-black">
	                                    <!-- PUT CONTENTS HERE:-->
	                                    <!-- * * This can be a video, image, or just about anything else.-->
	                                    <!-- * * Set the max width of your media to 100% and the height to-->
	                                    <!-- * * 100% like the demo example below.-->
	                                    <video muted="muted" autoplay="" loop="" style="max-width: 100%; height: 100%"><source src="assets/img/demo-screen.mp4" type="video/mp4" /></video>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </section>
    </body>
</html>


<!-- <body>
  
  <DIV style='width: 100%; margin: 30px auto; text-align: center;'>
    <IMG src='/menu/images/resort01.jpg' style='width: 60%;'>
  </DIV>
  
  <DIV style='margin: 0px auto; width: 90%;'>
    <DIV style='float: left; width: 50%;'>
     </DIV>
     <DIV style='float: left; width: 50%;'>
    </DIV>  
  </DIV>
 
  <DIV style='width: 94.8%; margin: 0px auto;'>
  </DIV>  -->

<!-- **** 민규님 video tag ****
<video src='https://signedubucket.s3.ap-northeast-2.amazonaws.com/test.mp4' width='400' controls autoplay></video>
<br>
<video src='https://signedubucket.s3.ap-northeast-2.amazonaws.com/KETI_SL_0000000227.avi' width='400' controls autoplay></video>
<video width="400" controls>   <source src="https://signedubucket.s3.ap-northeast-2.amazonaws.com/KETI_SL_0000000227.avi"  type="video/AVI"> </video> -->

  