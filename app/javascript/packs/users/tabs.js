const init = () => {
    const tab = document.querySelector(".active[data-tab]");
    const minHeight = tab.offsetHeight;
    tab.parentNode.style.height = minHeight + 60 + "px";
};

const changeTab = (clicked) => {
    const tab = clicked.getAttribute("data-tab-btn");
    const target = document.querySelector("[data-tab=" + tab + "]");
    const active = target.classList.contains("active");

    if (!active) {
        animateTab(target);
        document.querySelectorAll("[data-tab-btn]").forEach(function (btn) {
            btn.classList.remove("active");
        });
        clicked.classList.add("active");
        init();
    }
};

const animateTab = (tab) => {
    const currentTab = document.querySelector(".active[data-tab]");
    currentTab.classList.remove("active");
    tab.classList.add("active");
};

window.changeTab = changeTab;
window.animateTab = animateTab;
window.addEventListener("load", init());
