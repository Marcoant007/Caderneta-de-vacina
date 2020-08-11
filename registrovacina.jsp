

<%@page import="br.com.senaces.bean.AcessoBean"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="head.jsp"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body style="height: 100%;">
        <jsp:include page="Menu_Usuario.jsp" flush="true" />
      
        <%
            SimpleDateFormat date = new SimpleDateFormat("dd/MM/yyyy");
            String data = date.format(new Date());

        %>
        

        <br>
        <br>

        <div class="container" >

            <form action="ValidarRegistoVacina" method="post" id="FormCad" name="FormCad" >



                <h3 style="text-align: center; background: #007bff; color: white;">Registro de Vacina</h3>
                <div class="form-row" style="background: #007bff; color: white;">

                    <div class="form-group col-md-2">
                        <label for="inputName">Vacinas</label>
                        <select id="inputVacinas" name="inputVacinas"  class="form-control">
                            <option selected>Selecione</option>
                            <option>.</option>
                        </select>
                    </div>

                    <div class="form-group col-md-2">
                        <label for="inputLote">Lote</label>
                        <input type="number" name="txtLote" class="form-control" id="Lote" placeholder="0.0" maxlenght="3">
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputIntervalo">Laboratório</label>
                        <input type="number" name="txtLaboratorio" class="form-control" id="Laboratorio" placeholder="0" maxlenght="3">
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputDose">Dose</label>
                        <input type="number" name="txtDose" class="form-control" id="dose" placeholder="primeira dose" >
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputName">Locais</label>
                        <select id="inputLocais" class="form-control">
                            <option selected>Selecione</option>
                            <option>.</option>
                        </select>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputAtendente">Atendente</label>
                        <input type="number" name="txtAtendente" class="form-control" id="dose" placeholder="Código do Atendente" >
                    </div>
                    <div class="form-group col-md-2">
                        <fieldset disabled>

                            <label for="inputData">Data da Vacina</label>
                            <input type="text"  name="RegData" class="form-control"  value="<%out.print(data);%>">

                        </fieldset>
                    </div>





                </div>
                <input type="hidden" name="acao" value="cadastrar">
                <button type="submit" class="btn btn-lg btn-primary" style="margin-left: 40%;">Cadastrar</button>
                <button type="reset" class="btn btn-lg btn-danger">Apagar</button>
            </form>
            <div id="preloader"></div>
        </div>


        <jsp:include page="newscripts.jsp" />








    </body>
</html>

