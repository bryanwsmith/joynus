// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require waypoints
//= require foundation-wysihtml5
//= require foundation-wysihtml5/locales
//= require angular
//= require angular-resource
//= require angular-animate
//= require angular-sanitize
//= require masked-input
//= require script
//= require app
//= require services/JobsService
//= require controllers/JobsController
 function RN() {
    document.getElementById("RN").innerHTML = "Travel Nurse<br> Per-diem Nurse<br> Locum Tenens Nurse";
  }  
$(document).scroll(function() {
  if ($(document).scrollTop() > 50) {
    $('nav').addClass('shrink');
    
   
  } else {
    $('nav').removeClass('shrink');
  
  }
});


$(function(){
  AOS.init ()
});

$(function(){
  $(document).foundation();

  function adjustPusher() {
    var pusher = $("#pusher");
    var canvasHeight = $('body').height() - pusher.height();
    var pusherHeight = $(window).height() - canvasHeight;
    if (pusherHeight < 0) pusherHeight = 0;
    pusher.css({height: pusherHeight + "px"});
  };

  adjustPusher();
  $(window).resize(adjustPusher);
});

var slideIndex = 1;
showSlides(slideIndex);

var slideIndex2 = 1;
showSlides2(slideIndex2);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function plusSlides2(n) {
  showSlides2(slideIndex2 += n);
}


function currentSlide(n) {
  showSlides(slideIndex = n);
}

function currentSlide2(n) {
  showSlides2(slideIndex2 = n);
}


function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace("activate", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " activate";
}

function showSlides2(n) {
  var i;
  var slides2 = document.getElementsByClassName("mySlides2");
  var dots2 = document.getElementsByClassName("dot2");
  if (n > slides2.length) {slideIndex2 = 1}    
  if (n < 1) {slideIndex2 = slides2.length}
  for (i = 0; i < slides2.length; i++) {
      slides2[i].style.display = "none";  
  }
  for (i = 0; i < dots2.length; i++) {
      dots2[i].className = dots2[i].className.replace("activate", "");
  }
  slides2[slideIndex2-1].style.display = "block";  
  dots2[slideIndex2-1].className += " activate";
}




//modal employer page SELECTIVE SCREENING

document.getElementsByClassName("tablink")[0].click();

function openCity(evt, cityName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("city");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
    tablinks[i].classList.remove("w3-light-grey");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.classList.add("w3-light-grey");
}








