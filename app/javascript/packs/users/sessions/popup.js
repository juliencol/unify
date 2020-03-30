$(".pw-input").on("focus", function() {
    document.querySelector(".forgot-password").classList.add("focused");
});

$(".pw-input").on("blur", function() {
    window.setTimeout(function() {
        document.querySelector(".forgot-password").classList.remove("focused");
    }, 500);
});
