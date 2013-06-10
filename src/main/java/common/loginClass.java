/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package common;

import javax.jms.Session;
import com.mysql.jdbc.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author jonathan
 */
public class loginClass {
    public static boolean login(String user, String password){
        boolean validUser=false;
        DBConnection conn = new DBConnection();
        PreparedStatement stmt = null;
        try {
            if(user == null || password == null){
                return false;
            }else{
                stmt = (PreparedStatement) conn.Open().prepareStatement("Select * from Loggin where nom_usuario=? and pwd=?");
                stmt.setString(1, user);
                stmt.setString(2, password);
               ResultSet rs = stmt.executeQuery();
                if(rs.next()){
                    validUser=true;
                }else{
                    validUser=false;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(loginClass.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return validUser;
    }
}
