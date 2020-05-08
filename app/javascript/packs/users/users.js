$(document).ready(function () {
    function resizeForm() {
        const button = document.querySelector(".form-actions"),
            buttonSize = button.offsetWidth,
            modalSize = document.querySelector(".login-container").offsetWidth,
            buttonLeft = modalSize / 2 - buttonSize / 2;
        button.style.left = buttonLeft + "px";
    }

    window.onresize = resizeForm;
    resizeForm();
});
