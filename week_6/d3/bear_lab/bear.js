var Bear = function(name, age, weight) {
  this.name = name;
  this.age = age;
  this.weight = weight;
};

Bear.prototype = {
  roar: 'ROOOOAAARRR',
  eat: function() {
    this.weight = this.weight + 5;
  }
};

module.exports = Bear;