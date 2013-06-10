/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package common;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jonathan
 */
public class DBConnection {
    private final static String url = "jdbc:mysql://127.6.83.1:3306/cacv2";
    private final static String user = "adminXQgB8FE";
    private final static String pwd = "1R4xZf53N8YU";
    private Connection con = null;
    public Connection Open() throws SQLException{
         Connection conn = null;
       try{
        DriverManager.registerDriver (new com.mysql.jdbc.Driver()); 
     con = (Connection) DriverManager.getConnection
          (url, user, pwd);
         // driver@machineName:port:SID           ,  userid,  password
    
    /*Statement stmt = conn.createStatement();
    ResultSet rset = 
              stmt.executeQuery("select * from world.city");
    while (rset.next())
         System.out.println (rset.getString(1));   // Print col 1
    stmt.close();*/
     }catch(SQLException sql){
        sql.printStackTrace();
        Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, sql);
    }
        return con;
    }
    
    public void Close(){
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
