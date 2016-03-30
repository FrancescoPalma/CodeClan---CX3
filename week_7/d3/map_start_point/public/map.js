var Map = function(myLatLng, myZoom) {

  this.googleMap = new google.maps.Map(document.getElementById('map'), {
    zoom: myZoom,
    center: myLatLng
  });

  this.addMarker = function(myLatLng) {
    var marker = new google.maps.Marker({
      position: myLatLng,
      map: this.googleMap
    })
  };

}