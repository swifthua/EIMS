/*------------------------------------------------------
    Author : www.webthemez.com
    License: Commons Attribution 3.0
    http://creativecommons.org/licenses/by/3.0/
---------------------------------------------------------  */

(function ($) {

    var mainApp = {
        initFunction: function () {
            Morris.Line({
                element: 'page-wrapper1',
            });
        },
    }

    // Initializing 
    $(document).ready(function () {
        mainApp.initFunction(); 
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
