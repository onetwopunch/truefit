# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
class Shop
  constructor: ->

    map = new GMaps({
        div: '#map',
        lat: 32.7668005,
        lng: -117.05755440000001
      })
    map.addMarker
      lat: 32.7668005,
      lng: -117.05755440000001,
      title: 'True Fit Tattoo',
      infoWindow: 
        content: '<p>True Fit Tattoo<br>6561 El Cajon Blvd<br>San Diego, CA<br>92115</p>'
      
@Shop = Shop
