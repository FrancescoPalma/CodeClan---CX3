var _ = require('lodash');

var robot = {
  bestFriend: 'francesco',
  welcome: function() {
    return "Hello, " + _.capitalize(this.bestFriend);
  }
};

module.exports = robot;