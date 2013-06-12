jQuery(document).ready(function(){
	jQuery('#scrollc5').scroller({
		settings_skin:'skin_blackwhite',
		settings_forcesameheight:'on'
	});
	jQuery('#scrollc4').scroller({
		settings_skin:'skin_alternate',
		settings_forcesameheight:'on'
	});

	$( "#datepicker" ).datepicker({
		dayNamesMin: [ "", "", "", "", "", "", "" ]
	});
})
