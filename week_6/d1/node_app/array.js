var guitars = ["fender", "gibson"];
console.log("guitars:", guitars);

var drums = [];
var drums = new Array();
drums.push("gretsch");
drums.push("drum");
console.log("drums:", drums.length);
console.log(drums[0]);
console.log(drums[100]);

drums[1] = "zildijan";
console.log("drums again:", drums);

drums[10] = "ermahgerd boom";
console.log(typeof(drums[5]));

var letters = ['a', 'b', 'c']
letters.shift();
console.log(letters);

var letters = ['a', 'b', 'c']
letters.splice(0,1);
console.log(letters);

var letters = ['a', 'b', 'c']
letters.pop();
console.log(letters);