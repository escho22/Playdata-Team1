<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Quiz Level 4 - 1</title>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.8.0/p5.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.8.0/addons/p5.dom.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Raleway:400,300,600,800,900" rel="stylesheet" type="text/css">

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

<body>
<div id="progressbar"></div>

	<p id="answer" style="display: none; height: 100px;">${index}</p>
	
	<script src="/js/webcam_detection.js"></script>
	<h1>Quiz Level 4 - 1</h1>
	<hr>
	<div id="problem">Quiz 단어: ${word}</div>
	<div id="message"></div>
	<hr>
	<table>
		<tr>
			<td><button id="capture">capture</button></td>
			<td><button id="submit">submit</button></td>
		</tr>
	</table>

	<div id="circle"></div>

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