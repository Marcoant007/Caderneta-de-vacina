
<%@page import="br.com.senaces.bean.AcessoBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="head.jsp"/> <!--INCLUIDO TUDO QUE ESTA NO HEAD -->
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!--  <meta http-equiv="refresh" content="5; url=index.jsp">  refresh = depois de 5 segundos ele vai abrir o formulario.jsp  -->
        <title>Dados do usuario</title>

        <script>
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="assets/slicknav/jquery.slicknav.min.js"></script>
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


        <div class="container">
            <h1>Usuarios Cadastrados</h1>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>CPF</th>
                        <th>Nascimento</th>
                        <th>Nome da Mãe</th>
                        <th colspan="2" id="colunaAcao">Ação</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${usuarios}" var="u" >

                        <tr>
                            <td>${u.idusuario}</td>
                            <td>${u.nome}</td>
                            <td>${u.cpf}</td>
                            <td>${u.nascimento}</td>
                            <td>${u.mae}</td>   <!--nome do projeto + Servlet + acao=editar & concatena o idusuario ai dps puxa o u.idusuario -->
                            <td class="edit"> <a href="/JavaWebIntroducao/ValidarForm?acao=editar&idusuario=${u.idusuario}">
                                    <img src="img/writing.png" alt="" data-toggle="tooltip" title="Editar" />  
                                </a>    
                            </td>
                                 <!--nome do projeto + Servlet + acao=excluir & concatena o idusuario ai dps puxa o u.idusuario -->
                            <td class="delete"> <a href="/JavaWebIntroducao/ValidarForm?acao=excluir&idusuario=${u.idusuario}&idendereco=${u.idendereco}">
                                    <img src="img/delete.png" alt="" data-toggle="tooltip" title="Excluir" />  
                                </a>    
                            </td>
                        </tr>
                    </c:forEach>   
                </tbody>

            </table>



        </div>
        <jsp:include page="newscripts.jsp" />

    </body>
</html>
