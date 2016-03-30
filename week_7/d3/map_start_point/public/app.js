var initialize = function() {
  
  var center = {lat: 55.9520, lng: -3.1900};
  var center2 = {lat: 55.946638, lng: -3.201066};
  var zoom = 14;

  var map = new Map(center, zoom);
  // map.addMarker(center, "1");
  // map.addMarker({lat: 55.946638, lng: -3.201066}, "2");

  map.bindClick();

  map.addInfoWindow(center, 'Train Station');
  map.addInfoWindow(center2, 'CodeBase');

  // First Method for geolocation
  // var start;
  // var geoSuccess = function(position) {
  //   start = position;
  //   map.addMarker({lat:position.coords.latitude, lng:position.coords.longitude});
  // };
  // var geoError = function(error) {
  // };
  // navigator.geolocation.getCurrentPosition(geoSuccess, geoError);

  // Second Method - Neater
  // navigator.geolocation.getCurrentPosition(function(pos) {
  //   var lat = pos.coords.latitude;
  //   var lng = pos.coords.longitude;
  //   map.addMarker({lat:lat, lng:lng});
  // })

}

window.onload = initialize;