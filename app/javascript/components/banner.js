import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Make your own Cocktail", "Just try one!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
