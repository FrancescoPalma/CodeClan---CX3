// Before seeing anything printed we'll have to wait for 1 second
setTimeout(function(){
  console.log('I waited for a sec');
}, 1000);

// Callbacks: Functions returning other functions
var add = function(firstNumber) {
  return function(secondNumber) {
    return firstNumber + secondNumber;
  }
}

var addFiveFunction = add(5);
console.log(addFiveFunction(3)); // 8

// logRed sets colour red, logNotRed sets colour is not red
// redChecker puts a condition if the colour is red, print it otherwise print it's no red
var logRed = function() {
  console.log('red');
}

var logNotRed = function() {
  console.log('not red');
}

var redChecker = function(colour, isRed, isNotRed) {
  if (colour === 'red') {
    isRed();
  } else {
    isNotRed();
  }
}

// Call redChecker function passing the expected result and the two callbacks
redChecker('red', logRed, logNotRed); // red