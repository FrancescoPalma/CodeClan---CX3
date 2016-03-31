// Refactoring the pie chart in app.js but in a OO way 
// This is the file where the container of the pie chart is stored
var CharContainers = function() {
  this.pie = document.getElementById('pie-chart');
  this.line = document.getElementById('line-chart');
  this.column = document.getElementById('column-chart');
}