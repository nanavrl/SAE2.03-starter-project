import { Movie } from "../Movie/script.js";

let templateFile = await fetch("./component/movieCategory/template.html");
let template = await templateFile.text();

let MovieCategory = {};

MovieCategory.format = function (category) {
    let categoryHtml = template;
    categoryHtml = categoryHtml.replace("{{categoryName}}", category.name);

    let moviesListHtml = Movie.format(category.movies || []);
    categoryHtml = categoryHtml.replace("{{movieCard}}", moviesListHtml);

    return categoryHtml;
};

function setupCarousel(wrapperSelector, cardsPerPage = 4) {
    const wrapper = document.querySelector(wrapperSelector);
    if (!wrapper) return;
  
    const track = wrapper.querySelector('.carousel-track .movies');
    const cards = wrapper.querySelectorAll('.movie-card');
    const prev = wrapper.querySelector('.carousel-btn.prev');
    const next = wrapper.querySelector('.carousel-btn.next');
  
    let currentPage = 0;
    const totalPages = Math.ceil(cards.length / cardsPerPage);
  
    // Définir largeur de chaque carte pour être en ligne
    cards.forEach(card => {
      card.style.flex = `0 0 calc(100% / ${cardsPerPage})`;
    });
  
    // Affiche la bonne "page"
    function updateCarousel() {
      const translateX = -(100 / cardsPerPage) * currentPage;
      track.style.transform = `translateX(${translateX}%)`;
    }
  
    next.addEventListener('click', () => {
      if (currentPage < totalPages - 1) {
        currentPage++;
        updateCarousel();
      }
    });
  
    prev.addEventListener('click', () => {
      if (currentPage > 0) {
        currentPage--;
        updateCarousel();
      }
    });
  
    updateCarousel();
  }
  

export { MovieCategory };

