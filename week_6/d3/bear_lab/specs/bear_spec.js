var assert = require('chai').assert;
var Bear = require('../bear.js');

describe('Bear', function() {

  var bear = new Bear('Brown', 5, 200);

  it('should have a name', function() {
    assert.equal('Brown', bear.name)
  }),

  it('should have an age', function() {
    assert.equal(5, bear.age)
  }),

  it('should have a weight', function() {
    assert.equal(200, bear.weight)
  }),  

  it('should roar', function() {
    assert.equal('ROOOOAAARRR', bear.roar)
  }),

  it('should increase weight when eating', function() {
    bear.eat(); 
    assert.equal(205, bear.weight)
  })

});