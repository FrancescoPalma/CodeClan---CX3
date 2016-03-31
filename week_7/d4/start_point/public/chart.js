// Refactoring the pie chart in app.js but in a OO way 
// This is the file responsible of creating a new chart
var Chart = function(title, type, container, data, categories) {

  var pieChart = new Highcharts.Chart({
    chart: {
      renderTo: container,
      type: type
    },
    title: {
      text: title
    },
    series: data,
    xAxis: categories
  });

  var lineChart = new Highcharts.Chart({
    chart: {
      renderTo: container,
      type: type
    },
    title: {
      text: title
    },
    series: data,
    xAxis: categories
  });

  var columnChart = new Highcharts.Chart({
    chart: {
      renderTo: container,
      type: type
    },
    title: {
      text: title
    },
    series: data,
    xAxis: categories
  });

}