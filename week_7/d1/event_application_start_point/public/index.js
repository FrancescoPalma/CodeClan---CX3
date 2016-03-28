var button = document.getElementById('add-button');
var input = document.getElementById('film-text-input');

var handleClick = function() {

  var ul = document.getElementById('film-list');
  var li = document.createElement('li');
  li.appendChild(document.createTextNode(input.value));
  ul.appendChild(li);

}

button.onclick = handleClick;