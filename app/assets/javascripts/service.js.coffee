# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->

	$('#service_controller .cat-list ul').find('li:first-child').click () -> 
		obj = $(@).parent()	
		if $(@).parent().hasClass('active')
			obj.animate({
				height: '86px'
			}, 1000, -> 				
				obj.removeClass('active')
			) 
		else 
			total = 0
			firstLi = $(@).height()			
			obj.find('li').each () -> 
				total += $(@).outerHeight()			
			total = (total - firstLi) + 10
			obj.addClass('active').animate({
				height: total+"px"
			}, 1000)

	#$('.cat-list ul li').click () ->
	#	$(@).parent().find('.active').removeClass('active')
	#	$(@).addClass("active")
	#	text = $(@).text()		
	#	window.el = $("h2:contains("+text+")")
	#	if el.length > 0
	#		el.parent().parent().show()

		
