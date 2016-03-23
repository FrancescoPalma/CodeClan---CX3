// Constructor with Anonymous Functions
var House = function(sqFeet, bathrooms, bedrooms){
  this.sqFeet = sqFeet;
  this.bathrooms = bathrooms;
  this.bedrooms = bedrooms;
}

var house1 = new House(2000, 2, 3);
var house2 = new House(1000, 1, 2);

console.log(house1, house2);
// { sqFeet: 2000, bathrooms: 2, bedrooms: 3 } { sqFeet: 1000, bathrooms: 1, bedrooms: 2 }

console.log(house1.bathrooms, house2.bedrooms); // 2 2

var Office = function(desks, meetingRooms, coffeeMachines, computers) {
  this.desks = desks;
  this.meetingRooms = meetingRooms;
  this.coffeeMachines = coffeeMachines;
  this.computers = computers;

  this.averageDeskPerMeetingRoom = function() {
    return (this.desks/this.meetingRooms);
  };
};

var office1 = new Office(100, 4, 25, 5);

console.log(office1.averageDeskPerMeetingRoom()); // 25