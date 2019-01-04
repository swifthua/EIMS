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

            /* MORRIS DONUT CHART
			----------------------------------------*/
            Morris.Donut({
                element: 'supportnation-chart',
                data: [{
                    label: "佤族",
                    value: 0.15
                },{
                    label: "彝族、壮族",
                    value: 0.10
                },{
                    label: "苗族、维吾尔族",
                    value: 0.10
                },{
                    label: "回族、白族",
                    value: 0.40
                },{
                    label: "满族、纳西族",
                    value: 0.1
                },{
                    label: "蒙古族、土家族",
                    value: 0.07
                },{
                    label: "其他",
                    value: 0.08
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
