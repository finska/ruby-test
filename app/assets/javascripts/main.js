$(document).ready(function () {
    $('.modal').modal();
    $('.google-maps').click(function (e) {
        e.preventDefault();
        var location = $(this).attr('data');
        console.log(location);
        $('.modal-content').html(`<iframe
width="100%"
height="100%"
frameborder="0" style="border:0"
src="https://www.google.com/maps/embed/v1/place?key=AIzaSyBgQJ2TfZUn_sO8OXE-mN9JGSpna3WxjZA&q=${location}" allowfullscreen></iframe>`);
    });
});
