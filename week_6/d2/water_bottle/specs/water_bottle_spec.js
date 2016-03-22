var assert = require('chai').assert;
var bottle = require('../water_bottle');

describe('Water Bottle', function(){

  it('should be empty at start', function(){
    assert.equal(0, bottle.volume);
  });

  it('should never go under 0', function(){
    assert.equal(0, bottle.minVolume);
  });

  it('should never go over 100', function(){
    assert.equal(100, bottle.maxVolume);
  });

  it('should go to 100 when filled', function(){
    assert.equal(100, bottle.fill());
  });

  it('should go down by 10 when drank', function(){
    assert.equal(0, bottle.drink());
  });

  it('should got to 0 when emptied', function(){
    assert.equal(0, bottle.empty());
  });
  
});
