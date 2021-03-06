<%-- 
    Document   : dados_usuario
    Created on : 12/02/2020, 15:33:53
    Author     : sala302b
--%>

<%@page import="br.com.senaces.bean.AcessoBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%

            if (session.getAttribute("usuario") == null) {
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="head.jsp" />
        <jsp:include page="Menu_Usuario.jsp" />
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet'>

        <!-- Syntax Highlighter -->
        <link rel="stylesheet" type="text/css" href="syntax-highlighter/styles/shCore.css" media="all">
        <link rel="stylesheet" type="text/css" href="syntax-highlighter/styles/shThemeDefault.css" media="all">
        <link type="text/css" rel="stylesheet" href="cssF/bootstrap4.min.css">

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
        <!-- Font Awesome CSS-->
        <link rel="stylesheet" href="cssU/font-awesome.min.css">
        <!-- Normalize/Reset CSS-->
        <link rel="stylesheet" href="cssU/normalize.min.css">
        <!-- Main CSS-->
        <link rel="stylesheet" href="cssU/main.css">
        <%
            HttpSession sessao = request.getSession();
            AcessoBean acesso = new AcessoBean();
            acesso = (AcessoBean) sessao.getAttribute("usuario");

        %>
    </head>
    <body id="welcome">
        <jsp:useBean id="id" scope="request" class="br.com.senaces.bean.AcessoBean" />
        <jsp:useBean id="usuario" scope="request" class="br.com.senaces.bean.UsuarioBean" />
      
        
        <aside class="left-sidebar">
            <div class="logo">
                <a href="/JavaWebIntroducao/ValidarForm?acao=meusdados&idusuario=<% out.print(acesso.getIdusuario()); %>">
                    <div class="login100-form-avatar">
                        <img src="img/login3.png" alt="AVATAR">
                    </div>
                    <h4 style="color: white; text-align: center" ><% out.print(acesso.getNome()); %>!</h4>
                </a>
            </div>
            <nav class="left-nav">
                <ul id="nav">

                    <li><a href="/JavaWebIntroducao/ValidarForm?acao=meusdados">Meus Dados</a></li>
                    <li><a href="/JavaWebIntroducao/ValidarRegistroVacina?acao=ListarVacina&idusuario=<% out.print(acesso.getIdusuario()); %>">Minhas Vacinas</a></li>
                    
                </ul>
            </nav>
        </aside>



    </div>
    <jsp:include page="newscripts.jsp" />
</div>
<!-- Bibliotecas JavaScript --> 
<!-- Essential JavaScript Libraries
        ==============================================-->
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
