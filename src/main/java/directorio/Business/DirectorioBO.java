/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package directorio.Business;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import common.DBConnection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author jonathan
 */
@WebServlet(name = "DirectorioBO", urlPatterns = {"/DirectorioBO"})
public class DirectorioBO extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public ArrayList[] getUsuarios() throws SQLException{
        DBConnection con = new DBConnection();
       ArrayList[]vusuarios=null;
        ArrayList usuarios=null;
       HashMap hm_usuarios=null;
        ResultSet rs = null;
        try {
            Connection conn = con.Open();
            java.sql.Statement stmt = conn.createStatement();   
            rs = stmt.executeQuery("select * from Usuarios");
            
            int i=0;
            int totalRows=0;
            while(rs.next()){
                totalRows++;
            }
           vusuarios = new ArrayList[totalRows];
            
            usuarios = new ArrayList();
            hm_usuarios = new HashMap();
           rs.first();
            while(rs.next()){
                if(i==0){
                    rs.first();
                }
                hm_usuarios.put("nombre", rs.getString(2));
                hm_usuarios.put("apellidos", rs.getString(3));
                hm_usuarios.put("calle", rs.getString(4));
                hm_usuarios.put("colonia", rs.getString(5));
                hm_usuarios.put("cp", rs.getString(6));
                hm_usuarios.put("estado", rs.getString(7));
                hm_usuarios.put("ciudad", rs.getString(8));
                hm_usuarios.put("tel_casa", rs.getInt(9));
                hm_usuarios.put("tel_trabajo", rs.getInt(10));
                hm_usuarios.put("celular", rs.getInt(11));
                usuarios.add(hm_usuarios);
                vusuarios[i] = usuarios;
                hm_usuarios = new HashMap();
              //  usuarios[i]=rs.getString(1);
                 i++;
            }
            conn.close();
            con.Close();        
        } catch (SQLException ex) {
           
            Logger.getLogger(DirectorioBO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return vusuarios;
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
