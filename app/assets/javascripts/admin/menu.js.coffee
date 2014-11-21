$ ->
  menu = $('nav')

  if (menu.length > 0)
    sections = window.location.pathname.split('/')

    $menu_item = menu.find(".#{sections[2].toLowerCase()}").addClass('active')
#    $menu_item.find('a:first').addClass('button radius')
    $menu_item.find(".#{(sections[3] || 'index').toLowerCase()}").addClass('active')
