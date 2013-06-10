<%-- 
    Document   : Peticiones
    Created on : 2/04/2013, 08:50:04 PM
    Author     : jonathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <script src="jquery-1.9.1.js" type="text/javascript"></script>
        <script type="text/javascript" src="jquery.tablesorter.js"></script> 
        <script src="js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Peticiones</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="css/bootstrap-responsive.css" rel="stylesheet" >
        <script>
            function petFnc(){
                $(function peticionesFnc(){
                    $("#includedContent2").load("/crearPeticiones.jsp"); 
                  });
                          
            }
        </script>
            
    </head>
    <body>
        
        <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        
                            <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                              <h3>Pagina Restringida</h3>
                            </div>
                            <div class="modal-body">
                              <p>Porfavor ingrese a la pagina de login y entre con su usuario y contraseña</p>
                  
                            </div>
                            <div class="modal-footer">
                              <a href="/home.jsp" class="btn">Regresar a Home</a>
                              <a href="/login.jsp" class="btn btn-primary">Login</a>
                            </div>
                          </div>
       </div>
        
        
        <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="./index.html">Comite de Acción Ciudadana y Vecinal</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="">
               <a href="/home.jsp">Home</a>
              </li>
              <li class="">
               <a href="/DirectorioAct">Directorio</a>
              </li>
              <li class="">
                <a href="/PeticionesAct">Peticiones</a>
              </li>
              <li>
                  <a href="/LoginServ">Login</a>
              </li>
            </ul>
          </div>
        </div>
            </div>
        </div>
        <br/>
        <br/>
        <div class="jumbotron masthead">
            <div class="container">
            
                <h1 class="text-center">Peticiones</h1>
            </div>
        </div>
        <br/>
        
       
        <div class="container">
            <div class="row-fluid">
                <div class="span4">
                    <ul class="nav nav-list">
                        <li class="nav-header">Opciones</li>
                        
                        
                        <% 
            HttpSession sess =request.getSession(true);
            if(sess.getAttribute("isValid")!=null){
                boolean isValid = (Boolean)sess.getAttribute("isValid");
                if(isValid==true){
                    %>
                    
                     <li ><a  href="#crear" onclick="crearFnc();">Crear peticion</a>
                        <li ><a href="#misPeticiones" onClick="petFnc();">Mis Peticiones</a></li> 
                <%
                    }else{
                    
                    %>
                    
                    <li ><a data-toggle="modal" data-target="#myModal" href="#crear" >Crear peticion</a>
                        <li ><a data-toggle="modal" data-target="#myModal"  href="#misPeticiones" >Mis Peticiones</a></li> 
                    
                    <%
                }}else{
                %>
                     <li ><a data-toggle="modal" data-target="#myModal" href="#crear" ">Crear peticion</a>
                        <li ><a data-toggle="modal" data-target="#myModal"  href="#misPeticiones" >Mis Peticiones</a></li> 
                
                <%
            }
        %>
                        
                        
                          
                    </ul>
                </div>
                <div class="span8">
                    
                    
                    
                    
                    
                    <div id="includedContent1"></div>
                    <div id="includedContent2"></div>
                </div>
            </div>
        </div>
        
    </body>
</html>
