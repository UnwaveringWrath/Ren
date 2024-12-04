
const flowerCards = document.querySelectorAll('.flower-cards.card');

const toggleDescription = (event) => {
  const card = event.currentTarget;
  const description = card.querySelector('p');

  if (description.style.display === 'block') {
    description.style.display = 'none';
  } else {
    description.style.display = 'block';
  }
};

flowerCards.forEach((card) => {
  card.addEventListener('click', toggleDescription);
});