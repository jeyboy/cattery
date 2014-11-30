$ ->
  menu = $('ul.side-nav, nav')

  if (menu.length > 0)
    splits = $.grep(window.location.pathname.split('/'), (name) ->
      return name.length > 2 && (name * 1).toString() != name
    )
    section = splits.pop() || 'contents'

    menu.find(".#{section.toLowerCase()}").addClass('active')
