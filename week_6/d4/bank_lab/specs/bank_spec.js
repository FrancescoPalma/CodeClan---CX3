var assert = require('chai').assert;
var Bank = require('../bank.js');
var Account = require('../account.js');

describe('Bank', function() {

  var b = new Bank('Big Bank of Scotland');
  
  it ('should have a name', function() {
    assert.equal('Big Bank of Scotland', b.name);
  })

});