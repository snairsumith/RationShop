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
@RequestMapping("/shopownerapi")
public class ShopownerAPIController {
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
     @RequestMapping(value="/allowdedquota",method = RequestMethod.GET)
     @ResponseBody
     public String alloted(){
         return "How";
     }
     @RequestMapping(value="/shopsalesreport",method = RequestMethod.GET)
     @ResponseBody
     public String report(){
         return "Are";
     }
     @RequestMapping(value="/customerwisereport",method = RequestMethod.GET)
     @ResponseBody
     public String customer(){
         return "you";
     }
      @RequestMapping(value="/shopownernotification",method = RequestMethod.GET)
     @ResponseBody
     public String notification(){
         return "you";
     }
      @RequestMapping(value="/shopsales",method = RequestMethod.GET)
     @ResponseBody
     public String sales(){
         return "you";
     }
      @RequestMapping(value="/shopstockreport",method = RequestMethod.GET)
     @ResponseBody
     public String stock(){
         return "you";
     }
      @RequestMapping(value="/shopownerfeedback",method = RequestMethod.GET)
     @ResponseBody
     public String feedback(){
         return "you";
     }
      @RequestMapping(value="/customerverification",method = RequestMethod.GET)
     @ResponseBody
     public String verification(){
         return "you";
     }
      @RequestMapping(value="/shopownermyprofile",method = RequestMethod.GET)
     @ResponseBody
     public String myprofile(){
         return "you";
     }
     @RequestMapping(value="/shopcustomerlist",method = RequestMethod.GET)
     @ResponseBody
     public String list(){
         return "you";
     }
     @RequestMapping(value="/shopstockupdation",method = RequestMethod.GET)
     @ResponseBody
     public String updation(){
         return "you";
     }
}