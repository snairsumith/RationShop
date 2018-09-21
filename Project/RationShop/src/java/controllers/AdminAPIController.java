/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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

/**
 *
 * @author MinusBugspc1
 */
@Controller
@RequestMapping("/adminapi")
public class AdminAPIController {
    @RequestMapping(value="/additem",method = RequestMethod.GET)
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
            
     public String additem(){
         return "HI";
     }
      @RequestMapping(value="/addsuppliers",method = RequestMethod.GET)
      @ResponseBody
     public String addsuppliers(){
         return "H";
     }
     @RequestMapping(value="/allowdedquota",method = RequestMethod.GET)
     @ResponseBody
     public String allowdedquota(){
         return "kj";
     }
      @RequestMapping(value="/myprofile",method = RequestMethod.GET)
      @ResponseBody
     public String myprofile(){
         return "jh";
     }
     @RequestMapping(value="/notifications",method = RequestMethod.GET)
     @ResponseBody
     public String notifications(){
         return "HaaI";
     }
      @RequestMapping(value="/purchaseentry",method = RequestMethod.GET)
      @ResponseBody
     public String purchaseentry(){
         return "Hoo";
     }
     @RequestMapping(value="/quotasetting",method = RequestMethod.GET)
     @ResponseBody
     public String quotasetting(){
         return "kjl";
     }
      @RequestMapping(value="/register",method = RequestMethod.GET)
      @ResponseBody
     public String register(){
         return "jhl";
     }
     @RequestMapping(value="/stockassign",method = RequestMethod.GET)
     @ResponseBody
     public String stockassign(){
         return "jhm";
     }
}
