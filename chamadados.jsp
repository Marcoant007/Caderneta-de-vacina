<%@page import="br.com.senaces.bean.AcessoBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <%
            if (session.getAttribute("usuario") == null) {
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
            AcessoBean acs = new AcessoBean();
            acs = (AcessoBean) session.getAttribute("usuario");
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Caderneta Online</title>
     <jsp:include page="head.jsp" />
        <link href="css/sidebar.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:useBean id="usuario" scope="request" class="br.com.senaces.bean.UsuarioBean" />
        <jsp:useBean id="end" scope="request" class="br.com.senaces.bean.EnderecoBean" />
        <jsp:useBean id="acesso" scope="request" class="br.com.senaces.bean.AcessoBean" />
        <jsp:include page="Menu_Usuario.jsp" />
        <div class="wrapper d-flex align-items-stretch">
            <nav id="sidebar">
                <div class="custom-menu">
                    <button type="button" id="sidebarCollapse" class="btn btn-primary">
                    </button>
                </div>
                <div class="img bg-wrap text-center py-4" style="background-image: url(img/Note-3-Blue-1920x1200.jpg);">
                    <a href="/JavaWebIntroducao/ValidarForm?acao=meusdados&idusuario=<% out.print(acs.getIdusuario()); %>"></a>
                    <div class="user-logo">
                        <div class="img" style="background-image: url(img/login3.png);"></div>
                        <h4 style="color: white; text-align: center"  ><% out.print(acs.getNome()); %>!</h4>
                    </div>
                </div>
                <ul class="list-unstyled components mb-5">
                    <li class="active">
                        <a href="/JavaWebIntroducao/ValidarForm?acao=meusdados&idusuario=<% out.print(acs.getIdusuario()); %>"><span class="fa fa-home mr-3"></span> Meus Dados</a>
                    </li>
                    <li>
                        <a href="/JavaWebIntroducao/ValidarRegistroVacina?acao=ListarVacina&idusuario=<% out.print(acs.getIdusuario());%>"><span class="fa fa-download mr-3 notif">
                                <small class="d-flex align-items-center justify-content-center">5</small></span> Minhas Vacinas</a>
                    </li>
                    
                    <li>
                        <a href="/JavaWebIntroducao/ValidarLogin?acao=deslogar"><span class="fa fa-sign-out mr-3"></span> Sign Out</a>
                    </li>
                </ul>
            </nav>

            <div id="content" class="p-4 p-md-5 pt-5" id="before">
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
            </div>
        </div>
        <!-- Page Content  -->



        <!-- Bibliotecas JavaScript --> 

        <div id="preloader"></div>
        <jsp:include page="newscripts.jsp" />
    </body>
</html>
