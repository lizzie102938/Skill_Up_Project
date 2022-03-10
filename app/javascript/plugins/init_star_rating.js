import "jquery-bar-rating";

const initStarRating = () => {
  console.log('I am Connected')
  $('review_rating').barrating({
    theme: 'css-stars'
  });
};

export { initStarRating };
