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
//        toolbarFixed: false
        imageUploadParam: 'image_param',
//        {"timestamp":1417399090,"callback":"http://localhost:3000/cloudinary_cors.html","signature":"7ab487dba9bc4545b516660ab441c4c0b45500c5","api_key":"951696928569826"}

        // Set the image upload URL.
        imageUploadURL: 'https://api.cloudinary.com/v1_1/duofold/image/upload',

        // Additional upload params.
        imageUploadParams: {id: 'my_editor'}
    }).on('editable.imageError', function (e, editor, error) {
        console.log(error);
    });
});
