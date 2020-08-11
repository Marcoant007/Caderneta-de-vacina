
<%@page import="br.com.senaces.bean.AcessoBean"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Locais</title>
        <jsp:include page="head.jsp" flush="true" />
          <%
            try {
                if (session.getAttribute("usuario") == null) {
                    request.getRequestDispatcher("Espertao.jsp").forward(request, response);
                }
                if (session.getAttribute("usuario") != null) {
                    AcessoBean acs = new AcessoBean();
                    acs = (AcessoBean) session.getAttribute("usuario");
                    if (acs.getTipo().equals("Usuario")) {
                        request.getRequestDispatcher("indexlogado.jsp").forward(request, response);
                    }
                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            }
        %>
    </head>
    <body>
        <jsp:include page="Menu_Usuario.jsp" flush="true" />
       <div class="limiter" >
            <div class="container-login100" style="background-image: url('img/hospitalbrabo.jpg');">
                <div class="wrap-login100 p-t-190 p-b-30" style="margin-top: -20%">
                    
                    <form class="login100-form validate-form" action="ValidarLocal"  >
                     
                        <h3 style="color: white;">Cadastro de Local</h3>
                        <br>
                        <div class="wrap-input100 validate-input m-b-10">
                            <input type="text" name="txtLocal" class="input100" id="nome" placeholder="Nome do Hospital">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-user"></i>
                            </span>
                        </div>


                        <div class="wrap-input100 validate-input m-b-10" >

                            <input type="text" name="txtTelefoneLocal" class="input100" id="telefone" placeholder="Telefone">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-phone"></i>
                            </span>
                        </div>

                       

                        <div class="wrap-input100 validate-input m-b-10" >

                            <input type="text" name="txtCepLocal" class="input100" id="cep" placeholder="Informe o Cep Ex:00000-000" minlenght="8">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-road"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-10" >

                            <input  type="text" name="txtEnderecoLocal" class="input100" id="endereco" placeholder="Informe o Logradouro">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-thumb-tack"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-10" >

                            <input  type="text" name="txtCidadeLocal"  class="input100" id="cidade" placeholder="Informe a  cidade">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-building-o"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-10" >

                            <input  type="text" name="txtBairroLocal" class="input100" id="bairro" placeholder="Informe o  bairro">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-home"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-10"  >

                            <select name="optionEstado" id="estado" class="input100">
                                <option selected>Informe o estado</option>
                                <option>Acre</option>
                                <option>Alagoas</option>
                                <option>Amapá</option>
                                <option>Amazonas</option>
                                <option>Bahia</option>
                                <option>Ceará</option>
                                <option>Distrito Federal</option>
                                <option>Espírito Santo</option>
                                <option>Goiás</option>
                                <option>Maranhão</option>
                                <option>Mato Grosso</option>
                                <option>Mato Grosso do Sul</option>
                                <option>Minas Gerias</option>
                                <option>Pará</option>
                                <option>Paraíba</option>
                                <option>Paraná</option>
                                <option>Pernambuco</option>
                                <option>Piauí</option>
                                <option>Rio de Janeiro</option>
                                <option>Rio Grande do Norte</option>
                                <option>Rio Grande do Sul</option>
                                <option>Rondônia</option>
                                <option>Roraima</option>
                                <option>Santa Catarina</option>
                                <option>São Paulo</option>
                                <option>Sergipe</option>
                                <option>Tocantins</option>
                            </select>
                            <span class="focus-input100"></span>                                                                                                                                                                      
                        </div>

                        <input type="hidden" name="acao" value="cadastrar">
                        
                        <div class="container-login100-form-btn p-t-10">
                            <button type="submit"   class="login100-form-btn">
                                Cadastrar
                            </button>
                       </div>
                        
                    </form>
                </div>   
            </div>
           <div id="preloader"></div>
            <jsp:include page="newscripts.jsp" />
        </div>  
        
        
    </body>
</html>
