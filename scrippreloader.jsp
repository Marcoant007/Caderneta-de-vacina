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
