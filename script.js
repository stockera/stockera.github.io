$( function () {
    $(window).on('scroll', function () {
        var hauteurScroll = document.getElementById("jumb").offsetHeight;
        if ( $(window).scrollTop() > hauteurScroll ) {
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
