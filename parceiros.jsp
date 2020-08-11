
 <%@page import="br.com.senaces.bean.AcessoBean"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<html>
    <head>
      
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <jsp:include page="head.jsp"/>
     
        <title>Cadastro de Parceiros</title>
        
        <script>
            $(document).ready(function () {
                $('#cep').mask('00000-000');
                $('#telefone').mask('(00) 0000-0000');
                $('#celular').mask('(00) 00000-0000');
                $('#cnpj').mask('99.999.999/9999-99');



            });
        </script> 
        
          <%
            try {
                if (session.getAttribute("usuario") == null) {
                    request.getRequestDispatcher("Espertao.jsp").forward(request, response);
                }
                if (session.getAttribute("usuario") != null) {
                    AcessoBean acs = new AcessoBean();
                    acs = (AcessoBean) session.getAttribute("usuario");
                    if (acs.getTipo().equals("Usuario")) {
                        request.getRequestDispatcher("listparceirousuario.jsp").forward(request, response);
                    }
                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            }
        %>
        
    </head>
    <body>
        <jsp:include page="Menu_Usuario.jsp" flush="true" />
        
        <div class="limiter">
            <div class="container-login100" style="background-image: url('img/parce.jpeg');">
                <div class="wrap-login100 p-t-190 p-b-30">
                    <form action="ValidarParceiros" method="post" id="FormCad" name="FormCad" >
                        <h3 style=" color: white; margin-top: -30%">Seja nosso parceiro </h3>
                        <br>

                        <div class="wrap-input100 validate-input m-b-10" >

                            <input type="text" name="txtRazaoParceiro" class="input100" id="nome" placeholder="Digite nome completo de sua empresa">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-building-o"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-10" >

                            <input type="text" name="txtCnpjParceiro"  class="input100" id="cnpj" placeholder="Informe o CNPJ por favor">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-file-text-o"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-10" >

                            <input type="email" name="txtContatoParceiro" id="inputEmail" class="input100" placeholder="Email para contato" required autofocus>
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-envelope-o"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-10" >

                            <input type="site" name="txtSiteParceiro" class="input100"  placeholder="Informe o endereço do site">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-globe"></i>
                            </span>
                        </div>


                        <div class="wrap-input100 validate-input m-b-10" >

                            <input type="text" name="txtTelefoneParceiro" class="input100" id="telefone" placeholder="Telefone do responsavél">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-phone-square"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-10" >

                            <input type="text" name="txtEnderecoParceiro" class="input100" id="endereco" placeholder="Logradouro">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-thumb-tack"></i>
                            </span>
                        </div>


                        <div class="wrap-input100 validate-input m-b-10"  >

                            <select name="optionEstado" id="estado" class="input100">
                                <option selected>Selecione seu estado</option>
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

                        <div class="wrap-input100 validate-input m-b-10" >

                            <input type="text" name="txtCidadeParceiro" class="input100" id="cidade" placeholder="Digite o nome da sua cidade">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-home"></i>
                            </span>
                        </div>


                        <div class="wrap-input100 validate-input m-b-10" >

                            <input type="text" name="txtBairroParceiro" class="input100" id="bairro" placeholder="Digite o nome do seu bairro">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-home"></i>
                            </span>
                        </div>
                        
                        
                        <div class="wrap-input100 validate-input m-b-10" >

                            <input type="text" name="txtCepParceiro" class="input100" id="cep" placeholder="Digite o Cep">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-road"></i>
                            </span>
                        </div>


                        <input type="hidden" name="acao" value="cadastrar">
                        <div class="container-login100-form-btn p-t-10">
                            <button type="submit"  class="login100-form-btn">
						Cadastrar
						</button>
					</div>


                    </form>  

                </div>                                                
            </div>
            <div id="preloader"></div>
            
        </div>
       
        <jsp:include page="newscripts.jsp" />
</body>
</html>
