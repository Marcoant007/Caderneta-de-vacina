<%-- 
    Document   : recebeDados
    Created on : 11/11/2019, 18:47:34
    Author     : sala302b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        String usu = request.getParameter("txtUsuario");
        String sen = request.getParameter("txtSenha");
    %>
    <body>
        <h1>Hello World!</h1>
        <%
            if (!usu.isEmpty() && !sen.isEmpty()) {
                out.println("Dados cadastrados com sucesso!");
                out.println("</br>Nome do usuário: " + usu);
                out.println("</br>Senha do usuário: " + sen);
            } else {
                out.println("Erro nos dados!");
            }


        %>
    </body>
</html>
