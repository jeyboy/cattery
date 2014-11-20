window.cat_pict_index = 9999

add_cat_pict = (type) ->
  new_block = window.cat_pict_templates[type].replace(/\%1/g, ++window.cat_pict_index)

  if (type == 'slave')
    $('#pict_block').append(new_block);
  else
    $('#pict_block').prepend(new_block);

$ ->
  $('body').on 'click', '.add_cat_pict', ->
    add_cat_pict('slave')
    false

  $('body').on 'click', '.cat_pict_del', ->
    $row = $(this).closest('.row')

    if ($row.hasClass('persisted'))
      $del_elem = $('[id$="_destroy"]', $row)

      $del_elem.val(true)
      $row.hide()
    else
      $row.remove()

    if ($row.hasClass('main'))
      add_cat_pict('master')

    false
