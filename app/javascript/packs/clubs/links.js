import 'sticky-sidebar';

const offset = document.querySelector(".navbar").offsetHeight + 30,
    limit = $(window).width();

if (limit >= 992) {
    var sidebar_right = new StickySidebar('#sticky_links', {
        containerSelector: '#main-content',
        innerWrapperSelector: '.inner-wrapper',
        topSpacing: offset,
    });
}