function makeCoordinates(){
  var locations = gon.plucked_location;
  if (locations){
    for(var i = 0; i < locations.length; i++ ){
      var lat = locations[i].latitude.split(" ");
      locations[i].latitude = parseFloat(lat[lat.length-1]);
      var long = locations[i].longitude.split(" ");
      locations[i].longitude = parseFloat(long[long.length-1]);
    }
    return locations;
  }
}

 function createMap(){
  var locations =  makeCoordinates();
  var mapOptions = {
          center: new google.maps.LatLng(33.74, -84.37),
          zoom: 9,
          mapTypeId: google.maps.MapTypeId.ROADMAP,
          panControl: true,
          scaleControl: false,
          streetViewControl: true,
          overviewMapControl: true
        };
  var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
  for (var i = 0; i < locations.length; i++) {
    console.log(locations[i].latitude + "-----" + locations[i].longitude);
    createMarker(locations[i].latitude, locations[i].longitude, map)
  }
}

function createMarker(latitude, longitude, map){
  var marker;
  marker = new google.maps.Marker({
    position: new google.maps.LatLng(latitude, longitude),
    map: map
  });
}
