<%@page import="br.com.senaces.bean.UsuarioBean"%>
<%@page import="br.com.senaces.bean.AcessoBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    <head>
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
                <div class="img bg-wrap text-center py-4" style="background-image: url(img/Note-3-Blue-1920x1200.jpg);">
                    <a href="/JavaWebIntroducao/ValidarForm?acao=meusdados&idusuario=<% out.print(acs.getIdusuario()); %>"></a>
                    <div class="user-logo">
                        <div class="img" style="background-image: url(img/login3.png);"></div>
                        <h4 style="color: white; text-align: center"  ><%  %>!</h4>
                    </div>
                </div>
                <ul class="list-unstyled components mb-5">
                    <li>
                        <a href="/JavaWebIntroducao/ValidarForm?acao=meusdados&idusuario=<%  %>"><span class="fa fa-home mr-3"></span> Meus Dados</a>
                    </li>
                    <li class="active">
                        <a href="/JavaWebIntroducao/ValidarRegistroVacina?acao=ListarVacina&idusuario=<% %>"><span class="fa fa-download mr-3 notif">
                                <small class="d-flex align-items-center justify-content-center">5</small></span> Minhas Vacinas</a>
                    </li>

                    <li>
                        <a href="/JavaWebIntroducao/ValidarLogin?acao=deslogar"><span class="fa fa-sign-out mr-3"></span> Sign Out</a>
                    </li>
                </ul>
            </nav>


            <div id="content" class="p-4 p-md-5 pt-5" id="before">
                <div class="container">
                    <div class="form-row">
                        <c:forEach items="${registro}" var="registro" >
                            <div class="col-md-12 col-lg-4">

                                <div class=" card-deck">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="card-title">${registro.nome_vacina} </h5>
                                            <ul class="list-group">
                                                <li class="list-group-item " style="background: #0099ff; color: white;">
                                                    <i class="fa fa-archive" style="font-size:20px;"></i>
                                                    <strong>Lote:</strong> ${registro.lote}
                                                </li>
                                                <li class="list-group-item " style="background: #0099ff; color: white;">
                                                    <i class="fa fa-user" style="font-size:20px;"></i>
                                                    <strong> Laboratório:</strong> ${registro.laboratorio}
                                                </li>
                                                <li class="list-group-item " style="background: #0099ff; color: white;">
                                                    <i class="fa fa-map-marker" style="font-size:20px;"></i>
                                                    <strong> Dose: </strong>${registro.dose}
                                                </li>
                                                <li class="list-group-item " style="background: #0099ff; color: white;">
                                                    <i class="fa fa-hospital-o" style="font-size:20px;"></i>
                                                    <strong> Local: </strong>${registro.nome_local}
                                                </li>
                                                <li class="list-group-item " style="background: #0099ff; color: white;">
                                                    <i class="fa fa-user" style="font-size:20px;"></i>
                                                    <strong> Paciente:</strong> ${registro.atendente}
                                                </li>
                                                <li class="list-group-item " style="background: #0099ff; color: white;">
                                                    <i class="fa fa-calendar" style="font-size:20px;"></i>
                                                    <strong> Data: </strong> ${registro.data}
                                                </li>
                                            </ul>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                        </c:forEach>
                    </div>    
                </div>

            </div>
        </div>
        <div id="preloader"></div>
        <jsp:include page="newscripts.jsp" />
    </body>
</html>
