<%-- 
    Document   : login
    Created on : 6/04/2013, 06:02:08 PM
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
        <title>Login Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="css/bootstrap-responsive.css" rel="stylesheet" >
    </head>
    <body>
        
        <div id="myModal1" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        
                            <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                              <h3>Usuario o Contraseña incorrectos</h3>
                            </div>
                            <div class="modal-body">
                              <p>Usuario o Contraseña no validos, por favor verifique o contacte al administrador</p>
                  
                            </div>
                            <div class="modal-footer">
                              <a href="/home.jsp" class="btn">Regresar a Home</a>
                              <button type="button" data-dismiss="modal" aria-hidden="true" class="btn btn-primary">Aceptar</button>
                            </div>
                          </div>
       </div>
        <div id="myModal2" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        
                            <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                              <h3>Bienvenido</h3>
                            </div>
                            <div class="modal-body">
                                <p>Ahora ya puedes acceder a tus peticiones o levantar nuevas peticiones</p>
                  
                            </div>
                            <div class="modal-footer">
                              <a href="/home.jsp" class="btn">Regresar a Home</a>
                              <a href="/PeticionesAct" class="btn btn-primary">Peticiones</a>
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
                  <a href="/login.jsp">Login</a>
              </li>
            </ul>
          </div>
        </div>
            </div>
        </div>
        <br/>
        <br/>
        <h1 class="text-center">Login Page</h1>
        <br/>
        <br/>
        
        
        <%
             HttpSession sess =request.getSession(true);
            if(sess.getAttribute("isValid")!=null){
                boolean isValid = (Boolean)sess.getAttribute("isValid");
                if(isValid==true){
                    out.println("<script>$('#myModal2').modal('show');</script>");
                }else{
                    out.println("<script>$('#myModal1').modal('show');</script>");
                }
                      
            }
            %>
        <div class="container-fluid">
            <div class="span4"></div>
            <div class="span8">
                <form class="form-horizontal" action="/LoginServ" method="POST">
                    <div class="control-group">
                        <label class="control-label" for="inputUser">Usuario</label>
                        <div class="controls">
                            <input type="text" id="inputUser" name="usuario" placeholder="User">
                        </div>
                    </div>
                <div class="control-group">
                    <label class="control-label" for="inputPassword">Contraseña</label>
                    <div class="controls">
                      <input type="password" id="inputPassword" name="pwd" placeholder="Password">
                      <button type="submit" class="btn"> Ingresar</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
    </body>
</html>
