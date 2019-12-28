document.getElementById("search_terms").onfocus = function () {
  document.getElementById("search-form").width = "40vw!important";
};

document.getElementById("search_terms").onblur = function () {
  document.getElementById("search-form").width = "25vw!important";
};
