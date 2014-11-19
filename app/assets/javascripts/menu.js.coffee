$ ->
  menu = $('ul.side-nav')

  if (menu.length > 0)
    section = window.location.pathname.split('/').pop()
    if (section)
      menu.find(".#{section.toLowerCase()}").addClass('active')
#    else
#      menu.find("li").first())
#      .addClass('active')
