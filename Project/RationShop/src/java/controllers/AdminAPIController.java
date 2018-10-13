/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
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
    
    @RequestMapping(value="/commonlogin",method = RequestMethod.GET)
    @ResponseBody
    public String AdminLogin(
                    @RequestParam("username") String username,
                    @RequestParam("password") String password
                    ) throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection) DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/rationdb","root","");
        String sql="select * from login where username='"+username+"' and password ='"+password+"'";
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery(sql);
        if(rs.next()){
            return rs.getString("Role");
        }else{
            return "fail";
        }
        
        
       
        
        
    }
    @RequestMapping(value="/additem",method = RequestMethod.GET)
    @ResponseBody
    public String insertdata(
            @RequestParam("itemname") String itmName,
            @RequestParam("itemdesc") String desc,
            @RequestParam("itemprice") int price,
            @RequestParam("itemquantity") int quty) 
            throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection) DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/rationdb","root","");
        Statement st=con.createStatement();
        String sql="INSERT INTO `item` (`ItemName`, `ItemDescription`, `IteamPrice`, `ItemQuantity`, `ItemStatus`) VALUES ('"+itmName+"', '"+desc+"', "+price+", "+quty+", '1');";
        int  i= st.executeUpdate(sql);
        if(i>0){
            return "1";
        }else{
            return "2";
        }
    }
            
    
     @RequestMapping(value="/shopowner_reg",method = RequestMethod.GET)
     @ResponseBody
     public String addsuppliers(@RequestParam("name") String name,
            @RequestParam("password") String password,
            @RequestParam("address") String address,
            @RequestParam("dob") String dob,
            @RequestParam("email") String email,
            @RequestParam("contactno") String contactno,
            @RequestParam("gender") String gender,
            @RequestParam("ardNo") String ardno,
            @RequestParam("location")String location,
            @RequestParam("pincode")String pincode) throws ClassNotFoundException, SQLException{
         Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection) DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/rationdb","root","");
        Statement st=con.createStatement();
        String sql="INSERT INTO `shopownerregistration` (ARDNumber,Location,`Password`, `Name`, `Address`, `DateOfBirth`, `Gender`, `Contact`, `Email`,`PinCode`) VALUES ( '"+ardno+"','"+location+"','"+password+"', '"+name+"', '"+address+"', '"+dob+"', '"+gender+"', '"+contactno+"', '"+email+"','"+pincode+"');";
        String sql1="insert into login(UserName,Password,Role)values('"+email+"','"+password+"','3')";
        int j=  st.executeUpdate(sql1);
        int  i= st.executeUpdate(sql);
        if(i>0){
            return "1";
        }else{
            return "0";
        }
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
         @RequestMapping(value = "/addsuppliers", method = RequestMethod.GET)
    @ResponseBody
    public String supplier(@RequestParam("name") String name,
            @RequestParam("address") String address,
            @RequestParam("email") String email,
            @RequestParam("contact") String contact,
            @RequestParam("state") String state
    )
            throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = (Connection) DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/rationdb", "root", "");
        Statement st = con.createStatement();
        String sql = "insert into `supplier` ( `suppliername`, `supplieraddress`, `contact`, `emailid`,`supplierstate`) VALUES ( '" + name + "', '" + address + "','" + contact + "', '" + email + "', '" + state + "');";

        int j = st.executeUpdate(sql);
       // int i = st.executeUpdate(sql);
        if (j > 0) {
            return "1";
        } else {
            return "0";
        }
    }
}

