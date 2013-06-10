<%-- 
    Document   : directorio
    Created on : 29/03/2013, 09:56:00 PM
    Author     : jonathan
--%>

<%@page import="java.util.ListIterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head >
        <script src="jquery-1.9.1.js" type="text/javascript"></script>
        <script type="text/javascript" src="jquery.tablesorter.js"></script> 
        <script src="js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Directorio</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="css/bootstrap-responsive.css" rel="stylesheet" >
        <script> 
                $(document).ready(function() 
                    { 
                        $("#tdirectorio").tablesorter(); 
                    } 
                ); 
        </script>
    </head>
    <body data-spy="scroll" data-target=".bs-docs-sidebar">
        <% 
           // ArrayList[] usuarios = (ArrayList[]) request.getAttribute("usuarios");
           // HashMap hm_usuarios=new HashMap();
           
          //  ListIterator iter = usuarios.listIterator();
          //  while(iter.hasNext()){
           //     hm_usuarios = (HashMap) iter.next();
            //   out.println("<p>"+hm_usuarios.get("nombre")+"</p>");
           // }
                    
                    
           // for(int i=0; i<usuarios.length; i++){
            //    hm_usuarios = (HashMap) usuarios[0].get(i);
                
            //    out.println();
               
           // }
        
        %>
        <br/><br/>
        
                
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
              <li class="active">
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
            
        
        <div class="jumbotron masthead">  
            <div class="container">
                <h1 class="text-center">Directorio</h1>
            </div>
        </div>
        
            <div class="container-fluid">
              
          <table id="tdirectorio" class="table table-hover">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Calle</th>
                        <th>Colonia</th>
                        <th>C.P.</th>
                        <th>estado</th>
                        <th>ciudad</th>
                        <th>Tel. De Casa</th>
                        <th>Tel. De Trabajo</th>
                        <th>Celular</th>
                    </tr>
                </thead>
                <tbody>
                   <% 
                        ArrayList[] usuarios = (ArrayList[]) request.getAttribute("usuarios");
                        HashMap hm_usuarios=new HashMap(); 
                        for(int i=0; i<usuarios.length; i++){
                            hm_usuarios = (HashMap) usuarios[0].get(i);
                   %>
                    <tr>
                        <td><%= hm_usuarios.get("nombre") %></td>
                        <td><%= hm_usuarios.get("apellidos") %></td>
                        <td><%= hm_usuarios.get("calle") %></td>
                        <td><%= hm_usuarios.get("colonia") %></td>
                        <td><%= hm_usuarios.get("cp") %></td>
                        <td><%= hm_usuarios.get("estado") %></td>
                        <td><%= hm_usuarios.get("ciudad") %></td>
                        <td><%= hm_usuarios.get("tel_casa") %></td>
                        <td><%= hm_usuarios.get("tel_trabajo") %></td>
                        <td><%= hm_usuarios.get("celular") %></td>
                    </tr>
                    <% 
                        }
                    %>
                </tbody>
            </table>
                
            </div>
        
    </body>
</html>
