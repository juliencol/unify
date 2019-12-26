const UsersController = Paloma.controller('Users');

UsersController.prototype.sign_in = () => {
	const button = document.querySelector('.form-actions'),
		buttonSize = button.offsetWidth;
	button.style.left = 'calc(50% - ' + buttonSize / 2 + ')';
	const forgotPopupIn = () => {
		document.querySelector('.forgot-password').classList.add('focused');
	};
	const forgotPopupOut = () => {
		document.querySelector('.forgot-password').classList.remove('focused');
	};
};

UsersController.prototype.sign_up = () => {
	const button = document.querySelector('.form-actions'),
		buttonSize = button.offsetWidth;
	button.style.left = 'calc(50% - ' + buttonSize / 2 + ')';
};
