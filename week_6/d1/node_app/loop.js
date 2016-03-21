var animals = ['dog', 'cat', 'pika'];
for (var i = 0; i < animals.length; i++) {
  console.log(animals[i]);
};
for (var animal of animals) {
  console.log(animal);
};
for (var animal in animals) {
  console.log(animal);
};

var students = {
  student1: 'Alison',
  student2: 'Claire',
  student3: 'Alasdair'
}
for (var property in students) {
  console.log(property);
};
for (var property in students) {
  console.log(students[property]);
};
for (var property in students) {
  console.log(students.property);
};

var x = 0;
while(x < 10) {
  console.log(x)
  x++;
};