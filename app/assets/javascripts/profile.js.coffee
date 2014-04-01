# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
class Profile
  constructor: ->
    _this = @
    $('.decisions').popover({
        html: true,
        content: ->
          $(this).parent().find('.popover_content_wrapper').html()
      })

    $(document).on "click", ".cover-photo", () ->
      console.log 'cover-photo clicked'
      $(this).parent().parent().parent().find('.decisions').popover('hide')
      image_id = $(this).data('image-id')
      console.log image_id
      $.post '/profile/make_cover_photo',
        image_id: image_id
        (data) ->
          console.log "Successfully Updated Cover Photo"
          location.reload()
    $(document).on "click", ".remove-photo", () ->
      console.log 'remove-photo clicked'
      $(this).parent().parent().parent().find('.decisions').popover('hide')
      image_id = $(this).data('image-id')
      $.post '/profile/remove_photo',
        image_id: image_id
        (data) ->
          console.log "Successfully Removed Photo"


    $(document).on "click", ".popover-close", () ->
      $(this).parent().parent().parent().find('.decisions').popover('hide')

@Profile = Profile