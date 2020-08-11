<jsp:include page="Menu_Usuario.jsp" flush="true" />


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <jsp:include page="head.jsp" />
        <title>Formulário de Cadastro</title>
        
    </head>
    <body>
        <br>
        <br>




        <div class="container" >
            <form action="ValidarForm" method="post" id="FormCad" name="FormCad">

                <h3 style="text-align: center; background: #007bff; color: white;">Editar Dados do Usuario</h3>
                <div class="form-row" style="background: #007bff; color: white;">


                    <div class="form-group col-md-6">
                        <label for="inputName">Nome Completo</label>
                        <input type="text" value="${usuario.nome}" name="txtNome" class="form-control" id="nome" placeholder="Digite seu nome completo">
                    </div>


                    <div class="form-group col-md-2">
                        <label for="inputDate">Data de Nascimento</label>
                        <input type="date" value="${usuario.nascimento}" name="txtData" class="form-control" id="data_nasc" placeholder="dd/mm/aaaa">
                    </div>


                    <div class="form-group col-md-2">
                        <label for="inputPhone">Telefone</label>
                        <input type="tel" value="${usuario.telefone}" name="txtTelefone" class="form-control" id="telefone" placeholder="(00) 0000-0000" minlenght="10">
                    </div>


                </div>
                <div class="form-row" style="background: #007bff; color: white;">
                    <div class="form-group col-md-4">
                        <label for="input">Etnia</label>
                        <select name="optionEtnia" id="etnia" class="form-control">
                            <option selected>Escolha</option>
                            <option>Branca</option>
                            <option>Negra</option>
                            <option>Amarela</option>
                            <option>Parda</option>
                            <option>Indígena</option>
                        </select>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputName">Nº do Cartão SUS</label>
                        <input type="text" value="${usuario.cartao_sus}" name="txtSUS" class="form-control" id="cartao_sus" placeholder="Digite o número do Cartão SUS">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputName">Registro Civil de Nascimento</label>
                        <input type="text" name="txtRegistro" class="form-control" id="registro_civil" placeholder="Digite o número do Registro Civil">
                    </div>
                </div>
                <div class="form-row" style="background: #007bff; color: white;">
                    <div class="form-group col-md-6">
                        <label for="inputName">Nome do Pai</label>
                        <input type="text" value="${usuario.pai}" name="txtPai" class="form-control" id="nome_pai" placeholder="Digite o nome do seu pai completo">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputName">Nome da Mãe</label>
                        <input type="text" value="${usuario.mae}" name="txtMae" class="form-control" id="nome_mae" placeholder="Digite o nome da sua mae completo">
                    </div>
                </div>

                <br>
                <br>
               





                <div class="form-row" style="background: #007bff; color: white;">
                    <div class="form-group col-md-4">
                        <label for="inputRG">RG</label>
                        <input type="text" value="${usuario.rg}" name="rg" class="form-control" id="rg" placeholder="00.000.000-00" minlenght="10">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputCPF">CPF</label>
                        <input type="text" value="${usuario.cpf}" name="cpf" class="form-control" id="cpf" placeholder="000.000.000-00" minlenght="11">
                    </div>


                </div>




                <br>
                <br>
                <br>
                <h3 style="text-align: center; background: #007bff ; color: white;">Editar seu login</h3>



                <div class="form-row" style="background: #007bff; color: white;">
                    <div class="form-group col-md-4">
                        <label for="inputEmail">Email</label>
                        <input type="Email" name="txtEmail" class="form-control" id="nome" placeholder="Digite seu nome completo">
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputSenha">Senha</label>
                        <input type="password" name="txtSenha" class="form-control"  id="Senha" >
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputConfSenha">Confirme sua senha</label>
                        <input type="password"  name="txtConfSenha" class="form-control" id="ConfSenha" >
                    </div>



                </div>
                <br>
                <br>

                <input type="hidden" name="acao" value="atualizar">
                <input type="hidden" name="txtidUsuario" value="${usuario.idusuario}">
                <button type="submit"  class="btn btn-lg btn-primary" style="margin-left:45%;"> ATUALIZAR </button>

            </form>


        </div>
                <jsp:include page="newscripts.jsp" />
    </body>
</html>
