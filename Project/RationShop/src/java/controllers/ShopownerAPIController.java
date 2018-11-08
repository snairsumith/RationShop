package controllers;

import LiibraryFunction.DBFunctions;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import models.AllowedQuotaModel;
import models.SupplierModel;
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
    
    
    @RequestMapping(value = "/getallowedquota", method = RequestMethod.GET)
    public @ResponseBody
    List<AllowedQuotaModel> getAllowQota(
    @RequestParam("shopusername") String shopusername,
     @RequestParam("month") int month    ) throws SQLException {
        List<AllowedQuotaModel> quota = new ArrayList<AllowedQuotaModel>();
       
        String sql = "select stockassign.*,item.ItemName from stockassign inner join item on stockassign.ItemId=item.ItemId where stockassign.shopownerId='"+shopusername+"'and month(month)="+month;
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

            quota.add(new AllowedQuotaModel(rs.getString("ItemName"), rs.getInt("quota"), rs.getFloat("amount")));
        }

        return quota;

    }

     
}