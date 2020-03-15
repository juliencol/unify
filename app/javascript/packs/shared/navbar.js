// Add shadow on scroll
window.onscroll = () => {
  if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
    document.querySelector('.navbar').classList.add('scrolled');
  } else {
    document.querySelector('.navbar').classList.remove('scrolled');
  }
};

// Show dropdown on hover
$('body').on('mouseenter mouseleave', '.nav-item', function (e) {
  if ($(window).width() > 750) {
    var _d = $(e.target).closest('.nav-item');
    _d.addClass('show');
    setTimeout(function () {
      _d[_d.is(':hover') ? 'addClass' : 'removeClass']('show');
    }, 1);
  }
});

// Sidebar nav on mobile
$(document).ready(function () {
  var sideslider = $('[data-toggle=collapse-side]');
  var sel = sideslider.attr('data-target');
  var sel2 = sideslider.attr('data-target-2');
  sideslider.click(function (event) {
    $(sideslider).toggleClass('expanded');
    $(sel).toggleClass('in');
    $(sel2).toggleClass('out');
  });
});

$("body").on('click', function (event) {
  var clickover = $(event.target).attr('class') == "navbar" || $(event.target).parents(".navbar").length;
  if (!clickover && $(".side-collapse").hasClass("in")) {
    $('[data-toggle=collapse-side]').click();
  }
});