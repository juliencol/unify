var UsersController = Paloma.controller('Users');

UsersController.prototype.sign_in = function() {
  const button = document.querySelector(".form-actions"),
        buttonSize = button.offsetWidth;
  button.style.left = "calc(50% - " + buttonSize/2 + ")";
  const forgotPopupIn = () => {
  	document.querySelector('.forgot-password').classList.add('focused');
  };
  const forgotPopupOut = () => {
  	document.querySelector('.forgot-password').classList.remove('focused');
  };
};

UsersController.prototype.sign_up = function() {
  const button = document.querySelector(".form-actions"),
        buttonSize = button.offsetWidth;
  button.style.left = "calc(50% - " + buttonSize/2 + ")";
};
