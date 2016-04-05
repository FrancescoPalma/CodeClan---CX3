var planet = {
  name: "Earth",
  radius: 100,
  getName: function() {
    return this.name;
  }
};

module.exports.planet = planet;
module.exports.randomNumber = Math.random();