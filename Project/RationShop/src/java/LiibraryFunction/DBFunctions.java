/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LiibraryFunction;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author minusbug
 */
public class DBFunctions {
    
    public ResultSet SelectQuery(String sql ){
        ResultSet rs = null;
        try{
         Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection) DriverManager.getConnection(  
            "jdbc:mysql://182.50.133.90:3306/student_db","student_root","student_pwd");
        Statement st=con.createStatement();
        rs=st.executeQuery(sql);
        
        }catch(Exception ex){
            
        }
        return  rs;
    }
    
    public int InsetQuery(String sql)throws SQLException {
        int returnInt = 0;
        try{
             Class.forName("com.mysql.jdbc.Driver");
       Connection con=(Connection) DriverManager.getConnection(  
            "jdbc:mysql://182.50.133.90:3306/student_db","student_root","student_pwd");
        Statement st=con.createStatement();
            System.out.println("LiibraryFunction.DBFunctions.InsetQuery()"+sql);
        returnInt=st.executeUpdate(sql);
        }catch(Exception ex){
            System.out.print(ex.getMessage());
        }
       return returnInt;
        
    }
}
