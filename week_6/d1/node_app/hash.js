var myPerson = {
  name: 'Guybrush',
  age: 32,
  weapon: 'cutlass',
  health: 100
};

var myHero = {
  name: 'Natsu Dragoneel',
  age: 21,
  role: 'Dragon Slayer',
  magic: 'Fire'
};

console.log('My Hero is', myPerson, myHero)
console.log('Name:', myPerson['name'], '| Age:', myHero['age']);
console.log('Role:', myHero.role)

myPerson.name = "Matthew";
console.log('Name:', myPerson.name);

var myNewPerson = {
  name: 'Guybrush',
  age: 32,
  weapon: {
    type: 'cutlass',
    metal: ['silver', 'gold']
  }
};
console.log(myNewPerson.weapon);
console.log(myNewPerson.weapon.metal);
console.log(myNewPerson.weapon.metal[1]);