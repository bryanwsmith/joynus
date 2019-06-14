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
//= require angular
//= require angular-resource
//= require angular-animate
//= require angular-sanitize
//= require masked-input
//= require script
//= require app
//= require services/JobsService
//= require controllers/JobsController

//= require ckeditor/init
//= require ckeditor/loader

$(document).scroll(function() {
  if ($(document).scrollTop() > 50) {
    $('nav').addClass('shrink');


  } else {
    $('nav').removeClass('shrink');

  }
});


$(function(){
  AOS.init ()

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












