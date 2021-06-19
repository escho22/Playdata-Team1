<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
    <head>
	    <meta charset="utf-8" />
	    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	    <meta name="description" content="" />
	    <meta name="author" content="" />
	    <!-- 페이지 탭에 표시될 아이콘 및 페이지명 -->
	  	<title>Quiz - Level 4-2</title>
	    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
	     
	    <!-- Bootstrap icons-->
	   	<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
	     
	    <!-- Google fonts-->
	    <link rel="preconnect" href="https://fonts.gstatic.com" />
	    <link href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap" rel="stylesheet" />
	    <link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap" rel="stylesheet" />
	    <link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap" rel="stylesheet" />
	    <link href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@1,700&display=swap" rel="stylesheet" />
	    <link href="https://fonts.googleapis.com/css?family=Raleway:400,300,600,800,900" rel="stylesheet" type="text/css">

	    <!-- Core theme CSS (includes Bootstrap)-->
	    <link href="<%=request.getContextPath()%>/css/styles.css" rel="stylesheet" type="text/css"/>
	
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>  
		
		<!-- Bootstrap core JS-->
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
	    <script src="<%=request.getContextPath()%>/js/scripts.js"></script> 
	    
	    <!-- Webcam - p5 Js -->
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.8.0/p5.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.8.0/addons/p5.dom.min.js"></script>
		
		<style>
		#progressbar {
		  margin: 20px;
		  width: 200px;
		  height: 100px;
		}
		</style>
		
		<script>
		var bar = new ProgressBar.SemiCircle(container, {
			  strokeWidth: 6,
			  color: '#FFEA82',
			  trailColor: '#eee',
			  trailWidth: 1,
			  easing: 'easeInOut',
			  duration: 1400,
			  svgStyle: null,
			  text: {
			    value: '',
			    alignToBottom: false
			  },
			  from: {color: '#FFEA82'},
			  to: {color: '#ED6A5A'},
			  // Set default step function for all animate calls
			  step: (state, bar) => {
			    bar.path.setAttribute('stroke', state.color);
			    var value = Math.round(bar.value() * 100);
			    if (value === 0) {
			      bar.setText('');
			    } else {
			      bar.setText(value);
			    }
		
			    bar.text.style.color = state.color;
			  }
			});
			bar.text.style.fontFamily = '"Raleway", Helvetica, sans-serif';
			bar.text.style.fontSize = '2rem';
			
			document.getElementById("progressbar") = bar;
			document.getElementById("progressbar").style.visibility = 'hidden';		
		</script>
	</head>
</head>
<body>
<script src="/js/webcam_detection.js"></script>
	퀴즈페이지
	<br>
	<h1>Quiz Level 4 - 2</h1>
	<hr>

	<table>
		<tr>
			<td>${word}</td>
			<td><button id="capture">capture</button></td>
			<td><button id="submit">submit</button></td>
		</tr>
	</table>
	<hr>


	<table>
		<tr>
			<td>이전</td>
			<td><A href='/quiz/level4/choose'>목록</A></td>
			<td><A href='/quiz/level4/quiz_4_2'>다음</A></td>
		</tr>
	</table>
</body>
</html>