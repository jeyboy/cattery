//= require jquery
//= require jquery_ujs

//= require_directory ./application

//= require ./common
//= require ./notifies

function resizeBackground() {
    var $body = $('body');
    console.log($body);
    $body.height($body.height() + 60);
}

$(window).on('resize', resizeBackground);

$(window).ready(function() {
    resizeBackground();
});
