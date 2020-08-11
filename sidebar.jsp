<%@page import="br.com.senaces.bean.AcessoBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            if (session.getAttribute("usuario") == null) {
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }

            AcessoBean ac = new AcessoBean();
            ac = (AcessoBean) session.getAttribute("usuario");
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Caderneta Online</title>
        <jsp:include page="head.jsp" />
        <link href="css/sidebar.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="Menu_Usuario.jsp" />
        <div class="wrapper d-flex align-items-stretch">
            <nav id="sidebar">
                <div class="custom-menu">
                    <button type="button" id="sidebarCollapse" class="btn btn-primary">
                    </button>
                </div>
                <div class="img bg-wrap text-center py-4" style="background-image: url(images/bg_1.jpg);">
                    <a href="/JavaWebIntroducao/ValidarForm?acao=meusdados&idusuario=<% out.print(ac.getIdusuario()); %>"></a>
                    <div class="user-logo">
                        <div class="img" style="background-image: url(img/login3.png);"></div>
                        <h4 style="color: white; text-align: center"  ><% out.print(ac.getNome()); %>!</h4>
                    </div>
                </div>
                <ul class="list-unstyled components mb-5">
                    <li class="active">
                        <a href="/JavaWebIntroducao/ValidarForm?acao=meusdados&idusuario=<% out.print(ac.getIdusuario()); %>"><span class="fa fa-home mr-3"></span> Meus Dados</a>
                    </li>
                    <li>
                        <a href="/JavaWebIntroducao/ValidarRegistroVacina?acao=ListarVacina&idusuario=<% out.print(ac.getIdusuario());%>"><span class="fa fa-download mr-3 notif">
                                <small class="d-flex align-items-center justify-content-center">5</small></span> Minhas Vacinas</a>
                    </li>

                    <li>
                        <a href="/JavaWebIntroducao/ValidarLogin?acao=deslogar"><span class="fa fa-sign-out mr-3"></span> Sign Out</a>
                    </li>
                </ul>
            </nav>
        </div>
        <div id="preloader"></div>
        <jsp:include page="newscripts.jsp" />
    </body>
</html>
