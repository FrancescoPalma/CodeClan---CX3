var initialize = function() {
  
  var center = {lat: 55.9520, lng: -3.1900};
  var zoom = 14;

  var map = new Map(center, zoom);
  map.addMarker(center);

  // First Method
  // var start;
  // var geoSuccess = function(position) {
  //   start = position;
  //   map.addMarker({lat:position.coords.latitude, lng:position.coords.longitude});
  // };
  // var geoError = function(error) {
  // };
  // navigator.geolocation.getCurrentPosition(geoSuccess, geoError);

  // Second Method - Neater
  navigator.geolocation.getCurrentPosition(function(pos) {
    var lat = pos.coords.latitude;
    var lng = pos.coords.longitude;
    map.addMarker({lat:lat, lng:lng});
  })

}

window.onload = initialize;