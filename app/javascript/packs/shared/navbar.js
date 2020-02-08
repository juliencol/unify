// Add shadow on scroll
window.onscroll = () => {
  if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
    document.querySelector('.navbar').style.filter = 'drop-shadow(0 5px 20px rgba(0, 0, 0, .2))';
  } else {
    document.querySelector('.navbar').style.filter = 'drop-shadow(0 5px 20px rgba(0, 0, 0, 0))';
  }
};

// Make search bar bigger (if desktop)
if (window.innerWidth > 900) {
  document.querySelector("#search_name").onfocus = function () {
    $("#search-form").css({
      "width": "40vw",
    });
  };

  document.querySelector("#search_name").onblur = function () {
    $("#search-form").css({
      "width": "25vw",
    });
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