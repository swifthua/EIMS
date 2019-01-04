/*------------------------------------------------------
    Author : www.webthemez.com
    License: Commons Attribution 3.0
    http://creativecommons.org/licenses/by/3.0/
---------------------------------------------------------  */

(function ($) {
    "use strict";
    var mainApp = {

        initFunction: function () {

            $('#main-menu').metisMenu();
			
            $(window).bind("load resize", function () {
                if ($(this).width() < 768) {
                    $('div.sidebar-collapse').addClass('collapse')
                } else {
                    $('div.sidebar-collapse').removeClass('collapse')
                }
            });

            Morris.Line({
                element: 'manager-chart',
                data: [
					  { y: '2012', a: 50, b: 90, c: 50},
					  { y: '2013', a: 165,  b: 185, c: 80},
					  { y: '2014', a: 150,  b: 130, c: 120},
					  { y: '2015', a: 175,  b: 160, c: 90},
					  { y: '2016', a: 80,  b: 65, c:150},
					  { y: '2017', a: 90,  b: 70, c:80},
				],
                xkey: 'y',
                ykeys: ['a', 'b','c'],
                labels: ['number1','number2',' number3'],
                fillOpacity: 0.6,
                hideHover: 'auto',
                behaveLikeLine: true,
                resize: true,
                pointFillColors:['#ffffff'],
                pointStrokeColors: ['black'],
                lineColors:['gray','#1abc9c','blue']
            });
        },

        initialization: function () {
            mainApp.initFunction();
        }

    }
    // Initializing ///

    $(document).ready(function () {
        mainApp.initFunction();
    });

}(jQuery));
