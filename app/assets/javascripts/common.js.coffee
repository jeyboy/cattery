#= require ./foundation/foundation.min
#= require_directory ./foundation/modules
#= require 'chosen.jquery'

#= require 'fastclick'
#= require 'jquery.cookie'
#= require 'placeholder'
#= require 'modernizr'

window.spoil = (selector) ->
  $('html, body').animate({
    scrollTop: $(selector).offset().top - 60 # todo: calculate elem height
  }, 500);

$ ->
  $('select.year, select.month, select.day, select.hour, select.minute, select.second').wrap('<li>');

  $('select').chosen({
    disable_search_threshold: 10
    inherit_select_classes: true
    width: '100%'
  });
