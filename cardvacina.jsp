
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<html>
    <jsp:include page="MenuLateral.jsp" flush="" />
    <head>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <jsp:include page="head.jsp" />
        
        <style>
           
               
   
               
  
        </style>
        </head>
        <body>
             <% 
          if (session.getAttribute("usuario") == null) {
               request.getRequestDispatcher("index.jsp").forward(request, response);     
              }      
        %>
            
            <h1 style="text-align: center; padding-top: 5%;">Lista de Vacinas</h1>
            <div class="container" style="padding-top: 2%;">
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
            <div id="preloader"></div>
        <jsp:include page="newscripts.jsp" />
       
        </body>
    </html>
