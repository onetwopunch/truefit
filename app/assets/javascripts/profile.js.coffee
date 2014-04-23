# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
class Profile
  constructor: ->
    action = $('body').data('page').split(':')[1]
    if action == 'index'
      @initImageUpload()
      @initPopover()
      @initEditProfile()

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
      $(this).parent().parent().parent().find('.decisions').popover('hide')
      image_id = $(this).data('image-id')
      console.log image_id
      $.post '/profile/make_cover_photo',
        image_id: image_id
        (data) ->
          console.log "Successfully Updated Cover Photo"
          $('.spinner').hide()
          $('.images').html(data['html'])
          _this.initPopover()

    $(document).on "click", ".remove-photo", () ->
      console.log 'remove-photo clicked'
      $('.spinner').show()
      $(this).parent().parent().parent().find('.decisions').popover('hide')
      image_id = $(this).data('image-id')
      $.post '/profile/remove_photo',
        image_id: image_id
        (data) ->
          console.log "Successfully Removed Photo"
          $('.spinner').hide()
          $('.images').html(data['html'])
          _this.initPopover()



    $(document).on "click", ".popover-close", () ->
      $(this).parent().parent().parent().find('.decisions').popover('hide')
  
  initEditProfile: ->
    $('.btn-edit').popover({
      html: true,
      content: ->
        $('.upload-profile-form').html()  
      })
    # $('.btn-edit').click () ->
    #   $('.upload-profile-form').toggle('medium')
    $(document).on "change", "#upload-profile-pic", () ->
      file = this.files[0]
      $('#profile-spinner').show()
      mbs = file.size/1024/1024
      console.log "#{mbs}MB"
      if mbs > 2.0
        alert('This image is: ' + mbs + "MB, and you can only upload 2MB. Please resize the image and ");
        $('#profile-spinner').hide()
        return
      if file.type.match("image.*")
        reader = new FileReader()
        reader.readAsDataURL(file)
        reader.onload = () ->
          file_data = reader.result
          console.log file_data
          file_data = file_data.replace(/^data:image\/.*?;base64,/i, "")
          $.post '/profile/set_profile_pic',
            file: file_data
            name: file.name
            (data) ->
              console.log "File uploaded successfully"
              location.reload()
              $('#profile-spinner').hide()
              $('.btn-edit').popover('hide')

  initImageUpload: ->
    _this = @
    $("#upload-input").change () ->
      file = this.files[0]
      $('.spinner').show()
      if file.type.match("image.*")
        mbs = file.size/1024/1024
        console.log "#{mbs}MB"
        if mbs > 2.0
          alert('This image is: ' + mbs + "MB, and you can only upload 2MB. Please resize the image and ");
          $('.spinner').hide()
          return
        reader = new FileReader()
        reader.readAsDataURL(file)
        reader.onload = () ->
          file_data = reader.result
          console.log file_data
          file_data = file_data.replace(/^data:image\/(png|jpg|jpeg);base64,/i, "")
          $.post '/profile/upload',
            file: file_data
            name: file.name
            (data) ->
              console.log "File uploaded successfully"
              $('.images').html(data['html'])
              $('.spinner').hide()
              _this.initPopover()

      else
        alert 'You can only upload images'
@Profile = Profile