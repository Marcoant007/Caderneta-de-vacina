<%@page import="br.com.senaces.bean.AcessoBean"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <!-- Biblioteca Bootstrap 4.3.1 StyleSheet -->
        <link type="text/css" rel="stylesheet" href="cssF/bootstrap4.min.css">
        <jsp:include page="head.jsp" />
        <!-- Bibliotecas StyleSheet -->
        <link type="text/css" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="cssF/font-awesome.min.css">
        <link type="text/css" rel="stylesheet" href="cssF/animate.min.css">
        <link type="text/css" rel="stylesheet" href="cssF/ionicons.min.css">
        <link type="text/css" rel="stylesheet" href="cssF/owl.carousel.min.css">
        
        <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet'>
        <link rel="stylesheet" type="text/css" href="syntax-highlighter/styles/shCore.css" media="all">
        <link rel="stylesheet" type="text/css" href="syntax-highlighter/styles/shThemeDefault.css" media="all">
        <link type="text/css" rel="stylesheet" href="cssF/bootstrap4.min.css">
        <link type="text/css" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="cssF/font-awesome.min.css">
        <link type="text/css" rel="stylesheet" href="cssF/animate.min.css">
        <link type="text/css" rel="stylesheet" href="cssF/ionicons.min.css">
        <link type="text/css" rel="stylesheet" href="cssF/owl.carousel.min.css">
        <link type="text/css" rel="stylesheet" href="cssF/user.css">
        <link type="text/css" rel="stylesheet" href="cssF/util.css">
        <link type="text/css" rel="stylesheet" href="cssF/style.css">
        <link rel="stylesheet" href="cssU/font-awesome.min.css">
        <link rel="stylesheet" href="cssU/normalize.min.css">
        <link rel="stylesheet" href="cssU/main.css">

        <!-- StyleSheet Principal -->
        <link type="text/css" rel="stylesheet" href="cssF/user.css">
        <link type="text/css" rel="stylesheet" href="cssF/util.css">
        <link type="text/css" rel="stylesheet" href="cssF/style.css">

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
        <div class="limiter">
            <div class="container-login100" style="background-image: url('img/vacina1.jpg');">
                <div class="container" id="introducao">

                    <form class="formulario" style="background: white; margin-top: -30%;" action="ValidarVacina" method="post" id="FormCad" name="FormCad" >



                        <h2 class="text-center" style="padding-bottom: 3%;">Vacinas</h2>
                        <div class="form-row"  >

                            <div class="form-group col-md-6">
                                <label for="inputName">Nome</label>
                                <input type="text" name="txtNomeVacina" class="form-control" id="vacina" placeholder="Nome da Vacina" required>
                            </div>


                            <div class="form-group col-md-2">
                                <label for="inputDose">Doses</label>
                                <input type="text" name="txtDose" class="form-control" id="Doses" placeholder="0.0" maxlength="1" min="1" max="3" required>
                            </div>
                            <div class="form-group col-md-2">
                                <label for="inputIntervalo">Intervalo</label>
                                <input type="text" name="txtIntervalo" class="form-control" id="intervalo" placeholder="0" maxlength="3" min="1" max="3" required>
                            </div>
                            <div class="form-group col-md-2">
                                <label for="inputDose">Primeira Dose</label>
                                <input type="text" name="txtPrimeiraDose" class="form-control" id="dose" placeholder="primeira dose" maxlength="1" min="1" max="3" required>
                            </div>


                        </div>
                        <input type="hidden" name="acao" value="cadastrar">
                        <button type="submit" class="btn btn-lg btn-primary" style="margin-left: 40%;">Cadastrar</button>
                        <button type="reset" class="btn btn-lg btn-danger">Apagar</button>
                    </form>

                </div>
            </div>
        </div>


<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/jquery.nav.js"></script>
<script type="text/javascript" src="syntax-highlighter/scripts/shCore.js"></script> 
<script type="text/javascript" src="syntax-highlighter/scripts/shBrushXml.js"></script> 
<script type="text/javascript" src="syntax-highlighter/scripts/shBrushCss.js"></script> 
<script type="text/javascript" src="syntax-highlighter/scripts/shBrushJScript.js"></script> 
<script type="text/javascript" src="syntax-highlighter/scripts/shBrushPhp.js"></script> 
<script type="text/javascript">
    SyntaxHighlighter.all()
</script>
<script type="text/javascript" src="js/custom.js"></script>










    </body>
</html>
