// Refactoring the pie chart in app.js but in a OO way 
// Put all the data of the chart here 
var ChartData = function() {

  this.pie = [{
    name: "Pokemon Type",
    data: [
      {
        name: 'Grass',
        y: 20,
        color: "#a4c639"
      },
      {
        name: 'Water',
        y: 24,
        color: "#0080ff",
        // sliced: true
      },
      {
        name: "Fire",
        y: 56,
        color: "#ff0000"
      }
    ]
  }],

  this.series = [
    {
      name: 'Grass Pokemon',
      color: "#a4c639",
      data: [1,2,4,1,8,12,4,7,10,9,1,2,4]
    },
    {
      name: 'Water Pokemon',
      color: "#0080ff",
      data: [1,3,5,1,8,7,3,9,1,2,4,2,3]
    },
    {
      name: 'Fire Pokemon',
      color: "#ff0000",
      data: [1,5,9,1,10,12,11,11,6,4,1,2,7]
    }
  ],

  this.months = {
    categories: ['Jan', 'Feb', 'March', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
  }

}