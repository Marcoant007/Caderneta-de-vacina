<%@page import="br.com.senaces.bean.AcessoBean"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Caderneta Online</title>
        <jsp:include page="head.jsp" />
        <%
             if (session.getAttribute("usuario") == null) {
                 request.getRequestDispatcher("index.jsp").forward(request, response);
             }
            
             AcessoBean acesso = new AcessoBean();
             acesso = (AcessoBean) session.getAttribute("usuario");
        %>
    </head>
        <body>
       
        <jsp:include page="Menu_Usuario.jsp" />
             
       <!-- slider_area_start -->
        <div class="slider_area">
            <div class="slider_active owl-carousel">
                <div class="single_slider  d-flex align-items-center slider_bg_2">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="slider_text ">
                                    <h3> <span>Caderneta  <br> Online</span> <br>
                                         </h3>
                                    <p>Sem sair de casa verifique quais a vacinas que foram <br>
                                    tomadas e quais serão as proximas</p>
                                    <a href="queroacessar.jsp" class="boxed-btn3">Minha Caderneta</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="single_slider  d-flex align-items-center slider_bg_1">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="slider_text ">
                                   
                                       <h3> <span>Caderneta  <br> Online</span> <br>
                                           <p>Verifique quais as vacinas disponiveis <br> para sua faixa etária</p>
                                    <a href="vacinaindex.jsp" class="boxed-btn3">Verificar Vacinas</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               
            </div>
        </div>
        <!-- slider_area_end -->

        <!-- service_area_start -->
        <div class="service_area">
            <div class="container p-0">
                <div class="row no-gutters">
                    <div class="col-xl-4 col-md-4">
                        <div class="single_service">
                            <div class="icon">
                                <i class="flaticon-electrocardiogram"></i>
                            </div>
                            <h3>Locais de Vacina</h3>
                            <p>Saiba em quais locais estará disponivel sua vacina</p>
                            <a href="Localindex.jsp" class="boxed-btn3-white">Me mostre os Locais</a>
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-4">
                        <div class="single_service">
                            <div class="icon">
                                <i class="flaticon-emergency-call"></i>
                            </div>
                            <h3>Vacinas</h3>
                            <p>Verifique a Lista de vacinas disponiveis para sua faixa etária</p>
                            <a href="#" class="boxed-btn3-white">Verificar Vacinas</a>
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-4">
                        <div class="single_service">
                            <div class="icon">
                                <i class="flaticon-first-aid-kit"></i>
                            </div>
                            <h3>Vacinas</h3>
                            <p>Verifique a Lista de vacinas disponiveis para sua faixa etária</p>
                            <a href="vacinaindex.jsp" class="boxed-btn3-white">Verificar Vacinas</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- service_area_end -->

        <!-- welcome_docmed_area_start -->
        
        <!-- welcome_docmed_area_end -->

        <!-- offers_area_start -->
        <div class="our_department_area">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="section_title text-center mb-55">
                            <h3>Ultimas Noticias </h3>
                            
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-4 col-md-6 col-lg-4">
                        <div class="single_department">
                            <div class="department_thumb">
                                <img src="img/110780666-coronavirusmedium_1.jpg" alt="">
                            </div>
                            <div class="department_content">
                                <h3><a  target="blank" href="https://coronavirus.saude.gov.br/">CORONAVIRUS</a></h3>
                                <p>Fique atento aos sintomas e como se prevenir</p>
                                <a target="blank" href="https://coronavirus.saude.gov.br/" class="learn_more">Leia Mais</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-6 col-lg-4">
                        <div class="single_department">
                            <div class="department_thumb">
                                <img src="img/Campanha de vacinação contra gripe começa na segunda-feira (23)_1.jpg"  alt="">
                            </div>
                            <div class="department_content">
                                <h3><a target="blank" href="https://saude.es.gov.br/Not%C3%ADcia/22a-campanha-nacional-de-vacinacao-contra-a-influenza-comeca-dia-23-de-marco">Em Alta </a></h3>
                                <p>22ª Campanha Nacional de Vacinação contra a Influenza </p>
                                <a target="blank" href="https://saude.es.gov.br/Not%C3%ADcia/22a-campanha-nacional-de-vacinacao-contra-a-influenza-comeca-dia-23-de-marco" class="learn_more">Leia Mais</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-6 col-lg-4">
                        <div class="single_department">
                            <div class="department_thumb">
                                <img src="img/department/3.png" alt="">
                            </div>
                            <div class="department_content">
                                <h3><a href="https://oglobo.globo.com/sociedade/saude/saude-e-inovacao/qual-origem-das-doencas-raras-24294343">Qual a origem das doenças raras?</a></h3>
                                <p>Doenças raras e seus componentes genéticos</p>
                                <a href="https://oglobo.globo.com/sociedade/saude/saude-e-inovacao/qual-origem-das-doencas-raras-24294343" class="learn_more">Leia Mais</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-6 col-lg-4">
                        <div class="single_department">
                            <div class="department_thumb">
                                <img src="img/department/4.png" alt="">
                            </div>
                            <div class="department_content">
                                <h3><a href="#">Diagnostic Test</a></h3>
                                <p>Esteem spirit temper too say adieus who direct esteem.</p>
                                <a href="#" class="learn_more">Learn More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-6 col-lg-4">
                        <div class="single_department">
                            <div class="department_thumb">
                                <img src="img/department/5.png" alt="">
                            </div>
                            <div class="department_content">
                                <h3><a href="#">Skin Surgery</a></h3>
                                <p>Esteem spirit temper too say adieus who direct esteem.</p>
                                <a href="#" class="learn_more">Learn More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-6 col-lg-4">
                        <div class="single_department">
                            <div class="department_thumb">
                                <img src="img/department/6.png" alt="">
                            </div>
                            <div class="department_content">
                                <h3><a href="#">Surgery Service</a></h3>
                                <p>Esteem spirit temper too say adieus who direct esteem.</p>
                                <a href="#" class="learn_more">Learn More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- offers_area_end -->

        <!-- testmonial_area_start -->
        <div class="testmonial_area">
            <div class="testmonial_active owl-carousel">
               
                <div class="single-testmonial testmonial_bg_2 overlay2">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-10 offset-xl-1">
                                <div class="testmonial_info text-center">
                                    <div class="quote">
                                        <i class="flaticon-straight-quotes"></i>
                                    </div>
                                    <p>A alimentação do idoso deve ser equilibrada para suprir a carência de nutrientes, que é comum nessa etapa da vida. <br>
                                        Nas refeições, procure proporcionar verduras, legumes, frutas e sucos naturais. Além disso, tenha atenção ao consumo de grãos, fibras, derivados do leite e água. </p>
                                    <div class="testmonial_author">
                                        <h4>ANS Agência Nascional de Saúde</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="single-testmonial testmonial_bg_1 overlay2">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-10 offset-xl-1">
                                <div class="testmonial_info text-center">
                                    <div class="quote">
                                        <i class="flaticon-straight-quotes"></i>
                                    </div>
                                    <p> Cuidados com a saúde devem ser diários. <br>
                                        No período da gravidez, essa atenção com a saúde deve ser redobrada.  <br>
                                        A gestante deve ser acompanhada em consultas de pré-natal; realizar todos os exames recomendados pelo médico; não consumir bebidas alcoólicas ou qualquer tipo de droga; e não usar medicamentos sem orientação médica.  <br>
                                        
                                        </p>
                                    <div class="testmonial_author">
                                        <h4>ANS Agência Nascional de Saúde</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- testmonial_area_end -->



        <!-- expert_doctors_area_start -->
        <div class="expert_doctors_area">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="doctors_title mb-55">
                            <h3>Nossa equipe</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-12">
                        <div class="expert_active owl-carousel">
                            <div class="single_expert">
                                <div class="expert_thumb">
                                    <img src="img/experts/1.png" alt="">
                                </div>
                                <div class="experts_name text-center">
                                    <h3>Dr.Victor</h3>
                                    <span>Neurologista</span>
                                </div>
                            </div>
                            <div class="single_expert">
                                <div class="expert_thumb">
                                    <img src="img/experts/2.png" alt="">
                                </div>
                                <div class="experts_name text-center">
                                    <h3>Dr.Miguel</h3>
                                    <span>Cardiologista</span>
                                </div>
                            </div>
                            <div class="single_expert">
                                <div class="expert_thumb">
                                    <img src="img/experts/3.png" alt="">
                                </div>
                                <div class="experts_name text-center">
                                    <h3>Dr.Araujo</h3>
                                    <span>Clinico Geral</span>
                                </div>
                            </div>
                            <div class="single_expert">
                                <div class="expert_thumb">
                                    <img src="img/experts/4.png" alt="">
                                </div>
                                <div class="experts_name text-center">
                                    <h3>Dr.Grey</h3>
                                    <span>Infectologista</span>
                                </div>
                            </div>
                           
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- expert_doctors_area_end -->

        <jsp:include page="footer.jsp" />
        <div id="preloader"></div>
        <!-- form itself end -->

        <jsp:include page="newscripts.jsp" />
    </body>
</html>
