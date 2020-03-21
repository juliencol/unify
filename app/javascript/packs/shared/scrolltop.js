$(document).ready(function () {

    function resizeScroll() {
        const width = (window.innerWidth > 0) ? window.innerWidth : document.documentElement.clientWidth;
        if (width > 1024) {
            $(window).scroll(function () {
                if ($(this).scrollTop() > 200) {
                    $('.scrollToTop').fadeIn();
                } else {
                    $('.scrollToTop').fadeOut();
                }
            });

            $('.scrollToTop').click(function () {
                $('html, body').animate({
                    scrollTop: 0
                }, 800);
                return false;
            });
        } else {
            $('.scrollToTop').fadeOut();
        }
    }
    window.onresize = resizeScroll;
    resizeScroll();

});