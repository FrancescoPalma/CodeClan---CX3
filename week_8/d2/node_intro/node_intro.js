var planet = require('./planet').planet;
var rN = require('./planet').randomNumber;
var SolarSystem = require('./solar_system');

// to create a new solar system without hardcoding as we did for planet (object literal)
var mySolarSystem = new SolarSystem('XY350');
mySolarSystem.addPlanet(planet);

console.log(planet);
console.log(rN);
console.log(mySolarSystem); 
// { name: 'Earth', radius: 100, getName: [Function] } 

// 0.2756614626850933 

// { name: 'XY350',
// planets: [ { name: 'Earth', radius: 100, getName: [Function] } ],
// addPlanet: [Function] }