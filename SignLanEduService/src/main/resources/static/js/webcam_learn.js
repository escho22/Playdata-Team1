//original code::
//var video = document.querySelector("#videoElement");
//if (navigator.mediaDevices.getUserMedia) {
//  navigator.mediaDevices.getUserMedia({ video: true })
//    .then(function (stream) {
//      video.srcObject = stream;
//    })
//    .catch(function (err0r) {
//      console.log("Something went wrong!");
//    });
//}

//browser support check "ms" vendor function is for IE8
navigator.getUserMedia = ( navigator.getUserMedia       ||
                           navigator.webkitGetUserMedia ||
                           navigator.mozGetUserMedia    ||
                           navigator.msGetUserMedia );

if (navigator.getUserMedia) {
    navigator.getUserMedia(
        // constraints
        {
            video: true,
        },
        // successCallback
        function () {
            var video = document.getElementById("videoElement");
			console.log
            //video.src = window.URL.createObjectURL(localMediaStream);
			video.srcObject = new MediaStream();
            // Do something with the video
            video.play();
        },
        // errorCallback
        function (err) {
            console.log("The following error occured: " + err);
        }
    );
} else {
    alert("getUserMedia not supported by your web browser or Operating system version");
}