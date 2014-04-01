# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
class Home
  constructor: ->
    console.log "Loading slidesjs"
    $("#slides").slidesjs ({
      width: 840,
      height: 428,
      navigation: false,
      play: {
        active: true,
        interval: 5000,
        effect: "fade"
        pauseOnHover: true,
        auto: true,
        restartDelay: 2000,
      }
    })
@Home = Home
