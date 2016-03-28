window.onload = function() {

  console.log('Hello Browsy!');

  var tagline = document.getElementById('tagline');
  tagline.innerHTML = 'New tagline';

  // Attach to the DOM
  var quotes = document.querySelector('#quotes');
  quotes.appendChild(quoteArticle);

}

var quoteArticle = document.createElement('article');
quoteArticle.classList.add('quote');

var blockquote = document.createElement('blockquote');
blockquote.innerText = 'New Quote...';

var cite = document.createElement('cite');
cite.innerText = 'Albert Einstein';

blockquote.appendChild(cite);
quoteArticle.appendChild(blockquote);
