var assert = require('chai').assert;
var Planet = require('../planet.js');

describe('Planet', function() {
  it('should have a name', function() {
    var venus = new Planet('Venus');
    assert.equal('Venus', venus.name)
  })
});