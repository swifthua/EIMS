/*------------------------------------------------------
    Author : www.webthemez.com
    License: Commons Attribution 3.0
    http://creativecommons.org/licenses/by/3.0/
---------------------------------------------------------  */

(function ($) {
    "use strict";
    var mainApp = {

        initFunction: function () {
            /*MENU 
            ------------------------------------*/
            $('#main-menu').metisMenu();
			
            $(window).bind("load resize", function () {
                if ($(this).width() < 768) {
                    $('div.sidebar-collapse').addClass('collapse')
                } else {
                    $('div.sidebar-collapse').removeClass('collapse')
                }
            });

            /* MORRIS BAR CHART
			-----------------------------------------*/
            Morris.Bar({
                element: 'supportteacher-chart',
                data: [{
                    y: '2016',
                    a: 210,
                    b: 180,
                    c: 240
                }, {
                    y: '2017',
                    a: 280,
                    b: 380,
                    c: 380,
                }],
                xkey: 'y',
                ykeys: ['a', 'b','c'],
                labels: ['学科带头人', '骨干教师','优秀青年教师'],
                hideHover: 'auto',
                resize: true
            });
            

            /* MORRIS DONUT CHART
			----------------------------------------*/
            Morris.Donut({
                element: 'supportteacher-chart2',
                data: [{
                    label: "学科带头人",
                    value: 490
                }, {
                    label: "骨干教师",
                    value: 560
                }, {
                    label: "优秀青年教师",
                    value: 620
                }],
                resize: true
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
