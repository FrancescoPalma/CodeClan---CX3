var solarSystem = function(name) {
  this.name = name;
  this.planets = [];
  this.addPlanet = function(planet) {
    this.planets.push(planet);
  }
}

module.exports = solarSystem;