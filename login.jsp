 

<jsp:include page="menu.jsp" flush="true" />

 
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="Marco Antonio">
        <meta name="generator" content="Jekyll v3.8.5">
        <title>Login do Sistema</title>	
        <jsp:include page="head.jsp"/>
       
       
        

</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('img/5c17749ababbc.jpg');">
			<div class="wrap-login100 p-t-190 p-b-30">
                            <form class="login100-form validate-form" action="ValidarLogin" method="POST" >
					<div class="login100-form-avatar">
                                            <img src="img/login3.png" alt="AVATAR">
					</div>

					<span class="login100-form-title p-t-20 p-b-45">
						Seja Bem Vindo 
					</span>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">
						<input type="email" name="txtEmail" id="txtEmail"  placeholder="Email"  class="input100"  required autofocus>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
						<input class="input100" type="password" name="txtSenha" id="txtSenha"  placeholder="Senha" required>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock"></i>
						</span>
					</div>
                                       <input type="hidden" name="acao" value="logar">     
					<div class="container-login100-form-btn p-t-10">
						<button class="login100-form-btn">
							Login
						</button>
					</div>

					<div class="text-center w-full p-t-25 p-b-230">
						<a href="#" class="txt1">
							Esqueceu a senha ?
						</a>
					</div>

					<div class="text-center w-full">
						<a class="txt1" href="formulario.jsp">
							Cadastre-se
							<i class="fa fa-long-arrow-right"></i>						
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
    <div id="preloader"></div>
	
    <jsp:include page="newscripts.jsp" />
	 
        

</body>
</html>
