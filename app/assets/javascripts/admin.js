//= require jquery
//= require jquery_ujs

// require ./foundation/foundation.min
// require_directory ./foundation/modules

//= require_directory ./admin

//= require ./common

//= require ./editor/index

$('document').ready(function() {
    $('.editor').editable({inlineMode: false})
});
