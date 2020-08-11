

<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        
        <title>Formul�rio de Cadastro</title>
        <jsp:include page="head.jsp" />



    </head>

    <body>
        <jsp:include page="menu.jsp" flush="true" />

        <div class="limiter">
            <div class="container-login100" style="background-image: url('img/analysis-hospital-doctor-medical-genetic-dna-1451109-pxhere.com.jpg');">
                <div class="wrap-login100 p-t-190 p-b-30">
                    <form method="post" id="FormCad" name="FormCad" action="ValidarForm">

                        <h3 style=" color: white; margin-top: -40%">Cadastre-se</h3>
                        <br>

                        <div class="wrap-input100 validate-input m-b-10">

                            <input name="txtNome" id="nome" placeholder="Nome Completo" class="input100" required >
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-user"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-10">

                            <input type="date" name="txtData" id="data_nasc" placeholder="dd/mm/aaaa" class="input100" required >
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-calendar"></i>
                            </span>

                        </div>

                        <div class="wrap-input100 validate-input m-b-10">

                            <input type="tel" name="txtTelefone" id="telefone" placeholder="(00) 0000-0000" minlenght="10" class="input100" required >
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-10">

                            <select name="optionEtnia" id="etnia" class="input100">
                                <option selected>Selecione Sua Etnia</option>
                                <option>Branca</option>
                                <option>Negra</option>
                                <option>Amarela</option>
                                <option>Parda</option>
                                <option>Ind�gena</option>
                            </select>
                            <span class="focus-input100"></span>

                        </div>

                        <div class="wrap-input100 validate-input m-b-10">

                            <input type="text" name="txtSUS" id="cartao_sus" placeholder="Digite o n�mero do Cart�o SUS" class="input100" required >
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-address-card" aria-hidden="true"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-10">

                            <input type="text" name="txtRegistro" id="registro_civil" placeholder="Digite o n�mero do Registro Civil" class="input100" required >
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-file-text-o" aria-hidden="true"></i>
                            </span>

                        </div>

                        <div class="wrap-input100 validate-input m-b-10">

                            <input type="text" name="txtMae" id="nome_mae" placeholder="Digite o nome da sua mae completo" class="input100" required >
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-female" aria-hidden="true"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-10">

                            <input input type="text" name="txtPai" class="input100" id="nome_pai" placeholder="Digite o nome do seu pai completo">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-male" aria-hidden="true"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-10">

                            <input input type="text" name="rg" class="input100" id="rg" placeholder="Informe seu rg Ex:00.000.000-00" minlenght="10">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-file-text-o" aria-hidden="true"></i>
                            </span>

                        </div>

                        <div class="wrap-input100 validate-input m-b-10">

                            <input input type="text" name="cpf" class="input100" id="cpf" placeholder="Informe seu CPF  Ex:000.000.000-00" minlenght="11">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-file-text-o" aria-hidden="true"></i>
                            </span>

                        </div>

                        <h3 style="color: white;">Informe seu Endere�o</h3>
                        <br>

                        <div class="wrap-input100 validate-input m-b-10">

                            <input type="text" name="txtCEP" class="input100" id="cep" placeholder="Informe seu Cep Ex:00000-000" minlenght="8">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-road"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-10">

                            <input type="text" name="txtEndereco" class="input100" id="endereco" placeholder="Logradouro">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-thumb-tack"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-10">

                            <input type="text" name="txtCidade" class="input100" id="cidade" placeholder="Digite o nome da sua cidade">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-building-o"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-10">

                            <input type="text" name="txtBairro" class="input100" id="bairro" placeholder="Digite o nome do seu bairro">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-home"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-10">

                            <select name="optionEstado" id="estado" class="input100">
                                <option selected>Selecione seu estado</option>
                                <option>Acre</option>
                                <option>Alagoas</option>
                                <option>Amap�</option>
                                <option>Amazonas</option>
                                <option>Bahia</option>
                                <option>Cear�</option>
                                <option>Distrito Federal</option>
                                <option>Esp�rito Santo</option>
                                <option>Goi�s</option>
                                <option>Maranh�o</option>
                                <option>Mato Grosso</option>
                                <option>Mato Grosso do Sul</option>
                                <option>Minas Gerias</option>
                                <option>Par�</option>
                                <option>Para�ba</option>
                                <option>Paran�</option>
                                <option>Pernambuco</option>
                                <option>Piau�</option>
                                <option>Rio de Janeiro</option>
                                <option>Rio Grande do Norte</option>
                                <option>Rio Grande do Sul</option>
                                <option>Rond�nia</option>
                                <option>Roraima</option>
                                <option>Santa Catarina</option>
                                <option>S�o Paulo</option>
                                <option>Sergipe</option>
                                <option>Tocantins</option>
                            </select>
                            <span class="focus-input100"></span>
                        </div>

                        <h3 style="color: white;">Cadastre seu Login</h3>
                        <br>
                        <div class="wrap-input100 validate-input m-b-10">

                            <input type="Email" name="txtEmail" class="input100" id="nome" placeholder="Informe seu melhor email">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-user"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-10">

                            <input type="password" name="txtSenha" class="input100" id="Senha">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-unlock-alt"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-10">

                            <input type="password" name="txtConfSenha" class="input100" id="ConfSenha">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa  fa-unlock-alt"></i>
                            </span>
                        </div>

                        <input type="hidden" name="acao" value="cadastrar">
                        <div class="container-login100-form-btn p-t-10">
                            <button type="button" onclick="validarSenha()" class="login100-form-btn">
                                Cadastre-se
                            </button>
                        </div>

                    </form>
                </div>
            </div>
        

            <div id="preloader"></div>
        </div>

       
        <jsp:include page="newscripts.jsp" />
        <script>
            function validarSenha() {
                Senha = document.getElementById('Senha').value;
                ConfSenha = document.getElementById('ConfSenha').value;

                if (Senha != ConfSenha) {
                    alert("Senhas n�o coincidem, \n favor verifique e tente novamente")
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

    </body>

</html>