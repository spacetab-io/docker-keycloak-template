function ready() {
  const btn = document.querySelector('.st-app__button');
  const btnIcon = document.querySelector('.st-app__icon');
  const loader = document.querySelector('.sk-circle-bounce');

  btn.addEventListener('click', function () {
    btn.innerHTML = '';
    btnIcon.style.display = 'none';
    loader.style.display = 'block';
  });

}

document.addEventListener("DOMContentLoaded", ready);
