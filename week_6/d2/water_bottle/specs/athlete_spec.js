var assert = require('chai').assert;
var athlete = require('../athlete');

describe('athlete', function(){

  it('hydration starts at 100', function(){
    assert.equal(100, athlete.hydration);
  });

  it('distance covered starts at 0', function(){
    assert.equal(0, athlete.distanceCovered);
  });

  it('distance up, hydration down', function(){
    assert.equal(100, athlete.run());
  });

  it('when drink, hydration goes up', function(){
    assert.equal(110, athlete.drink());
  });

});