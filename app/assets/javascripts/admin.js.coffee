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
      @initNewUserForm()

  initPopover: ->
    _this = @
    $('.decisions').popover({
        html: true,
        content: ->
          $(this).parent().find('.popover_content_wrapper').html()
      })

    $(document).on "click", ".cover-photo", () ->
      console.log 'cover-photo clicked'
      $('.admin-spinner').show()
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
          $('.admin-spinner').hide()
          console.log data['html']
          $(output_div).html(data['html'])
          _this.initPopover()

    $(document).on "click", ".remove-photo", () ->
      console.log 'remove-photo clicked'
      $('.admin-spinner').show()
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
          $('.admin-spinner').hide()
          $(output_div).html(data['html'])
          _this.initPopover()



    $(document).on "click", ".popover-close", () ->
      $(this).parent().parent().parent().find('.decisions').popover('hide')
  

  initImageUpload: (elem_id, url, output_div)->
    _this = @
    $(elem_id).change () ->
      file = this.files[0]
      $('.admin-spinner').show()
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
              $('.admin-spinner').hide()
              _this.initPopover()
      else
        alert 'You can only upload images'

  initNewUserForm: ->
    validate_email = () ->
      emailRegEx = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
      return emailRegEx.test($("#email").val())
    validate_fields = () ->
      return $("#email").val().length > 0 and 
        $("#first_name").val().length > 0 and
        $("#last_name").val().length > 0

    $("#new-user-submit").click () ->
      $('.errors').html('')
      if not validate_email()
        $('.errors').append("<li style = 'color:red'>Email not valid</li>")
        return
      if not validate_fields()
        $('.errors').append("<li style = 'color:red'>All required fields must be filled out</li>")
        return
      $('#new-user-form').submit()

@Admin = Admin