
package controllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/customerapi")
public class CustomerAPIController {
    @RequestMapping(value="/customermyprofile",method = RequestMethod.GET)
    @ResponseBody
   
    public String insertdata(
            @RequestParam("name") String Name,
            @RequestParam("age") String Age,
            @RequestParam("cls") String clss ) 
            throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection) DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/mydb","root","");
        Statement st=con.createStatement();
        String sql="insert into newtbl(Name,age,cls)values('sumith','"+Age+"','"+clss+"')";
        int  i= st.executeUpdate(sql);
        if(i>0){
            return "sucess";
        }else{
            return "faill";
        }
    }

     public String profile(){
         return "Hai";
     }
     
     @RequestMapping(value="/customernotification",method = RequestMethod.GET)
     @ResponseBody
     public String notification(){
         return "Are";
     }
     @RequestMapping(value="/customerpurchase",method = RequestMethod.GET)
     @ResponseBody
     public String purchase(){
         return "you";
     }
}