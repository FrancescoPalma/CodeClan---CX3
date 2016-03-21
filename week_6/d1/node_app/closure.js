var greet = function(isHappy) {

  var text = '';

  if (isHappy) {
    text = 'Hello my Friend!';
  } else {
    text = 'Mind your own business!';
  }

  var displayText = function() {
    console.log(text);
  }

  displayText();

}
greet(true);

var account = function() {
  var balance = 100;
  return function() {
    return balance * 100;
  }
}
console.log(account()());