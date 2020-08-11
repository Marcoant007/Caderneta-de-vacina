<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="br.com.senaces.bean.AcessoBean"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="cssF/user.css">
        <link type="text/css" rel="stylesheet" href="cssF/util.css">
        <link type="text/css" rel="stylesheet" href="cssF/style.css">
        <jsp:include page="head.jsp" />
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        
        
<%            SimpleDateFormat date = new SimpleDateFormat("dd/MM/yyyy");
    String data = date.format(new Date());

%>
    </head>
    <body>
        <jsp:include page="Menu_Usuario.jsp" flush="true" />
        <jsp:useBean id="id" scope="request" class="br.com.senaces.bean.AcessoBean"/>
        <div class="limiter">
            <div class="container-login100" style="background-image: url('img/vacina1.jpg');">
                <div class="container" id="introducao" >
                    <form  class="formulario" action="ValidarHistorico" style="background: white; margin-top: -30%;" method="post" id="FormCad" name="FormCad" >
                        <input type="hidden" name="idacesso" value="${id.idusuario}"> 

                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="inputName">Usuario</label>
                                <div class="wrap-input">
                                    <select id="inputUsuario" class="form-control" name="inputUsuario">
                                        <option selected>Selecione</option>
                                        <c:forEach items="${usuarios}" var="u" >                            
                                            <option value="${u.idusuario}">${u.nome} </option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group col-md-2">
                                <label for="inputName">Peso</label>
                                <input type="text" name="txtPeso" class="form-control" id="Peso" placeholder="0.00">
                            </div>


                            <div class="form-group col-md-2">
                                <label for="inputAltura">Altura</label>
                                <input type="text" name="txtAltura" class="form-control" id="altura" placeholder="0.00" maxlenght="3">
                            </div>
                            <div class="form-group col-md-2">
                                <label for="inputIdade">Idade</label>
                                <input type="number" name="txtIdade" class="form-control" id="idade" placeholder="10" maxlenght="3">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="inputUnidade">Faixa Etária</label>
                                <select name="optionUnidade"  class="form-control" id="unidade" placeholder="meses/anos" >
                                    <option selected>Selecione sua Faixa Etária</option>
                                    <option>Jovem</option>
                                    <option>Recem Nascido</option>
                                    <option>Adulto</option>
                                    <option>Idoso</option> 
                                </select>
                            </div>


                            <div class="form-group col-md-2">
                                <label for="inputIdade">Perimetro Cefálico </label>
                                <input type="text" name="txtPerimetro" class="form-control" id="perimetro" placeholder="0.00" maxlenght="3">
                            </div>

                            <div class="form-group col-md-2">
                                <fieldset disabled>
                                    <label for="inputDate">Data de lançamento</label>
                                    <input  type="text" name="txtLancamento" class="form-control" id="data_nasc" value="<%out.print(data);%>">
                                </fieldset>

                            </div>
                        </div>
                        <input type="hidden" name="acao" value="cadastrar">
                        <button type="submit" class="btn btn-lg btn-primary" style="margin-left: 40%;">Cadastrar</button>
                        <button type="reset" class="btn btn-lg btn-danger">Apagar</button>
                    </form>

                </div>
            </div>
        </div>


        <jsp:include page="newscripts.jsp" />         

    </body>
</html>
