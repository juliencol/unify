const registerToEvent = (element) => {
  const registerButton = document.getElementById(element);
  if (greeButton) {
     registerButton.classList.toggle('registered_button');
     registerButton.classList.toggle('not_registered_button');
  }
};

export { registerToEvent };