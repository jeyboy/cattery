$ ->
  menu = $('ul.side-nav, nav')

  if (menu.length > 0)
    section = window.location.pathname.split('/').pop()
    if (section.length == 0)
      section = 'contents'

    if (section)
      menu.find(".#{section.toLowerCase()}").addClass('active')
