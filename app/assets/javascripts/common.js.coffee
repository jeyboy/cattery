#= require ./foundation/foundation.min
#= require_directory ./foundation/modules
#= require 'chosen.jquery'

$ ->
  $('select').chosen({
    disable_search_threshold: 10
  });
