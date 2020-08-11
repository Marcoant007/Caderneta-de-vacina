<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>        

        <!-- Biblioteca Bootstrap 4.3.1 StyleSheet -->
        <link type="text/css" rel="stylesheet" href="cssF/bootstrap4.min.css">
        <jsp:include page="head.jsp" />
        <!-- Bibliotecas StyleSheet -->
        <link type="text/css" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="cssF/font-awesome.min.css">
        <link type="text/css" rel="stylesheet" href="cssF/animate.min.css">
        <link type="text/css" rel="stylesheet" href="cssF/ionicons.min.css">
        <link type="text/css" rel="stylesheet" href="cssF/owl.carousel.min.css">

        <!-- StyleSheet Principal -->
        <link type="text/css" rel="stylesheet" href="cssF/user.css">
        <link type="text/css" rel="stylesheet" href="cssF/util.css">
        <link type="text/css" rel="stylesheet" href="cssF/style.css">
    </head>


    <body>
        <jsp:include page="MenuLateral" flush="" />

        <jsp:useBean id="usuario" scope="request" class="br.com.senaces.bean.UsuarioBean" />
        <jsp:useBean id="end" scope="request" class="br.com.senaces.bean.EnderecoBean" />
        <jsp:useBean id="acesso" scope="request" class="br.com.senaces.bean.AcessoBean" />

        <div class="container" id="introducao"  style="margin-top: -6%;">
            <form  class="formulario" action="ValidarForm" method="POST">
                <h2 class="text-center" style="padding-bottom: 3%;">Formulário</h2>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="input">Nome Completo</label>
                        <div class="wrap-input">
                            <input type="text" name="txtNome" class="inputdados" id="nome" value="${usuario.nome}">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-user" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Data de Nascimento</label>
                        <div class="wrap-input">
                            <input type="date" name="txtData" class="inputdados" id="data_nasc" value="${usuario.nascimento}" >
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Etnia</label>
                        <div class="wrap-input">
                            <select name="optionEtnia"  id="etnia" class="inputdadim">
                                <option selected>${usuario.etnia}</option>
                                <option>Branca</option>
                                <option>Negra</option>
                                <option>Amarela</option>
                                <option>Parda</option>
                                <option>Indígena</option>
                            </select>
                        </div>

                    </div>            
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="input">Nome do Pai</label>
                        <div class="wrap-input">
                            <input type="text" name="txtPai"  value="${usuario.pai}"class="inputdados" id="nome_pai" >
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-male" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="input">Nome da Mãe</label>
                        <div class="wrap-input">
                            <input type="text" name="txtMae" value="${usuario.mae}" class="inputdados" id="nome_mae" >
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-female" aria-hidden="true"></i></span>
                            <div class="validation"></div>
                        </div>
                    </div>           
                </div>
                <div class="form-row">     
                    <div class="form-group col-md-3">
                        <label for="input">CPF</label>
                        <div class="wrap-input">
                            <input type="text" name="cpf"  value="${usuario.cpf}"class="inputdados" id="cpf"  maxlenght="11">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-id-card" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">CEP</label>
                        <div class="wrap-input">
                            <input type="text" name="txtCEP"  value="${usuario.cep}"class="inputdados" id="cep" placeholder="000000.000" maxlength="9">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-map-marker" aria-hidden="true"></i></span>
                        </div>        
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">RG</label>
                        <div class="wrap-input">
                            <input type="text" name="rg" value="${usuario.rg}" class="inputdados" id="rg"  maxlenght="13">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-id-card" aria-hidden="true"></i></span>  
                        </div>        
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Telefone</label>
                        <div class="wrap-input">
                            <input type="tel" name="txtTelefone" value="${usuario.telefone}" class="inputdados" id="telefone"  maxlenght="10">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-phone" aria-hidden="true"></i></span>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="input">Nº do Cartão SUS</label>
                        <div class="wrap-input">
                            <input type="text" name="txtSUS"  value="${usuario.cartao_sus}"class="inputdados" id="cartao_sus">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-id-card-o"></i></span>  
                        </div>

                    </div>
                    <div class="form-group col-md-5">
                        <label for="input">Registro Civil de Nascimento</label>
                        <div class="wrap-input">
                            <input type="text" name="txtRegistro" value="${usuario.registro}" class="inputdados" id="registro_civil" >
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-file-text"></i></span>  
                        </div>
                    </div>   
                    <div class="form-group col-md-3">
                        <label for="input">Celular</label>
                        <div class="wrap-input">
                            <input type="tel" name="txtCelular" value="${usuario.celular}" class="inputdados" id="celular"  maxlenght="11">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados-phone"><i class="fa fa-mobile" aria-hidden="true"></i></span>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="input">Endereço</label>
                        <div class="wrap-input">
                            <input type="text" name="txtEndereco" value="${end.logradouro}" class="inputdados" id="endereco" >
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-map-marker"></i></span>  
                        </div>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="input">Estado</label>
                        <div class="wrap-input">
                            <select name="optionEstado"  id="estado" class="inputdadim">
                                <option selected>${end.estado}</option>
                                <option>Acre</option>
                                <option>Alagoas</option>
                                <option>Amapa</option>
                                <option>Amazonas</option>
                                <option>Bahia</option>
                                <option>Ceara</option>
                                <option>Distrito Federal</option>
                                <option>Espirito Santo</option>
                                <option>Goias</option>
                                <option>Maranhao</option>
                                <option>Mato Grosso</option>
                                <option>Mato Grosso do Sul</option>
                                <option>Minas Gerais</option>
                                <option>Para</option>
                                <option>Paraiba</option>
                                <option>Parana</option>
                                <option>Pernambuco</option>
                                <option>Piaui</option>
                                <option>Rio de Janeiro</option>
                                <option>Rio Grande do Norte</option>
                                <option>Rio Grande do Sul</option>
                                <option>Rondonia</option>
                                <option>Roraima</option>
                                <option>Santa Catarina</option>
                                <option>Sao Paulo</option>
                                <option>Sergipe</option>
                                <option>Tocantins</option>
                            </select>  
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Cidade</label>
                        <div class="wrap-input">
                            <input type="text" name="txtCidade" value="${end.cidade}" class="inputdados" id="cidade" >
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-map-marker"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Bairro</label>
                        <div class="wrap-input">
                            <input type="text" name="txtBairro" value="${end.bairro}" class="inputdados" id="bairro" >
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-map-marker"></i></span>
                        </div>
                    </div>
                </div>
                <div class="form-row" >
                    <div class="form-group col-md-4">
                        <label for="input">Login</label>
                        <div class="wrap-input">
                            <input input type="Email" name="txtEmail" value="${acesso.nome}" class="inputdados">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-user" aria-hidden="true"></i></span>  
                        </div>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="input">Senha</label>
                        <div class="wrap-input">
                            <input input type="password" name="txtSenha" value="${acesso.senha}" class="inputdados">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-unlock" aria-hidden="true"></i></span>  
                        </div>
                    </div> 
                    <div class="form-group col-md-4">
                        <label for="input">Confirma Senha</label>
                        <div class="wrap-input">
                            <input input type="password" name="txtConfSenha" value="${acesso.senha}" class="inputdados">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-unlock" aria-hidden="true"></i></span>  
                        </div>
                    </div> 
                </div>
                <div class="justify-content-center text-center">
                    <ul class="justify-content-center text-center bot">
                        <input type="hidden" name="acao" value="atualizarusuario">
                        <input type="hidden" name="txtidUsuario" value="${usuario.idusuario}">
                        <button type="submit" onclick="validarSenha()" class="login100-form-btn">
                            Salvar Dados
                        </button>

                    </ul>


                </div>
            </form>
        </div>
        <!-- Bibliotecas JavaScript --> 

        <div id="preloader"></div>
        <jsp:include page="newscripts.jsp" />
    </div>
</body>
</html>
