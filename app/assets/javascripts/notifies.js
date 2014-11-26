function notifyLifeTime(time) {
    setTimeout(
        function() {
            $('.alert-box').slideUp('600', function() { $(this).remove() });
        }, time
    )
}

function showMessage(message, type) {
    $('.flashes').prepend(
        '<div data-alert class="alert-box ' + (type || 'success') +' radius">' +
        message +
        '<a href="#" class="close">&times;</a>' +
        '</div>'
    );
    notifyLifeTime(30000);
}

$(document).ready(function() {
    $('body').on('click', '.alert-box, .close', function() {
        $(this).slideUp('600', function() { $(this).remove() });
    });
});