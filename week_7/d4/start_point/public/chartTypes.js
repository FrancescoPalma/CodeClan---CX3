// Refactoring the pie chart in app.js but in a OO way 
// File where types are stored
var ChartTypes = function() {
  // 'pie' is a string for it is a parameter of the chart, look at app.js, line 18
  this.pie = "pie";
  this.line = 'line';
  this.column = 'column';
}