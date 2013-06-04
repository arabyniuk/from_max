# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	
	if $('#parallax').length > 0
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
				force:'pull',
				confine:'y'
			},
			{
				layer:'.bubble_mid',
				mass:20,
				force:'pull',
				confine:'y'
			},
			{
				layer:'.bubble_big',
				mass:5,
				force:'pull',
				confine:'y'
			}
		],{
			repositionTransition:'all .5s ease-in'
		})

	$('.nav-menu .span3').hover(
		-> 
			idx = $(@).index()
			window.text = $(@).text()
			$(@).find('p').text('Читать подробнее').css({color: '#ff3908', background: 'none', borderBottom: '1px solid #ff3908'})
			$('[class*="top-img"]').hide()
			$('.nav-menu .span3').removeClass "active"
			fly = [1, 2, 3]
			for d, i in fly
				$('.nav-menu').removeClass('nav-menu-bg-'+ d)				
			if idx == 0 
				$(@).addClass('active')	
				$('.nav-menu').addClass "hover-item-1 nav-menu-bg-1"
				$('.top-img-1').fadeIn()
			else if  idx == 1 
				$(@).addClass('active')
				$('.nav-menu').addClass "hover-item-2 nav-menu-bg-2"
				$('.top-img-2').fadeIn()
			else if  idx == 2
				$(@).addClass('active')
				$('.nav-menu').addClass "hover-item-3 nav-menu-bg-3"
				$('.top-img-3').fadeIn()
		-> 	
			$(@).find('p').text(text).css({
				color: '#101e2c', 
				borderBottom: 'none', 
				backgroundImage: 'url(assets/menu-hover-underline.png)', 
				backgroundRepeat: 'repeat-x',
				backgroundPosition: '0px 25px'
			})
			fly = [1, 2, 3]
			for d, i in fly
				$('.nav-menu').removeClass('hover-item-'+ d)
			)	
	



