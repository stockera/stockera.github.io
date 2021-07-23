$( function () {
    $(window).on('scroll', function () {
        var hauteurJumb = document.getElementById("jumb").offsetHeight;
        var hauteurNav = document.getElementById("Nav").offsetHeight;
        if ( $(window).scrollTop() > hauteurJumb-hauteurNav ) {
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
