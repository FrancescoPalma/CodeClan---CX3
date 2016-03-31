// To make sure it executes the functions when loading the webpage
window.onload = function() {

  var data = new ChartData();
  var containers = new CharContainers();
  var types = new ChartTypes();

  var title = 'My Pokemons';
  // .pie because we are using a this.pie in the chart files
  new Chart(title, types.pie, containers.pie, data.pie);
  new Chart(title, types.line, containers.line, data.series, data.months);
  new Chart(title, types.column, containers.column, data.series, data.months);

  // To have access to the div in HTML in order to manipulate the DOM
  // var pieContainer = document.getElementById('pie-chart');

  // to create one new pie chart with data, all in one single file
  // var pieChart = new Highcharts.Chart({
  //   chart: {
  //     type: 'pie',
  //     renderTo: pieContainer
  //   },
  //   title: {
  //     text: "Pokemon Types I've caught"
  //   },
  //   series: [{
  //     name: "Pokemon Type",
  //     data: [
  //       {
  //         name: 'Grass',
  //         y: 20,
  //         color: "#a4c639"
  //       },
  //       {
  //         name: 'Water',
  //         y: 24,
  //         color: "#0080ff",
          // sliced: true
  //       },
  //       {
  //         name: "Fire",
  //         y: 56,
  //         color: "#ff0000"
  //       }
  //     ]
  //   }]
  // });
}