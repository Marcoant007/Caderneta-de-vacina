<%-- 
    Document   : queroacessar
    Created on : 09/03/2020, 16:47:54
    Author     : sala302b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="head.jsp" />
        <style>
            
            body{
                
                width: auto;
	
	background: url(img/2986920.png) no-repeat , fixed ;
	
	background-size:100% 100%;
	
	background-attachment: fixed;
            }
            
           
            
            
        </style>
        
        
    </head>
    <body>
          <jsp:include page="menu.jsp"/>
        
        
		<div class="container"  >
			
                    <div class="welcome_docmed_area" >
                        <h1 style="color: whitesmoke ; text-shadow: 1px 1px 1px #000; text-align: center;" > Para acessar a caderneta de vacina é necessário ter cadastro <br>
                        no nosso sistema </h1>
                        <br>
                        <br>
                        <a style="margin-left: 28%;  " href="formulario.jsp" class="boxed-btn3">Quero me Cadastrar </a>
                <a href="login.jsp" class="boxed-btn3">Já possuo Cadastro</a>
            </div>
        </div>
			
		
	
    <div id="preloader"></div>
	
    <jsp:include page="newscripts.jsp" />
       
        
    </body>
</html>
