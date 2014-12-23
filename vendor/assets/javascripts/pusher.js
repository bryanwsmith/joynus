function adjustPusher() {
    var pusher = $("#pusher");
    var canvasHeight = $('body').height() - pusher.height();
    var pusherHeight = $(window).height() - canvasHeight;
    if (pusherHeight < 0) pusherHeight = 0;
    pusher.css({height: pusherHeight + "px"});
};
