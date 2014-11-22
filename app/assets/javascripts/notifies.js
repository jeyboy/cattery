function notifyLifeTime(time) {
    setTimeout(
        function() {
            $('.notify').slideUp('600', function() { $(this).remove() });
        }, time
    )
}

function showMessage(message, type) {
    $('.flashes').prepend("<div class='notify " + (type || 'notice') + " abs'>" + message + "</div>");
    notifyLifeTime(30000);
}

$(document).ready(function() {
    $('body').on('click', '.notify', function() {
        $(this).remove()
    });
});