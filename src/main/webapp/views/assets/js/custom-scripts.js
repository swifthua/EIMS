/*------------------------------------------------------
    Author : www.webthemez.com
    License: Commons Attribution 3.0
    http://creativecommons.org/licenses/by/3.0/
---------------------------------------------------------  */

(function ($) {
    $(document).ready(function () {
		$("#sideNav").click(function(){
			if($(this).hasClass('closed')){
				$('.navbar-side').animate({left: '-260px'});
				$(this).removeClass('closed');
				$('#page-wrapper').animate({'margin-left' : '0px'});
			}
			else{
			    $(this).addClass('closed');
				$('.navbar-side').animate({left: '0px'});
				$('#page-wrapper').animate({'margin-left' : '260px'}); 
			}
		});
    });
}(jQuery));
