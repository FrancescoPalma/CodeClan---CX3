var myString = "HELLO";
console.log(myString);

var a = 1;
var b = 2;
var c = 2.5;

var d = a + b;
console.log("d is " + d);

var e = a / b;
console.log("e is " + e);

var aNewString = "a nice new string";
console.log("string length is", aNewString.length)
console.log("string in caps is", aNewString.toUpperCase());
console.log("two strings " + "joined together");

var myBoolean = 1 > 2;
console.log("my boolean is", myBoolean);

var myBoolean = 2 == 2;
console.log("my boolean is", myBoolean);

var myBoolean = 2 === "2";
console.log("my boolean is", myBoolean);

var myBoolean = 1 !== 2;
console.log("my boolean is", myBoolean);

var myVar;
console.log("my variable is", myVar);

var myVar = null;
console.log("my variable is", myVar);
console.log(typeof(myVar));

var myVar = 1;
myVar = "a string";
console.log(myVar);

console.log(3 + "hello");
console.log(3 * "hello");
console.log("lol" * "hello");
console.log("route" + 6 + 6);
console.log("route" + (6 + 6));
console.log(6 + 6 + "route");

var myBool = 1 > 2 && 3 === 3;
console.log(myBool);

var myBool = 1 > 2 || 3 === 3;
console.log(myBool);

var myBool = true;
console.log(!myBool);

var myVar = true;

if(myVar) {
  console.log('variable evaluates as true');
}

var myVar = false;

if(myVar) {
  console.log('variable evaluates as true');
}

// 0 always equals to false, every other number in JS equals to true
var myVar = 0;

if(myVar) {
  console.log('variable evaluates as true');
}

var myVar = "lol";

if(myVar) {
  console.log('variable evaluates as true');
}

// empty string always evaluates as false. Same for undefined, null and NaN
var myVar = "";

if(myVar) {
  console.log('variable evaluates as true');
}

var myName = "Francesco";

if(myName === "Tony") {
  console.log("Having fun in Edinburgh");
} else if(myName === "Francesco") {
  console.log("Having fun with JS");
} else {
  console.log("is not our Francesco");
}

var pet = "lion";

switch(pet) {
  case "cat": 
    console.log("Little ball of fur.");
    break;
  case "dog":
    console.log("Who let the dogs out");
    break;
  default:
    console.log("No pet, sad.");
}

1 + 1 === 2 ? console.log("Yeah, maths!") : console.log("Nope!");

