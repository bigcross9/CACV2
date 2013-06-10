<%-- 
    Document   : test
    Created on : 23/03/2013, 01:07:05 AM
    Author     : Jonathan
--%>
<%@page import="java.sql.*"%> 
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        ResultSet rs2 = (ResultSet) request.getAttribute("hm");
       while (rs2.next()){
                out.println("<p>reulst " + rs2.getString(2) + " </p>");
        }
        Connection conn = null;
       try{
        DriverManager.registerDriver (new com.mysql.jdbc.Driver()); 
     conn = DriverManager.getConnection
          ("jdbc:mysql://127.6.83.1:3306/cacv2", "adminXQgB8FE", "1R4xZf53N8YU");
         // driver@machineName:port:SID           ,  userid,  password
    
    /*Statement stmt = conn.createStatement();
    ResultSet rset = 
              stmt.executeQuery("select * from world.city");
    while (rset.next())
         System.out.println (rset.getString(1));   // Print col 1
    stmt.close();*/
     }catch(SQLException sql){
        sql.printStackTrace();
    }
    //SqlConnection conn2 = new SqlConnection();
    Statement stm = conn.createStatement();
  try{
     ResultSet rs = stm.executeQuery("select * from cacv2.tabletest");
     while(rs.next()){
         out.println("<p>"+rs.getInt(1)+"</p>");
     }
    }catch(SQLException sql){
        sql.printStackTrace();
    }
        
        %>
        <h1>Hello World!</h1>
        <p>from servlet </p>
    </body>
</html>
