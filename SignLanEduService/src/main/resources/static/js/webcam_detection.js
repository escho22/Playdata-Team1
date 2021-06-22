
////test code::
//const constraints = window.constraints = {
//  	audio: false,
//  	video: true
//};
//
//function handleSuccess(stream) {
//  const video = document.getElementById("gum-local");
//  const videoTracks = stream.getVideoTracks();
//  console.log('Got stream with constraints:', constraints);
//  console.log(`Using video device: ${videoTracks[0].label}`);
//  window.stream = stream; // make variable available to browser console
//  video.srcObject = stream;
//}
//
//var init_video = (function(constraints){
//
//	const stream = navigator.mediaDevices.getUserMedia(constraints);
//	console.log("initiate video");
//	const video = document.getElementById("gum-local");
//	const videoTracks = stream.getVideoTracks();
//	//console.log(videoTracks);
//	//console.log('Got stream with constraints:', constraints);
//	console.log(`Using video device: ${videoTracks[0].label}`);
//	window.stream = stream; // make variable available to browser console
//	video.srcObject = stream;
//	return video;
//})();
//
//var webcam;
//var capture;
//var mycanvas;
//
//var classes;
//var word_idx = 0;
//var answer_key = document.getElementById("answer").innerHTML;
//var correct = 0;
//var conf = 0;
//var quiz_data;
//
////text꺼내기
//var word_txt;
//
//var i = 0;
//function progress_move() {
//	if (i == 0) {
//		i = 1;
//		var elem = document.getElementById("myBar");
//		var width = 10;
//		var id = setInterval(move, 1000);
//		function move() {
//			if (width >= 100) {
//				clearInterval(id);
//				i = 0;
//			} else {
//				width += 10;
//				elem.style.width = width + "%";
//				//elem.innerHTML = width;
//			}
//		}
//	}
//}
//
//function getFrame() {
//	capture = webcam.get();
//	//draw capture_show only on canvas
//	webcam.hide();
//
//	mycanvas = createCanvas(1280, 720);
//	//mycanvas.position(48+155,0,'fixed')
//	mycanvas.parent("container-canvas2");
//	
//	image(capture, 0, 0, 1280, 720);
//	return capture;
//}
//
//function setup() {
//	VIDEO = init_video;
//	webcam = createCapture(VIDEO);
//	webcam.size(1280, 720);
//	webcam.parent("container-canvas1");
//
//	const button1 = document.getElementById('capture');
//	button1.addEventListener('click', async event => {
//		//setTimeout(function(){capture = getFrame(webcam)},5000)
//		progress_move();
//		setTimeout(function() { getFrame() }, 10000) 
//
//	});
//
//	const button2 = document.getElementById('submit');
//	button2.addEventListener('click', async event => {
//
//		//load video pixels onto the canvas
//		capture.loadPixels();
//		//toDataURL(): convert video canvas to base64
//		const image_serialized = capture.canvas.toDataURL();
//
//		classes = "['12','15','21','29','37','45']";
//		const data = { classes, image_serialized };
//
//		//added to deal with CORS policy block issues
//		let headers = new Headers();
//		headers.append('Content-Type', 'application/json');
//		headers.append('Accept', 'application/json');
//		headers.append('Origin', 'http://localhost:8080');
//		//headers.append('Access-Control-Allow-Origin','http://localhost:8000');
//
//		const options = {
//			mode: 'cors',
//			method: 'POST',
//			headers: headers,
//			body: JSON.stringify(data)
//		};
//		const response = await fetch('http://localhost:8000/result', options);
//		const json = await response.json();
//		const json_object = JSON.parse(json);
//
//		word_idx = json_object.word_index;
//		conf = json_object.confidence;
//		const box = json_object.box_coord;
//		const ratio = 540 / 540;
//		
//		if(json_object && word_idx === answer_key){
//			word_txt = document.getElementById("problem_word").innerHTML;
//			correct = 1;
//			
//		}
//		else{
//			word_txt = "TRY AGAIN"
//		}
//			
//		//textSize(32);
//		//text(word_txt, 10, 30);
//		//text(conf, 10, 60);
//		fill(0, 102, 153, 51);
//		rect((box[0] * ratio), (box[1] * ratio), (box[2] * ratio), (box[3] * ratio));
//		conf = parseFloat(conf)
//		
//		document.getElementById("display_word").innerHTML = word_txt;
//		document.getElementById("display_word").style.visibility = "visible";
//		document.getElementById("display_conf").innerHTML = conf;
//		document.getElementById("display_conf").style.visibility = "visible";
//		
//		check();
//		
//		quiz_data = {
//			q_correct: correct,
//			q_percent: conf
//		};
//		w_num = document.getElementById("w_num").innerHTML;
//		//pass result and conf to ajax func
//		var save_btn = $("#save_btn");
//			
//		save_btn.on("click", function(e){
//			quizService.add(w_num,quiz_data, function(result){showResult();});
//		});	
//
//	});
//}
//
//function check() {
//	if (correct == 1) {
//		document.getElementById("message").innerHTML = "정답입니다!";
//	}
//	else {
//		document.getElementById("message").innerHTML = "다시 기억해보세요";
//	}
//}
//
//
//function showResult(){
//	alert("저장되었습니다. 퀴즈이력은 회원님의 history에서 확인해주세요!");
//}



//original code::
var webcam;
var capture;
var mycanvas;

var classes;
var word_idx = 0;
var answer_key = document.getElementById("answer").innerHTML;
var correct = 0;
var conf = 0;
var quiz_data;

//text꺼내기
var word_txt;

var i = 0;
function progress_move() {
	if (i == 0) {
		i = 1;
		var elem = document.getElementById("myBar");
		var width = 0;
		var id = setInterval(move, 1000);
		function move() {
			if (width >= 100) {
				clearInterval(id);
				i = 0;
			} else {
				width += 10;
				elem.style.width = width*0.97 + "%";
				//elem.innerHTML = width;
			}
		}
	}
}

function getFrame() {
	capture = webcam.get();
	//draw capture_show only on canvas
	webcam.hide();

	mycanvas = createCanvas(1280, 720);
	//mycanvas.position(48+155,0,'fixed')
	mycanvas.parent("container-canvas2");
	
	image(capture, 0, 0, 1280, 720);
	return capture;
}

function setup() {
	
	webcam = createCapture(VIDEO);
	webcam.size(1280, 720);
	webcam.parent("container-canvas1");

	const button1 = document.getElementById('capture');
	button1.addEventListener('click', async event => {
		//setTimeout(function(){capture = getFrame(webcam)},5000)
		progress_move();
		setTimeout(function() { getFrame() }, 10000) 

	});

	const button2 = document.getElementById('submit');
	button2.addEventListener('click', async event => {

		//load video pixels onto the canvas
		capture.loadPixels();
		//toDataURL(): convert video canvas to base64
		const image_serialized = capture.canvas.toDataURL();

		classes = "['12','15','21','29','37','45']";
		const data = { classes, image_serialized };

		//added to deal with CORS policy block issues
		let headers = new Headers();
		headers.append('Content-Type', 'application/json');
		headers.append('Accept', 'application/json');
		headers.append('Origin', 'http://localhost:8080');
		//headers.append('Access-Control-Allow-Origin','http://localhost:8000');

		const options = {
			mode: 'cors',
			method: 'POST',
			headers: headers,
			body: JSON.stringify(data)
		};
		const response = await fetch('http://localhost:8000/result', options);
		const json = await response.json();
		const json_object = JSON.parse(json);

		word_idx = json_object.word_index;
		conf = json_object.confidence;
		const box = json_object.box_coord;
		const ratio = 540 / 540;
		
		if(json_object && word_idx === answer_key){
			word_txt = document.getElementById("problem_word").innerHTML;
			correct = 1;
			
		}
		else{
			word_txt = "TRY AGAIN"
		}
			
		//textSize(32);
		//text(word_txt, 10, 30);
		//text(conf, 10, 60);
		fill(0, 102, 153, 51);
		rect((box[0] * ratio), (box[1] * ratio), (box[2] * ratio), (box[3] * ratio));
		conf = parseFloat(conf)
		
		document.getElementById("display_word").innerHTML = word_txt;
		document.getElementById("display_word").style.visibility = "visible";
		document.getElementById("display_conf").innerHTML = conf;
		document.getElementById("display_conf").style.visibility = "visible";
		
		check();
		
		quiz_data = {
			q_correct: correct,
			q_percent: conf
		};
		w_num = document.getElementById("w_num").innerHTML;
		//pass result and conf to ajax func
		var save_btn = $("#save_btn");
			
		save_btn.on("click", function(e){
			quizService.add(w_num,quiz_data, function(result){showResult();});
		});	

	});
}

function check() {
	if (correct == 1) {
		document.getElementById("message").innerHTML = "정답입니다!";
	}
	else {
		document.getElementById("message").innerHTML = "다시 기억해보세요";
	}
}


function showResult(){
	alert("저장되었습니다. 퀴즈이력은 회원님의 history에서 확인해주세요!");
}
