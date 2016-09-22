function makeCoordinates(){
  var locations = gon.plucked_location;
  var parsedLocations = [];
  if (locations){
    for(var i = 0; i < locations.length; i++ ){
      parsedLocations[i] = {};
      var lat = locations[i].latitude.split(" ");
      parsedLocations[i].latitude = parseFloat(lat[lat.length-1]);
      var long = locations[i].longitude.split(" ");
      parsedLocations[i].longitude = parseFloat(long[long.length-1]);
    }
  }
  return parsedLocations;
}

function createMap(){
  var canvasElement = document.getElementById("map-canvas");
  if (canvasElement == null){
    return;
  }
  var locations =  makeCoordinates();
  var mapOptions = {
          center: new google.maps.LatLng(33.74, -84.37),
          zoom: 8,
          mapTypeId: google.maps.MapTypeId.ROADMAP,
          panControl: true,
          scaleControl: false,
          streetViewControl: true,
          overviewMapControl: true
        };
  var map = new google.maps.Map(canvasElement, mapOptions);

  for (var i = 0; i < locations.length; i++) {
    createMarker(locations[i].latitude, locations[i].longitude, map);
  }
  google.maps.event.addDomListener(window, "resize", function() {
    var center = map.getCenter();
    google.maps.event.trigger(map, "resize");
    map.setCenter(center);
  });
}

function createMarker(latitude, longitude, map){
  var marker;
  marker = new google.maps.Marker({
    position: new google.maps.LatLng(latitude, longitude),
    map: map
  });
}

var mapsApiLoaded = false;
function ready(){
  if (mapsApiLoaded) {
    createMap();
    return;
  }
  var script = document.createElement("script");
  script.type = "text/javascript";
  script.src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyAEuKfdBx0BgCnzX1Mek9_HcNs8COFsYw4&callback=createMap";
  document.body.appendChild(script);
  mapsApiLoaded = true;
};

$(document).on("turbolinks:load", ready);
