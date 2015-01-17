//=require jquery
//=require ninja-slider
var map;
var markers;

/*
function initialize(){
    var mapOptions = {
	zoom: 19,
	center: new google.maps.LatLng(47.263325, -122.479282),
	disableDefaultUI: true
    }
    map = new google.maps.Map(document.getElementById('map-canvas'), 
	 		      mapOptions);
    
}


google.maps.event.addDomListener(window, 'load', initialize);
*/


function changeLocation(){

    if(document.getElementById('latitude') == null || document.getElementById('longitude') == null) return;
    var lat = document.getElementById('latitude').getAttribute('data-latitude');
    var lon = document.getElementById('longitude').getAttribute('data-longitude');

    
    var mapOptions = {
	zoom: 19,
	center: new google.maps.LatLng(parseFloat(lat, 10), parseFloat(lon, 10)),
	disableDefaultUI: true
    }
    
    map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
  
}


//console.log("latitude and longitude");
//console.log(document.getElementById('latitude'));
//console.log(document.getElementById('longitude'));

google.maps.event.addDomListener(window, 'load', changeLocation);
