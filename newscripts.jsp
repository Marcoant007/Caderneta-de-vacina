<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>

<script src="js/modernizr-3.5.0.min.js"></script>
<script src="js/jquery-1.12.4.min.js" ></script>

<script src="js/owl.carousel.min.js" ></script>
<script src="js/isotope.pkgd.min.js" ></script>
<script src="js/ajax-form.js" ></script>
<script src="js/waypoints.min.js" ></script>
<script src="js/jquery.counterup.min.js" ></script>
<script src="js/imagesloaded.pkgd.min.js"></script>
<script src="js/scrollIt.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/nice-select.min.js"></script>
<script src="js/jquery.slicknav.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/plugins.js"></script>
<script src="js/gijgo.min.js"></script>
<script src="js/contact.js"></script>
<script src="js/jquery.ajaxchimp.min.js"></script>
<script src="js/jquery.form.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/mail-script.js"></script>

<script src="assets/slicknav/jquery.slicknav.min.js"></script>



<!-- JavaScript Princiapl --> 
<script type="text/javascript" src="jsF/main.js"></script>

<script src="js/main.js"></script>

<script>
    $(function () {
        $('.menu-navigation-icons').slicknav();
    });
</script>


<script>

    $(function () {

        var menu = $('.menu-navigation-dark');

        menu.slicknav();
        menu.on('click', 'a', function () {
            var a = $(this);

            a.siblings().removeClass('selected');
            a.addClass('selected');
        });
    });

</script>

<script>
    $('#datepicker').datepicker({
        iconsLibrary: 'fontawesome',
        icons: {
            rightIcon: '<span class="fa fa-caret-down"></span>'
        }
    });
    $('#datepicker2').datepicker({
        iconsLibrary: 'fontawesome',
        icons: {
            rightIcon: '<span class="fa fa-caret-down"></span>'
        }

    });
    $(document).ready(function () {
        $('.js-example-basic-multiple').select2();
    });
</script>

<script>
    (function ($) {
        "use strict";

        // Preloader
        $(window).on('load', function () {
            if ($('#preloader').length) {
                $('#preloader').delay(100).fadeOut('fast', function () {
                    $(this).remove();
                });
            }
        });
    })(jQuery);



</script>

