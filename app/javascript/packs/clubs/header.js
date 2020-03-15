$(document).ready(function () {

    function resizeForm() {
        const w = window.innerWidth ||
            document.documentElement.clientWidth ||
            document.body.clientWidth,
            h = document.querySelector("#club-header").offsetHeight;
        if (w < 1024) {
            // Display name of club on top after scroll
            window.onscroll = () => {
                if (document.body.scrollTop > h || document.documentElement.scrollTop > h) {
                    document.querySelector('#club-header').classList.add('scrolled');
                } else {
                    document.querySelector('#club-header').classList.remove('scrolled');
                }
            };
        }
    }

    window.onresize = resizeForm;
    resizeForm();
});