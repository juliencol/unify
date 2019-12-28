window.onscroll = () => {
	if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
		document.querySelector('.navbar').style.filter = 'drop-shadow(0 5px 20px rgba(0, 0, 0, .2))';
	} else {
		document.querySelector('.navbar').style.filter = 'drop-shadow(0 5px 20px rgba(0, 0, 0, 0))';
	}
};
