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
			index = $(@).index()
			if !$(@).hasClass('active')
				$('.nav-menu .span3').removeClass "active"
				$(@).addClass('active')
				$('[class*="top-img"]').removeClass "active"
				fly = [1, 2, 3]
				for d, i in fly
					$('.nav-menu').removeClass('nav-menu-bg-'+ d)	
				if index == 0
					$('.nav-menu').addClass "nav-menu-bg-1"
					$('.top-img-1').fadeIn('slow').addClass('active')
				else if index == 1
					$('.nav-menu').addClass "nav-menu-bg-2"
					$('.top-img-2').fadeIn('slow').addClass('active')
				else if index == 2
					$('.nav-menu').addClass "nav-menu-bg-3"
					$('.top-img-3').fadeIn('slow').addClass('active')				
			# hover state
			window.text = $(@).text()
			$(@).find('p').text('Читать подробнее').css({color: '#ff3908', background: 'none', borderBottom: '1px solid #ff3908'})
			if index == 0
				$('.nav-menu').addClass "hover-item-1"
			else if index == 1
				$('.nav-menu').addClass "hover-item-2"
			else if index == 2
				$('.nav-menu').addClass "hover-item-3"
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
	



