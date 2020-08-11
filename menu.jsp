<%@page import="br.com.senaces.bean.AcessoBean"%>
<%
    HttpSession sessao = request.getSession();
    AcessoBean acesso = new AcessoBean();
    acesso = (AcessoBean) sessao.getAttribute("usuario");

%>

<div class="container-fluid" style="background:#0099ff">
    <jsp:include page="head.jsp" />
    <nav class="menu-navigation-dark">
        <a href="index.jsp" style="text-decoration: none;"><i class="fa fa-home"></i><span>Home</span></a>
        <a href="vacinaindex.jsp" style="text-decoration: none;" ><i class="fa fa-plus-square"></i><span>Vacinas</span></a>
        <a href="Localindex.jsp" style="text-decoration: none;"><i class="fa  fa-hospital-o"></i><span>Locais de Vacina</span></a>
        <a href="Parceirosindex.jsp" style="text-decoration: none;"><i class="fa  fa-users"></i><span>Parceiros</span></a>
        <a href="Sobre.jsp" style="text-decoration: none;"><i class="fa  fa-users"></i><span>Sobre Nós</span></a>
        <a href="formulario.jsp" style="text-decoration: none;"><i class="fa  fa-clipboard"></i><span>Cadastre-se</span></a>
        <a href="login.jsp" style="text-decoration: none;"><i class="fa  fa-user"></i><span>Login</span></a>
        
    </nav>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="assets/slicknav/jquery.slicknav.min.js"></script>

<script>

    $(function () {

        var menu = $('.menu-navigation-dark');

        menu.slicknav();

        // Mark the clicked item as selected

        menu.on('click', 'a', function () {
            var a = $(this);

            a.siblings().removeClass('selected');
            a.addClass('selected');
        });
    });

</script>