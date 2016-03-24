var myArray = [1,2,3,4,5];

for (var item of myArray) {
  console.log('the item ' + item);
}

// Same functionality as the previous code but with .forEach
var printItem = function(item) {
  console.log('the item ' + item);
}; 

myArray.forEach(printItem);

// Same functionality as previous code but with .forEach and CallBack
var ourForEach = function(array, callOnItem) {
  for(var item of array) {
    callOnItem(item);
  }
};

ourForEach(myArray, function(item) {
  console.log('the item ' + item);
});