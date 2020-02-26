const button = $(".subscribe-button"),
    span = $(".subscribe-button .button-text");

$(function () {
    button.on('click', function () {
        button.toggleClass('subscribed');
        if (button.hasClass('subscribed')) {
            span.text("Inscrit");
        } else {
            span.text("S'inscrire");
        }
    });
});