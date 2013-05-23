# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->

	$('#parallax').parallax({
		yparallax: false
	})

	$('.nav-menu .span3').hover(
		-> 
			idx = $(@).index()
			window.text = $(@).text()
			$(@).find('p').text('Читать подробнее').css({color: '#ff3908', textDecoration: 'underline'})
			if idx == 0 
				$('.nav-menu').addClass "hover-item-1"
			else if  idx == 1 
				$('.nav-menu').addClass "hover-item-2"
			else if  idx == 2
				$('.nav-menu').addClass "hover-item-3"
		-> 	
			$(@).find('p').text(text).css({color: '#101e2c', textDecoration: 'none'})
			fly = [1, 2, 3]
			for d, i in fly
				$('.nav-menu').removeClass('hover-item-'+ d)
			)	

	$('.nav-menu .span3').click ->
		$('.nav-menu .span3').removeClass "active"
		$('[class*="top-img"]').hide()	
		fly = [1, 2, 3]
		for d, i in fly
			$('.nav-menu').removeClass('nav-menu-bg-'+ d)			
		idx = $(@).index()
		if idx == 0 
			$('.nav-menu').addClass "nav-menu-bg-1"
			$('.top-img-1').fadeIn()
		else if idx == 1 
			$('.nav-menu').addClass "nav-menu-bg-2"	
			$('.top-img-2').fadeIn()
		else if idx == 2
			$('.nav-menu').addClass "nav-menu-bg-3"
			$('.top-img-3').fadeIn()