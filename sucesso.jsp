
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="head.jsp"/> <!--INCLUIDO TUDO QUE ESTA NO HEAD -->
        <meta http-equiv="refresh" content="5; url=formulario.jsp"> <!-- refresh = depois de 5 segundos ele vai abrir o formulario.jsp  -->
        <title>Dados do usuario</title>
    </head>
    <body>
        <jsp:include page="menu.jsp" flush="true" />
        <jsp:useBean id="usuario" scope="request" class="br.com.senaces.bean.LoginBean" />
        
        <div class="container">
            <h1>Yeah!</h1>
        <div class="alert alert-success">
            <strong>Mensagem:</strong> Dados salvo com sucesso! 
        </div>
        </div>
            
    </body>
</html>
