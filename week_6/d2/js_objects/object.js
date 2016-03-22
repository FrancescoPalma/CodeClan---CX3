var add = function(a, b) {
  return a + b;
}

console.log('1 + 2 =', add(1,2));

var myPerson = {
  name: 'Jay',
  age: 32,
  talk: function() {
    console.log('Hello World! My name is', this.name);
  }
};

console.log('my person is:', myPerson);
console.log('my person name is:', myPerson.name && myPerson['name']);

myPerson.talk();

var myBear = {
  name: 'Brown',
  type: 'Grizzly',
  roar: function() {
    console.log('My bear name is:', this.name, '| My bear type is:', this.type, '| My bear way to say hello is: ROOOOAAAAR');
  }
};

myBear.roar();