var video = document.querySelector("#videoElement");

navigator.getUserMedia = ( navigator.getUserMedia       ||
                           navigator.webkitGetUserMedia ||
                           navigator.mozGetUserMedia    ||
                           navigator.msGetUserMedia );

if (navigator.mediaDevices.getUserMedia) {
  navigator.mediaDevices.getUserMedia({ video: true })
    .then(function (stream) {
      video.srcObject = stream;
    })
    .catch(function (err0r) {
      console.log("Something went wrong!");
    });
}