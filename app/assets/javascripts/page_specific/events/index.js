var EventsController = Paloma.controller('Events');

EventsController.prototype.index = function() {
  window.onscroll = function() {
    if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
      document.querySelector(".navbar").style.background = "#fff";
      document.querySelector(".navbar").style.filter = "drop-shadow(0 5px 20px rgba(0, 0, 0, .2))";
    } else {
      document.querySelector(".navbar").style.background = "transparent";
      document.querySelector(".navbar").style.filter = "drop-shadow(0 5px 20px rgba(0, 0, 0, 0))";
    }
  }
};
