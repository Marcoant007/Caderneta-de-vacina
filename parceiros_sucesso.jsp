
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>


        <title>Locais</title>

        <jsp:include page="head.jsp" flush="true" />

    </head>
    <body>
        <jsp:include page="Menu_Usuario.jsp" flush="true" />
        <div class="limiter" >
            <div class="container-login100" style="background-image: url('img/parce.jpeg');">
                <div class="wrap-login100 p-t-190 p-b-30" style="margin-top: -20%">


                    <div class="alert alert-success" role="alert">
                        <h4 class="alert-heading">Parceiro Salvo com Sucesso!</h4>




                    </div>
                    <a style="text-align: center" class="boxed-btn3" href="historico.jsp" role="button">Cadastrar um novo Parceiro</a>

                </div>   
            </div>
            <div id="preloader"></div>
            <jsp:include page="newscripts.jsp" />
        </div>  


    </body>
</html>
