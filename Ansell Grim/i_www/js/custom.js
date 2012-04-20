$("div.navslidedown").css({ display: 'none' });
$(document).ready(function() {

			$("nav ul.mainmenu").children('li').hoverIntent(function() {
				$(this).find('div.navslidedown')
					.stop(true, true).delay(50).animate({ "height": "show", "opacity": "show" }, 400 );
					
					$(this).children('a').css({
							
						});
			}, function(){
				$(this).find('div.navslidedown')
					.stop(true, true).delay(50).animate({ "height": "hide", "opacity": "hide" }, 300 );
					$(this).children('a').css({
							
						});
					
					$('.current').css({
							
						});
					$('a.current:contains("Home")').css({
							
						});
						
			});

});