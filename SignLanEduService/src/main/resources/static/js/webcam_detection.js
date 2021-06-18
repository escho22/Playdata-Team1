var classes;
var video;
var capture;
var word_idx = 0;
var conf = 0;
var bar;
 
function getFrame(video){
	capture = video.get();
	//draw capture_show only on canvas
	video.hide()
	createCanvas(1280, 720)
	image(capture, 0, 0, 1280, 720);
	run_progressbar(bar);
	return capture
}

function setup() {

    video = createCapture(VIDEO);
    video.size(1280, 720);

	//draw_progressbar(bar);
	
    const button1 = document.getElementById('capture');
    button1.addEventListener('click', async event => {
      setTimeout(function(){capture = getFrame(video)},5000)
	});

	const button2 = document.getElementById('submit');
	button2.addEventListener('click', async event =>{
		
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
      headers.append('Origin','http://localhost:8080');
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
	  const ratio = 540/540;

	  //draw bounding box and write result with data from JSON
	  textSize(32);
	  text(word_idx, 10, 30);
	  text(conf, 10, 60);
	  fill(0, 102, 153, 51);
	  rect((box[0]*ratio),(box[1]*ratio),(box[2]*ratio),(box[3]*ratio));
	  
	  check();
	}); 	
	 
}

function check(){
	var answer_key = document.getElementById("answer").innerHTML;
	console.log("answer_key: ",answer_key);
	word_idx = word_idx.toString();
	console.log("word_idx: ", word_idx);
	
	if (word_idx === answer_key){
		document.getElementById("message").innerHTML="정답입니다!";
		document.getElementById("circle").style.visibility = 'visible';
	}
	else{
		document.getElementById("message").innerHTML="다시 기억해보세요";
		document.getElementById("circle").style.visibility = 'hidden';
	}

}

//function draw_progressbar(bar){
//	
//	var bar = new ProgressBar.SemiCircle(container, {
//	  strokeWidth: 6,
//	  color: '#FFEA82',
//	  trailColor: '#eee',
//	  trailWidth: 1,
//	  easing: 'easeInOut',
//	  duration: 1400,
//	  svgStyle: null,
//	  text: {
//	    value: '',
//	    alignToBottom: false
//	  },
//	  from: {color: '#FFEA82'},
//	  to: {color: '#ED6A5A'},
//	  // Set default step function for all animate calls
//	  step: (state, bar) => {
//	    bar.path.setAttribute('stroke', state.color);
//	    var value = Math.round(bar.value() * 100);
//	    if (value === 0) {
//	      bar.setText('');
//	    } else {
//	      bar.setText(value);
//	    }
//
//	    bar.text.style.color = state.color;
//	  }
//	});
//	bar.text.style.fontFamily = '"Raleway", Helvetica, sans-serif';
//	bar.text.style.fontSize = '2rem';
//	
//	document.getElementById("progressbar") = bar;
//	document.getElementById("progressbar").style.visibility = 'hidden';
//	
//}

function run_progressbar(bar){
	document.getElementById("progressbar").style.visibility = 'visible';
	bar.animate(1.0);
}

