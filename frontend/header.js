let navHeader = document.querySelector("header");
let navMenu = document.querySelector(".header__menu");
let navItems = document.querySelectorAll(".header__navItem");
let navItemHighlighted = document.querySelector(".header__navItem--highlighted");
let navHeaderList = document.querySelector(".header__navList");

window.addEventListener("scroll", () => {
    if (window.pageYOffset > 0){
        navHeader.classList.add("header--sticky");
    }
    else{
        navHeader.classList.remove("header--sticky");
    }
});

navMenu.addEventListener("click", () => {
    navHeader.classList.toggle("header--responsive");
});

navItems.forEach((navItem) => {
    navItem.addEventListener("mouseenter", () => {
        navItemHighlighted.classList.remove("header__navItem--highlighted");
    });
});

navHeaderList.addEventListener("mouseleave", () => {
    navItemHighlighted.classList.add("header__navItem--highlighted");
});