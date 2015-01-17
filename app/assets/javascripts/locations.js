//=require jquery
//=require ninja-slider2
var map;
var markers;
var currentLocation;
var previousLocation;
var allLocations;
var directionsDisplay;
var directionsService = new google.maps.DirectionsService();
var nextLocation;
var infoWindow;
var firstMarker;
var previousMarker;
var tourIcons;

//centers the view over the given location
function changeLocation(lat, lon){

    //probably don't need these
    markerToLocation = {};
    markers = [];
   
   

    directionsDisplay = new google.maps.DirectionsRenderer({suppressMarkers: true, preserveViewport: true});
    
    var mapOptions = {
	   zoom: 18,
	   center: new google.maps.LatLng(parseFloat(lat, 10), parseFloat(lon, 10)),
	   disableDefaultUI: true
    }
    
    map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
    directionsDisplay.setMap(map);  
}

//puts markers on the map
function getMapMarkers(locations){
    for(var i = 0; i < locations.length; i++){
        var curLat = parseFloat(locations[i].latitude, 10);
        var curLon = parseFloat(locations[i].longitude, 10);

        var curLatLng = new google.maps.LatLng(curLat, curLon);
     

        //var curMarker
         markers[i] = new google.maps.Marker({
             map: map,
             draggable: false,
             position: curLatLng,
	     icon: getMarkerImage(tourIcons['unvisited_icon'])
        });

        //markerToLocation[curMarker] = locations[i];
        //getMarker[locations[i]] = curMarker;
        //Add correct listener to each marker
        google.maps.event.addListener(markers[i], 'click', getRoute(previousLocation, allLocations[i], markers[i]));
        
    }
}

function getMarkerImage(icon){
    return new google.maps.MarkerImage(
	icon.image,
	null,
	null,
	new google.maps.Point(icon.anchor[0],icon.anchor[1]),
	new google.maps.Size(icon.size[0], icon.size[1]));

}

function getTourIcons(){
    var arr = new Object();
    arr['current_icon'] = {
	image: '/images/tour_icons/current_icon.png',
	anchor: [13, 37],
	size: [28, 40]
    }
    arr['unvisited_icon'] = {
	image: '/images/tour_icons/unvisited_icon.png',
	anchor: [13, 37],
	size: [28, 40]
    }
    arr['grey_visited_icon'] = {
	image: '/images/tour_icons/grey_visited_icon.png',
	anchor: [13, 37],
	size: [28, 40]
    }
    arr['visited_icon'] = {

	image: '/images/tour_icons/visited_icon.png',
	anchor: [13, 37],
	size: [28, 40]
    }
    return arr;

}

function getRoute(startLocation, endLocation, curMarker){
    //console.log('startLocation');
    //console.log(startLocation);
    //console.log('endLocation');
    //console.log(endLocation);
    console.log(curMarker);
    if(startLocation === undefined || endLocation === undefined) return;
    return function(){
	resetMarkers();
        //the latitude and longitude of our start and endpoints
        var start = new google.maps.LatLng(parseFloat(startLocation.latitude, 10), parseFloat(startLocation.longitude, 10));
        var end = new google.maps.LatLng(parseFloat(endLocation.latitude, 10), parseFloat(endLocation.longitude, 10));
	
        console.log(start);
        console.log(end);
	
        //create our request object
        var request = {
            origin: start,
            destination: end,
            travelMode: google.maps.TravelMode.WALKING
        }
        //console.log(request);
        //call Google Maps API to get the 
        directionsService.route(request, function(response, status){
            if(status == google.maps.DirectionsStatus.OK){
                directionsDisplay.setDirections(response);
            }
        });
 
        //change the next location link to the correct splace
        $("#next-link").attr("href", "/tour_stop/" + endLocation.id);
        if(infoWindow !== undefined){
            infoWindow.close();
        }
	
	var contentString;

	//if this is the first location on the tour, don't put the 
	//"Next Location" string
	if(endLocation.id == startLocation.id){
	    contentString = "<b>" +  endLocation.name + "</b>";
	}else{
	    contentString ="Next Location: <br /> <b>"+ endLocation.name + "</b>";
	}

	previousMarker.setIcon(getMarkerImage(tourIcons['visited_icon']));
	curMarker.setIcon(getMarkerImage(tourIcons['current_icon']));
	

        infoWindow = new google.maps.InfoWindow({
            content: contentString
        });
        infoWindow.open(map, curMarker);
	google.maps.event.trigger(map, "resize");

    };
}

function getMarkerForGivenLocation(location){
   

    var tempId = parseFloat(location.id, 10);
    for(var i = 0; i < markers.length; i++){
	var curId = parseFloat(allLocations[i].id, 10);
	if(curId === tempId){
	    return markers[i];
	}
    }
    //the comments below can probably be deleted but I'm not 100% sure.
/*
    var tempLon = parseFloat(location.longitude, 10);
    var tempLat = parseFloat(location.latitude, 10);
    for(var i = 0; i < markers.length; i++){
        var curLon = parseFloat(allLocations[i].longitude, 10);
        var curLat = parseFloat(allLocations[i].latitude, 10);
	
        if(tempLon === curLon && tempLat === curLat){
            return markers[i];
        }
    }
*/
}

function resetMarkers(){
    for(var i = 0; i < markers.length; i++){
	markers[i].setIcon(getMarkerImage(tourIcons['unvisited_icon']));
    }
}

$(document).ready(function(){
    currentLocation = $("#current-location").data('location');
    previousLocation = $("#previous-location").data('previous-location');
    allLocations = $("#all-locations").data('locations');

    tourIcons = getTourIcons();

    console.log("previousLocation");
    console.log(previousLocation);
    //console.log(previousLocation.latitude);

    console.log("currentLocation");
    console.log(currentLocation);

    changeLocation(currentLocation.latitude, currentLocation.longitude);

    console.log(allLocations);

    //if this is the start of the tour, set the currentLocation
    //and the previous location to the same place so no path is drawn
    if(previousLocation === null){
        previousLocation = currentLocation;
    }
    getMapMarkers(allLocations);
    var route;

    firstMarker = getMarkerForGivenLocation(currentLocation);
    previousMarker = getMarkerForGivenLocation(previousLocation);

    /*
    //this is a painfully roundabout way of finding the current location's
    //marker but I couldn't find a better way
    var tempLon = parseFloat(currentLocation.longitude, 10);
    var tempLat = parseFloat(currentLocation.latitude, 10);
    for(var i = 0; i < markers.length; i++){
        var curLon = parseFloat(allLocations[i].longitude, 10);
        var curLat = parseFloat(allLocations[i].latitude, 10);

        if(tempLon === curLon && tempLat === curLat){
            firstMarker = markers[i];
            break;
        }
    }

    tempLon = parseFloat(previousLocation.longitude, 10);
    tempLat = parseFloat(previousLocation.latitude, 10);
    for(var j = 0; j < markers.length; j++){
        var curLon = parseFloat(allLocations[i].longitude, 10);
        var curLat = parseFloat(allLocations[i].latitude, 10);

        if(tempLon === curLon && tempLat === curLat){
            previousMarker = markers[i];
            break;
            }

	}
    */

    console.log(previousLocation);


   
    route = getRoute(previousLocation, currentLocation, firstMarker);
    route();
    google.maps.event.trigger(map, "resize");
});


