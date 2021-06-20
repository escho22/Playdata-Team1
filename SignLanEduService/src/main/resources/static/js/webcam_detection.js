
var webcam;
var capture;
var mycanvas;

var classes;
var word_idx = 0;
var conf = 0;
var answer_key = document.getElementById("answer").innerHTML;
var result = 0;


var i = 0;

function progress_move() {
	if (i == 0) {
		i = 1;
		var elem = document.getElementById("myBar");
		var width = 10;
		var id = setInterval(move, 1000);
		function move() {
			if (width >= 100) {
				clearInterval(id);
				i = 0;
			} else {
				width += 10;
				elem.style.width = width + "%";
				elem.innerHTML = width + "%";
			}
		}
	}
}

function getFrame() {
	capture = webcam.get();
	//draw capture_show only on canvas
	webcam.hide();

	mycanvas = createCanvas(1280 + 155, 720);
	mycanvas.parent("container-canvas2");

	image(capture, 155, 0, 1280, 720);
	return capture;
}

function setup() {
	//VIDEO= document.createElement("VIDEO");
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
		console.log(json);

		const json_object = JSON.parse(json);
		word_idx = json_object.word_index;
		conf = json_object.confidence;
		const box = json_object.box_coord;
		const ratio = 540 / 540;

		//draw bounding box and write result with data from JSON
		if (word_idx != 'INCORRECT' && word_idx === answer_key) {
			textSize(32);
			text(word_idx, 10, 30);
			text(conf, 10, 60);
			result = 1;
		}
		else {
			textSize(32);
			text("INCORRECT", 10, 30);
		}
		fill(0, 102, 153, 51);
		rect((box[0] * ratio + 155), (box[1] * ratio), (box[2] * ratio), (box[3] * ratio));

		check();

		//pass values to jsp html
		document.getElementById("q_correct").value = result;
		document.getElementById("q_percent").value = conf;

	});
}

function check() {
	//console.log("answer_key: ",answer_key);
	word_idx = word_idx.toString();
	//console.log("word_idx: ", word_idx);

	if (word_idx === answer_key) {
		document.getElementById("message").innerHTML = "정답입니다!";
		document.getElementById("circle").style.visibility = 'visible';
	}
	else {
		document.getElementById("message").innerHTML = "다시 기억해보세요";
		document.getElementById("circle").style.visibility = 'hidden';
	}
}


