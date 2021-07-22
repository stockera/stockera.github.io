$(function () {
    $(window).on('scroll', function () {
        if ( $(window).scrollTop() > 10 ) {
            $('.navbar').removeClass('navbar-light');
            $('.navbar').addClass('navbar-dark');
            $('.navbar').addClass('bg-dark');
        } else {
            $('.navbar').removeClass('navbar-dark');
            $('.navbar').removeClass('bg-dark');
            $('.navbar').addClass('navbar-light');
        }
    });
});
