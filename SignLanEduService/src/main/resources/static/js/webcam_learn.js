//WebRTC:
/*
 *  Copyright (c) 2015 The WebRTC project authors. All Rights Reserved.
 *
 *  Use of this source code is governed by a BSD-style license
 *  that can be found in the LICENSE file in the root of the source
 *  tree.
 */
//'use strict';
//
//// Put variables in global scope to make them available to the browser console.
//const constraints = window.constraints = {
//  audio: false,
//  video: true
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
//function handleError(error) {
//  if (error.name === 'ConstraintNotSatisfiedError') {
//    const v = constraints.video;
//    errorMsg(`The resolution ${v.width.exact}x${v.height.exact} px is not supported by your device.`);
//  } else if (error.name === 'PermissionDeniedError') {
//    errorMsg('Permissions have not been granted to use your camera and ' +
//      'microphone, you need to allow the page access to your devices in ' +
//      'order for the demo to work.');
//  }
//  errorMsg(`getUserMedia error: ${error.name}`, error);
//}
//
//function errorMsg(msg, error) {
//  const errorElement = document.querySelector('#errorMsg');
//  errorElement.innerHTML += `<p>${msg}</p>`;
//  if (typeof error !== 'undefined') {
//    console.error(error);
//  }
//}
//
//async function init(e) {
//  try {
//    const stream = await navigator.mediaDevices.getUserMedia(constraints);
//    handleSuccess(stream);
//    e.target.disabled = true;
//  } catch (e) {
//    handleError(e);
//  }
//}
//
//document.querySelector('#showVideo').addEventListener('click', e => init(e));



//test code::
//var video = document.querySelector("#videoElement");
//
//navigator.getUserMedia = ( navigator.getUserMedia       ||
//                           navigator.webkitGetUserMedia ||
//                           navigator.mozGetUserMedia    ||
//                           navigator.msGetUserMedia );
//
//if (navigator.getUserMedia) {
//  navigator.mediaDevices.getUserMedia({ video: true })
//    .then(function (stream) {
//      video.srcObject = stream;
//    })
//    .catch(function (err0r) {
//      console.log("Something went wrong!");
//    });
//}


//original code:
var video = document.querySelector("#videoElement");

if (navigator.mediaDevices.getUserMedia) {
  navigator.mediaDevices.getUserMedia({ video: true })
    .then(function (stream) {
      video.srcObject = stream;
    })
    .catch(function (err0r) {
      console.log("Something went wrong!");
    });
}


////browser support check "ms" vendor function is for IE8
////test code::

//navigator.getUserMedia = ( navigator.getUserMedia       ||
//                           navigator.webkitGetUserMedia ||
//                           navigator.mozGetUserMedia    ||
//                           navigator.msGetUserMedia );
//
//if (navigator.getUserMedia) {
//    navigator.getUserMedia(
//        // constraints
//        {
//            video: true,
//        },
//        // successCallback
//        function () {
//            var video = document.getElementById("videoElement");
//			console.log(video);
//            //video.src = window.URL.createObjectURL(localMediaStream);
//			video.srcObject = new MediaStream();
//            // Do something with the video
//            video.play();
//        },
//        // errorCallback
//        function (err) {
//            console.log("The following error occured: " + err);
//        }
//    );
//} else {
//    alert("getUserMedia not supported by your web browser or Operating system version");
//}