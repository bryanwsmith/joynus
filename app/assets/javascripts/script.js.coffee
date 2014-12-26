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

  $('a[href^=\"#\"]').on 'click', (e) ->
    e.preventDefault()
    target = @hash
    $target = $(target)
    $('html, body').stop().animate
      scrollTop: $target.offset().top - 60;
      900, 'swing', ->
      window.location.hash = target

  $('#blog-textarea').wysihtml5({
    "size": 'tiny',
    "font-styles": true,
    "emphasis": true,
    "lists": true,
    "html": true,
    "link": true,
    "image": true,
    "color": true
  })

  $('table.clickable-row tr').click ->
    href = $(this).attr('data-url')
    window.location = href

$(document).ready ->
  joynuss()
