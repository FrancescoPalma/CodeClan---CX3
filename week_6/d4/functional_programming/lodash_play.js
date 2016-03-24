var _ = require('lodash');

// .forEach
var myArray = [1,2,3,4,5];

_.forEach(myArray, function(item) {
  console.log('the item is ' + item);
});

// .map
var doubledArray = _.map(myArray, function(item) {
  return item * 2;
})
console.log('doubled array', doubledArray)