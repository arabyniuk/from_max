# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->

	#$('.parallax').parallax({
	#	yparallax: false,
	#	mouseport: jQuery("#parallax")
	#})

	$('#parallax').zlayer([
		{
			layer:'.leaf_sml',
			mass:60,
			force:'pull',
			confine:'y'
		},
		{
			layer:'.leaf_mid',
			mass:20,
			force:'pull',
			confine:'y'
		},
		{
			layer:'.leaf_big',
			mass:5,
			force:'pull',
			confine:'y'
		},
		{
			layer:'.bubble_sml',
			mass:60,
			force:'push',
			confine:'y'
		},
		{
			layer:'.bubble_mid',
			mass:20,
			force:'push',
			confine:'y'
		},
		{
			layer:'.bubble_big',
			mass:5,
			force:'push',
			confine:'y'
		}
	],{
		repositionTransition:'all .5s ease-in'
	})

	$('.nav-menu .span3').hover(
		-> 
			idx = $(@).index()
			window.text = $(@).text()
			$(@).find('p').text('Читать подробнее').css({color: '#ff3908', borderBottom: '1px solid #ff3908'})
			$('[class*="top-img"]').hide()
			if idx == 0 	
				$('.nav-menu').addClass "hover-item-1"
				$('.top-img-1').fadeIn()
			else if  idx == 1 
				$('.nav-menu').addClass "hover-item-2"
				$('.top-img-2').fadeIn()
			else if  idx == 2
				$('.nav-menu').addClass "hover-item-3"
				$('.top-img-3').fadeIn()
		-> 	
			$(@).find('p').text(text).css({color: '#101e2c', borderBottom: '1px dotted #101e2c'})
			fly = [1, 2, 3]
			for d, i in fly
				$('.nav-menu').removeClass('hover-item-'+ d)
			)	

	$('.nav-menu .span3').click ->
		$('.nav-menu .span3').removeClass "active"			
		fly = [1, 2, 3]
		for d, i in fly
			$('.nav-menu').removeClass('nav-menu-bg-'+ d)			
		idx = $(@).index()
		if idx == 0 
			$(@).addClass('active')
			$('.nav-menu').addClass "nav-menu-bg-1"			
		else if idx == 1 
			$(@).addClass('active')
			$('.nav-menu').addClass "nav-menu-bg-2"			
		else if idx == 2
			$(@).addClass('active')
			$('.nav-menu').addClass "nav-menu-bg-3"
		