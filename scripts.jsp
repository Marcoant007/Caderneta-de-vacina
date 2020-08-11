         <script src="js/popper.min.js" ></script>
<script src="js/bootstrap.min.js" ></script>

        
        
        
        
        
        
        
        
         <script>
         

            function validarSenha() {
                Senha = document.getElementById('Senha').value;
                ConfSenha = document.getElementById('ConfSenha').value;

                if (Senha != ConfSenha) {
                    alert("Senhas não coincidem, \n favor verifique e tente novamente")
                } else {
                    document.FormCad.submit();
                }

            }
            
               $(document).ready(function () {
                $('#cep').mask('00000-000');
                $('#telefone').mask('(00) 0000-0000');
                $('#celular').mask('(00) 00000-0000');
                $('#rg').mask('0.000.000-00');
                $('#cpf').mask('000.000.000-00');
                $('#cnpj').mask('00.000.000/0000-00');

            });



        </script>
        <script src="js/jquery-migrate.min.js"></script>
         <script>
            (function ($) {
                "use strict";

                // Preloader
                $(window).on('load', function () {
                    if ($('#preloader').length) {
                        $('#preloader').delay(100).fadeOut('slow', function () {
                            $(this).remove();
                        });
                    }
                });
            })(jQuery);



        </script>
        
        
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>