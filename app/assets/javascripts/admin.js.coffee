# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
class Admin
  constructor: ->
    action = $('body').data('page').split(':')[1]
    if action == 'index'
      @initImageUpload("#slideshow-upload", "/admin/upload_slide", ".slides")
      @initImageUpload("#shop-image-upload", "/admin/upload_shop_image", ".shop-images")
      @initPopover()

  initPopover: ->
    _this = @
    $('.decisions').popover({
        html: true,
        content: ->
          $(this).parent().find('.popover_content_wrapper').html()
      })

    $(document).on "click", ".cover-photo", () ->
      console.log 'cover-photo clicked'
      $('.spinner').show()
      content_wrapper = $(this).parent().parent().parent()
      $(content_wrapper).find('.decisions').popover('hide')
      image_id = $(this).data('image-id')
      if $(content_wrapper).data('target') == "slides"
        url = "/admin/make_first_slide"
        output_div = ".slides"
      else if $(content_wrapper).data('target') == "shop"
        url = "/admin/make_first_shop_photo"
        output_div = ".shop-images"
      else
        return
      $.post url,
        image_id: image_id
        (data) ->
          console.log "Successfully Updated Cover Photo"
          $('.spinner').hide()
          console.log data['html']
          $(output_div).html(data['html'])
          _this.initPopover()

    $(document).on "click", ".remove-photo", () ->
      console.log 'remove-photo clicked'
      $('.spinner').show()
      content_wrapper = $(this).parent().parent().parent()
      $(content_wrapper).find('.decisions').popover('hide')
      image_id = $(this).data('image-id')
      if $(content_wrapper).data('target') == "slides"
        url = "/admin/remove_slide"
        output_div = ".slides"
      else if $(content_wrapper).data('target') == "shop"
        url = "/admin/remove_shop_photo"
        output_div = ".shop-images"
      else
        return
      $.post url,
        image_id: image_id
        (data) ->
          console.log "Successfully Removed Photo"
          $('.spinner').hide()
          $(output_div).html(data['html'])
          _this.initPopover()



    $(document).on "click", ".popover-close", () ->
      $(this).parent().parent().parent().find('.decisions').popover('hide')
  

  initImageUpload: (elem_id, url, output_div)->
    _this = @
    $(elem_id).change () ->
      file = this.files[0]
      $('.spinner').show()
      if file.type.match("image.*")
        reader = new FileReader()
        reader.readAsDataURL(file)
        reader.onload = () ->
          file_data = reader.result
          console.log file_data
          file_data = file_data.replace(/^data:image\/(png|jpg|jpeg);base64,/i, "")
          $.post url,
            file: file_data
            name: file.name
            (data) ->
              console.log "File uploaded successfully"
              console.log data['html']
              $(output_div).html(data['html'])
              $('.spinner').hide()
              _this.initPopover()
      else
        alert 'You can only upload images'

@Admin = Admin