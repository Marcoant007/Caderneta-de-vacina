
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
            <div class="container-login100" style="background-image: url('img/hospitalbrabo.jpg');">
                <div class="wrap-login100 p-t-190 p-b-30" style="margin-top: -20%">


                    <div class="alert alert-success" role="alert">
                        <h4 class="alert-heading">Local Salvo com Sucesso!</h4>
                        <p>O local Cadastrado foi salvo com sucesso</p>



                    </div>
                    <a style="text-align: center" class="boxed-btn3" href="local.jsp" role="button">Cadastrar um novo local</a>

                </div>   
            </div>
            <div id="preloader"></div>
            <jsp:include page="newscripts.jsp" />
        </div>  


    </body>
</html>
