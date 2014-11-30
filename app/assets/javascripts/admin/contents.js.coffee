window.content_pict_index = 9999

add_content_pict = ->
  new_block = window.content_pict_template.replace(/\%1/g, ++window.content_pict_index)
  $('#pict_block').append(new_block);

$ ->
  $('body').on 'click', '.add_content_pict', ->
    add_content_pict()
    false

  $('body').on 'click', '.content_pict_del', ->
    $row = $(this).closest('.row')

    if ($row.hasClass('persisted'))
      $del_elem = $('[id$="_destroy"]', $row)

      $del_elem.val(true)
      $row.hide()
    else
      $row.remove()

    false
