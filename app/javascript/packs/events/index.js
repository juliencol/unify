/* Filtering events
---------------------------------------------------------------------- */

import mixitup from "mixitup";
import mixitupMultifilter from '../resources/mixitup-multifilter';

mixitup.use(mixitupMultifilter);


var containerEl = document.querySelector('.mix-container');
var mixer = mixitup(containerEl, {
    animation: {
        duration: 300
    },
    selectors: {
        control: '[data-mixitup-control]'
    },
    multifilter: {
        enable: true
    },
    callbacks: {
        onMixEnd: function (state) {
            sidebar_left.updateSticky();
            sidebar_right.updateSticky();
            if (mixitup.totalMatching < 2) {
                sidebar_left.destroy();
                sidebar_right.destroy();
            }
        }
    }
});

/* Fixed sidebars
---------------------------------------------------------------------- */

import 'sticky-sidebar';

const offset = document.querySelector(".navbar").offsetHeight + 10,
    events = document.querySelector(".mix-container"),
    leftSidebar = document.querySelector("#sidebar__left"),
    rightSidebar = document.querySelector("#sidebar__right");

var sidebar_right = new StickySidebar('#sidebar__right', {
    containerSelector: '#main-content',
    innerWrapperSelector: '.sidebar__right',
    topSpacing: offset,
    bottomSpacing: 50,
});

var sidebar_left = new StickySidebar('#sidebar__left', {
    containerSelector: '#main-content',
    innerWrapperSelector: '.sidebar__left',
    topSpacing: offset,
    bottomSpacing: 50
});

/* Controls
---------------------------------------------------------------------- */

$("[data-mixitup-control]").on('click', function () {
    if ($(this).hasClass("mixitup-control-active")) {
        $(this).parent().removeClass("checked");
    } else {
        $(this).parent().addClass("checked");
    }
});