
<%@page import="br.com.senaces.bean.AcessoBean"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Menu_Usuario.jsp" />
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
        <%
            SimpleDateFormat date = new SimpleDateFormat("dd/MM/yyyy");
            String data = date.format(new Date());
            
            
            %>
        <div class="container" id="introducao" >
            <form class="formulario" action="ValidarRegistroVacina" method="post" id="FormCad" name="FormCad" >
                 <h2 class="text-center" style="padding-bottom: 3%;">Formulário</h2>


               
                <div class="form-row">
                   
                    
                    <div class="form-group col-md-4">
                        <label for="inputName">Usuario</label>
                        <div class="wrap-input">
                        <select id="inputUsuario" class="form-control" name="inputUsuario">
                            <option selected>Selecione</option>
                            <c:forEach items="${registroUsuario}" var="u" >                            
                            <option value="${u.idusuario}">${u.nome} </option>
                            </c:forEach>
                        </select>
                        </div>
                    </div>
                    
                        
                    <div class="form-group col-md-2">
                        <label for="inputName">Vacinas</label>
                        <select id="inputVacinas" class="form-control" name="inputVacinas">
                            <option selected>Selecione</option>
                            <c:forEach items="${registroVacina}" var="v" >                            
                            <option value="${v.idvacina}">${v.nome} </option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="form-group col-md-2">
                        <label for="inputLote">Lote</label>
                        <input type="number" name="txtLote" class="form-control" id="Lote" placeholder="0.0" maxlenght="3">
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputIntervalo">Laboratório</label>
                        <input type="text" name="txtLaboratorio" class="form-control" id="Laboratorio"  maxlenght="3">
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputDose">Dose</label>
                        <input type="number" name="txtDose" class="form-control" id="dose" placeholder="primeira dose" >
                    </div>
                </div>
                 <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="inputName">Locais</label>
                        <select id="inputLocais" class="form-control" name="inputLocais">
                            <option selected>Selecione</option>
                            <c:forEach items="${registroLocal}" var="l" >                            
                            <option value="${l.idlocal}"> ${l.nome} </option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputAtendente">Atendente</label>
                        <input type="text" name="txtAtendente" class="form-control" id="dose" placeholder="Código do Atendente" >
                    </div>
                    <div class="form-group col-md-3">
                        <fieldset disabled>
                        <label for="inputData">Data da Vacina</label>
                        <input type="text" name="RegData" class="form-control" id="dose" value="<%out.print(data);%>">
                        </fieldset>
                        </div>
                </div>
                <input type="hidden" name="acao" value="cadastrar">
                <button type="submit" class="btn btn-lg btn-primary" style="margin-left: 40%;">Cadastrar</button>
                <button type="reset" class="btn btn-lg btn-danger">Apagar</button>
            </form>

        </div>










    </body>
</html>

