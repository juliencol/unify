window.onscroll = () => {
  if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
    document.querySelector('.navbar').style.filter = 'drop-shadow(0 5px 20px rgba(0, 0, 0, .2))';
  } else {
    document.querySelector('.navbar').style.filter = 'drop-shadow(0 5px 20px rgba(0, 0, 0, 0))';
  }
};

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