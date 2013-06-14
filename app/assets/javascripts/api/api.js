function initialize() {
  var myLatlng = new google.maps.LatLng(46.45947,30.749125);
  var mapOptions = {
    zoom: 17,
    center: myLatlng,
    disableDefaultUI: true,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }
  var map = new google.maps.Map(document.getElementById('map'), mapOptions);


  var marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      title: 'Mins!'
  });

	var infoWindowOptions = {
	    content: 'Mins Is Here!'
	};

	var infoWindow = new google.maps.InfoWindow(infoWindowOptions);
	google.maps.event.addListener(marker,'click',function(e){
	  
	  infoWindow.open(map, marker);
	  
	});

  //small initialize

  var smallLatlng = new google.maps.LatLng(46.295261,30.657716);

  var mapSmallOptions = {
    zoom: 17,
    center: smallLatlng,
    disableDefaultUI: true,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }

  var smallMap = new google.maps.Map(document.getElementById('map_small'), mapSmallOptions);

  var markerSmall = new google.maps.Marker({
      position: smallLatlng,
      map: smallMap,
      title: 'Mins'
  });

}

google.maps.event.addDomListener(window, 'load', initialize);


