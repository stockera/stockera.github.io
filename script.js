$(function () {
    $(window).on('scroll', function () {
        if ( $(window).scrollTop() > 10 ) {
            $('.navbar').addClass('scroll');
        } else {
            $('.navbar').removeClass('scroll');
        }
    });
});
