function hello() {
  console.log('Hello World!');
}
hello();

function add(x, y) {
  x + y;
}
console.log('The return value is:', add(1,2));

function add(x,y) {
  return x + y;
}
console.log('The return value is:', add(1,2));

function printName(name) {
  console.log(name);
}
printName('Francesco');

function mood(name, mood) {
  console.log(name + ', you are:', mood);
}
mood('Francesco', 'happy!');

// function expression
function sum() {
  var i, total = 0;
  for (i = 0; i < arguments.length; i++) {
    total += arguments[i];
  }
  return total;
}
console.log(sum(1,2,3,4));

// function declaration
var hello = function() {
  return 'hello world'
}
console.log(hello());

var sum = function() {
  var x, total = 0;
  for (x = 0; x < arguments.length; x++) {
    total += arguments[x];
  }
  return total;
}
console.log(sum(1,2,3,4,5));

var greater = function(a, b) {
  if (a > b) {
    return a;
  }
  return b;
}
console.log("Return is:", greater(1,2));

var add = function(a, b) {
  return a + b;
}
var wow = function(functionToInvoke) {
  console.log(functionToInvoke(2,1));
}
wow(add);

var person = function(firstname, surname) {
  return 'Howdy, my full name is: ' + firstname + ' ' + surname;
}
console.log(person('Francesco', 'Palma'));

var multiply = function(x, y) {
  return x * y;
}
console.log(multiply(150, 150));

var myArray = function(array) {
  array = [1,2,3,4,5];
  return array[0];
}
console.log(myArray());