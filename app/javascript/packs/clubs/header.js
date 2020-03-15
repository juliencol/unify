import 'gsap';
import {
    TweenLite,
    TimelineMax
} from 'gsap';

$(document).ready(function () {

    function resizeForm() {
        const w = window.innerWidth ||
            document.documentElement.clientWidth ||
            document.body.clientWidth;
        if (w < 1024) {
            const triggerOffset = document.documentElement.clientHeight / 2,
                sceneStart = 380,
                duration = 280;

            let requestId = null;

            // SCROLL MAGIC!!!
            var tl = new TimelineMax({
                    paused: true
                })
                .to(".club-logo-page", duration, {
                    width: 50
                }, sceneStart)
                .to(".club-name", duration, {
                    fontSize: '.8rem'
                }, sceneStart)
                .to(".club-desc", duration, {
                    opacity: 0,
                    height: 0,
                    margin: 0
                }, sceneStart)
                .to(".club-controls", duration, {
                    opacity: 0,
                    height: 0,
                    margin: '0 !important'
                }, sceneStart);

            // Only update on animation frames
            window.addEventListener("scroll", function () {
                if (!requestId) {
                    requestId = requestAnimationFrame(update);
                }
            });

            update();

            // Set timeline time to scrollTop
            function update() {
                tl.time(window.pageYOffset + triggerOffset);
                requestId = null;
            }
        }
    }

    window.onresize = resizeForm;
    resizeForm();
});

// Display name of club on top after scroll
window.onscroll = () => {
    if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
        document.querySelector('.navbar').classList.add('scrolled');
    } else {
        document.querySelector('.navbar').classList.remove('scrolled');
    }
};