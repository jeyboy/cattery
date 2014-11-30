$ ->
  menu = $('ul.side-nav, nav')

  if (menu.length > 0)
    splits = window.location.pathname.split('/')
    section = splits.pop()
    section2 = splits.pop()

    if (section.length == 0)
      section = 'contents'

    if (section2.length == 0)
      section2 = 'contents'

    menu.find(".#{section.toLowerCase()}, .#{section2.toLowerCase()}").addClass('active')
