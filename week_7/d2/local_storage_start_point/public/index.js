var init = function(){
  console.log('app started');

  var films = JSON.parse(localStorage.getItem('film_app_list')) || [];
  console.log('on init got films', films);

  films.forEach(function(filmName) {
    var li = document.createElement('li');
    li.innerText = filmName;
    var ul = document.getElementById('film-list');
    ul.appendChild(li);
  })

  var button = document.getElementById('add-button');
  var handleClick = function(){
    console.log('Woah I was got clicked')
    var textInput = document.getElementById('film-text-input')
    var filmName = textInput.value;
    console.log('film name', filmName);

    var li = document.createElement('li');
    li.innerHTML = filmName;
    var ul = document.getElementById('film-list');
    ul.appendChild(li);

    films.push(filmName);
    localStorage.setItem('film_app_list', JSON.stringify(films));
  }
  button.onclick = handleClick;
};

window.onload = init;
