ready = ->
  Typed.new '.element',
    strings: [
      'Welcome to my online portfolio.'
      'It is my passion to bring great ideas life.'
    ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready