const target = document.querySelector('.forgot-password'),
      input = document.querySelector('#resource_password');

input.onfocus = function () {
  target.classList.add('focused');
};

input.onblur = function () {
  target.classList.remove('focused');
};
