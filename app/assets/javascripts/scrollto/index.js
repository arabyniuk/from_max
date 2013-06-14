$(function(){
	$('.cat-list a').bind('click',function(){
	var speed = 1000; // �������� �������� ������
	if($(this).attr('href')=='#down'){
		$('html').animate({scrollTop:$(document).height()}, speed,'swing');
	} else if($(this).attr('href')=='#top'){
		$('html').animate({scrollTop:0}, speed,'swing');
	} else {
		$('html,body').animate({scrollTop: $(this.hash).offset().top - 100}, speed,'swing');
	}
		return false;
	});
});