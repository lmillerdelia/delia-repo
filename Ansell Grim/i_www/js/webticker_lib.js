$(document).ready(function()
{
	try
	{
		var ticker_holder = $('.ticker-holder').get(0);
		var ticker_text = $('.ticker').get(0);
		var ticker_pos = ticker_text.parentNode.offsetWidth;

		var ticker_data = $(ticker_holder).html();
		$(ticker_text).parent().html('<marquee scrollamount="1" scrolldelay="40">' + ticker_data + '</marquee>');

		$('#sub-nav').hover
		(
			function() { $('marquee', this).get(0).stop();  },
			function() { $('marquee', this).get(0).start(); }
		);

		
	}
	catch (o) {}
});