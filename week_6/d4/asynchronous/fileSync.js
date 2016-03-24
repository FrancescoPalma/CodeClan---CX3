var fs = require("fs");

var buffer = fs.readFileSync("us-states.txt");
var bufferString = buffer.toString();

var newLineCount = bufferString.split("\n").length;

console.log('There are ' + newLineCount + ' lines in the file');
console.log('Oh, how quick! You already finished your reading');