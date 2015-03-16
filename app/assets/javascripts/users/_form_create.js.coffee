## Main

$(document).on 'page:load ready', ->
  c = $ '#users-index'

  if c.length
    $('.users-form-create li:first-child').addClass 'active'
    $('.users-form-create .tab-pane:first-child').addClass 'active'
