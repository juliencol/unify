/* Filtering events */
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

/* Fixed sidebars */
import ScrollMagic from 'scrollmagic';
import 'gsap';

const events = document.querySelector(".mix-container"),
    leftSidebar = document.querySelector(".sticky-col-left"),
    rightSidebar = document.querySelector(".sticky-col-right"),
    offset = document.querySelector(".navbar").offsetHeight;

const controller = new ScrollMagic.Controller();
const scene_left = new ScrollMagic.Scene({
    triggerElement: leftSidebar,
    triggerHook: 0,
    offset: -offset,
    duration: getDuration(leftSidebar)
}).setPin(leftSidebar).addTo(controller);

const scene_right = new ScrollMagic.Scene({
    triggerElement: rightSidebar,
    triggerHook: 0,
    offset: -offset,
    duration: getDuration(rightSidebar)
}).setPin(rightSidebar).addTo(controller);

// mobile support
window.addEventListener("resize", () => {
    if (window.matchMedia("(max-width: 768px)").matches) {
        scene_left.removePin(leftSidebar, true);
        scene_right.removePin(rightSidebar, true);
    }
});

function getDuration(target) {
    return events.offsetHeight - target.offsetHeight;
}

if (events.offsetHeight < leftSidebar.offsetHeight || events.offsetHeight < rightSidebar.offsetHeight) {
    scene_left.removePin(leftSidebar, true);
    scene_right.removePin(rightSidebar, true);
}