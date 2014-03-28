# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  adjustHeights($(".bookmark .page-title h1"))

  init_map = ->
    myOptions =
      zoom: 11
      center: new google.maps.LatLng(32.7668005, -117.05755440000001)
      mapTypeId: google.maps.MapTypeId.ROADMAP

    map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions)
    marker = new google.maps.Marker(
      map: map
      position: new google.maps.LatLng(32.7668005, -117.05755440000001)
    )
    infowindow = new google.maps.InfoWindow(content: "<span style='height:auto !important; display:block; white-space:nowrap; overflow:hidden !important;'><strong style='font-weight:400;'>True Fit Tattoo</strong><br>6561 El Cajon Blvd<br>92115 San Diego</span>")
    google.maps.event.addListener marker, "click", ->
      infowindow.open map, marker
      return

    infowindow.open map, marker
    return
  init_map()