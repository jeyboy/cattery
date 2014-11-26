#= require ./foundation/foundation.min
#= require_directory ./foundation/modules
#= require 'chosen.jquery'

window.spoil = (selector) ->
  $('html, body').animate({
    scrollTop: $(selector).offset().top - 60 # todo: calculate elem height
  }, 500);

$ ->
  $('select').chosen({
    disable_search_threshold: 10
    inherit_select_classes: true
    width: undefined
  });
