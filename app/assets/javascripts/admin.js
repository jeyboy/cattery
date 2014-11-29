// require jquery
//= require ./editor/jquery-1.11.1.min
//= require jquery_ujs

// require ./foundation/foundation.min
// require_directory ./foundation/modules

//= require_directory ./admin

//= require ./common
//= require ./notifies

//= require ./editor/index

$('document').ready(function() {
    $('.editor').editable({
        inlineMode: false,
//        paragraphy: false,
        spellcheck: true,
        toolbarFixed: false
    })
});
