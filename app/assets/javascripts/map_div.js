/* Google Map Div */

 google.maps.event.addDomListener(window, 'load', initialize);

function initialize() {

  /* Office location */
  var latlng = new google.maps.LatLng(34.0187327, -118.2453036);

  var mapOptions = {
    center: latlng,
    scrollWheel: false,
    zoom: 15
  };
  
  var marker = new google.maps.Marker({
    position: latlng,
    url: '/',
    animation: google.maps.Animation.DROP
  });
  
  var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
  marker.setMap(map);

};