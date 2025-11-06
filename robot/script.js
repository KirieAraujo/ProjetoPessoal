const parts = {
  head: document.querySelector('.head'),
  body: document.querySelector('.body'),
  arms: document.querySelector('.arms'),
  legs: document.querySelector('.legs'),
};

function Montar() {
  parts.head.style.backgroundImage = `url(img/${document.getElementById('headSelect').value})`;
  parts.body.style.backgroundImage = `url(img/${document.getElementById('bodySelect').value})`;
  parts.arms.style.backgroundImage = `url(img/${document.getElementById('armsSelect').value})`;
  parts.legs.style.backgroundImage = `url(img/${document.getElementById('legsSelect').value})`;
}

document.querySelectorAll('select').forEach(select => {
  select.addEventListener('change', Montar);
});
