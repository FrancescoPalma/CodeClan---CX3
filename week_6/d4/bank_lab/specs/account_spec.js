var assert = require('chai').assert;
var Bank = require('../bank.js');
var Account = require('../account.js');

describe('should display two accounts', function() {

  beforeEach(function() {
    account1 = new Account('Francesco', 'Personal', 1000);
    account2 = new Account('John', 'Business', 10000);
  }),

  it ('should have a name', function() {
    assert.equal('Francesco', account1.name);
    assert.equal('John', account2.name);
  }),

  it ('should have a type', function() {
    assert.equal('Personal', account1.type);
    assert.equal('Business', account2.type);
  }),

  it ('should have a value', function() {
    assert.equal(1000, account1.value);
    assert.equal(10000, account2.value);
  })

});