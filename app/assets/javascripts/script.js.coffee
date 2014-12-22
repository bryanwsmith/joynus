joynuss = ->
  #  Home Waypoints
  $('#career').waypoint
    handler: (direction) ->
      $('#career .animated-text').addClass 'animated fadeIn', direction is 'down'
    offset: 'bottom-in-view'

  $('#right-job').waypoint
    handler: (direction) ->
      $('#right-job .animated-text').addClass 'animated fadeIn', direction is 'down'
    offset: 'bottom-in-view'

  $('#best-decision').waypoint
    handler: (direction) ->
      $('#best-decision .animated-text').addClass 'animated fadeIn', direction is 'down'
    offset: 'bottom-in-view'

  $('#employers').waypoint
    handler: (direction) ->
      $('#employers .animated-text').addClass 'animated fadeIn', direction is 'down'
    offset: 'bottom-in-view'

  $('.feature-section .feature-static').css('max-height', $(window).height() - 197)

  $(window).resize adjustPusher

$(document).ready ->
  joynuss()
