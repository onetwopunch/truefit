$ ->
  page = $('body').data('page')
  controller= page.split(':')[0]
  if controller == 'shop'
    new Shop()
  else if controller == 'artists'
    new Artists()
  else if controller == 'home'
    new Home()
  else if controller =='profile'
    new Profile()
  else if controller =='admin'
    new Admin()

