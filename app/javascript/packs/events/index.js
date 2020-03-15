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
    }
});

// mobile
//-------------------------

$(".toggle-filters").on('click', function () {
    $(this).parent().toggleClass("filters-shown");
});

$("body").on('click', function (event) {
    var clickover = event.target.id == "mobile-filters" || $(event.target).parents("#mobile-filters").length;
    if (!clickover && $(".mobile-filters").hasClass("filters-shown")) {
        $(".toggle-filters").click();
    }
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