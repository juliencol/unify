const resizeBanner = (banner) => {
    const width = banner.offsetWidth,
        height = (width * 2) / 7;
    console.log(height);
    banner.style.height = height + "px";
    banner.style.opacity = 1;
};

const targets = document.querySelectorAll(".banner");

if (targets) {
    targets.forEach((target) => {
        resizeBanner(target);
        window.onresize = resizeBanner(target);
    });
}
