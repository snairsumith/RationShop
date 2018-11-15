/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import LiibraryFunction.DBFunctions;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import models.FeedBackModel;
import models.LocationModel;
import models.PurchaseItemModel;
import models.PurchaseModel;
import models.SupplierModel;
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

    DBFunctions db = new DBFunctions();

    @RequestMapping(value = "/commonlogin", method = RequestMethod.GET)
    @ResponseBody
    public String AdminLogin(
            @RequestParam("username") String username,
            @RequestParam("password") String password
    ) throws ClassNotFoundException, SQLException {

        String sql = "select * from login where username='" + username + "' and password ='" + password + "'";

        ResultSet rs = db.SelectQuery(sql);
        if (rs.next()) {

            return rs.getString("Role");
        } else {
            return "fail";
        }

    }

    @RequestMapping(value = "/additem", method = RequestMethod.GET)
    @ResponseBody
    public String insertdata(
            @RequestParam("itemname") String itmName,
            @RequestParam("itemdesc") String desc
    )
            throws ClassNotFoundException, SQLException {

        String sql = "INSERT INTO `item` (`ItemName`, `ItemDescription`) VALUES ('" + itmName + "', '" + desc + "');";

        int i = db.InsetQuery(sql);
        if (i > 0) {
            return "1";
        } else {
            return "2";
        }
    }

    @RequestMapping(value = "/shopowner_reg", method = RequestMethod.GET)
    @ResponseBody
    public String addsuppliers(@RequestParam("name") String name,
            @RequestParam("password") String password,
            @RequestParam("address") String address,
            @RequestParam("dob") String dob,
            @RequestParam("email") String email,
            @RequestParam("contactno") String contactno,
            @RequestParam("gender") String gender,
            @RequestParam("ardNo") String ardno,
            @RequestParam("location") String location,
            @RequestParam("pincode") String pincode) throws ClassNotFoundException, SQLException {

        String sql = "INSERT INTO `shopownerregistration` (ARDNumber,Locationid,`Password`, `Name`, `Address`, `DateOfBirth`, `Gender`, `Contact`, `Email`,`PinCode`) VALUES ( '" + ardno + "','" + location + "','" + password + "', '" + name + "', '" + address + "', '" + dob + "', '" + gender + "', '" + contactno + "', '" + email + "','" + pincode + "');";
        String sql1 = "insert into login(UserName,Password,Role)values('" + email + "','" + password + "','3')";

        int j = db.InsetQuery(sql1);
        int i = db.InsetQuery(sql);
        if (i > 0) {
            return "1";
        } else {
            return "0";
        }
    }

    @RequestMapping(value = "/qutosettings", method = RequestMethod.GET)
    @ResponseBody
    public int qutosettings(
            @RequestParam("categoryId") int categoryId,
            @RequestParam("itemId") int itemId,
            @RequestParam("itemQuantity") int itemQuantity,
            @RequestParam("itemRate") int itemRate,
            @RequestParam("date") String date) throws SQLException {
        String sql = "INSERT INTO `rationallotment` (`CategoryId`, `ItemId`, `Quantity`, `Rate`, `date`) VALUES (" + categoryId + ", " + itemId + ", " + itemQuantity + ", " + itemRate + ", '" + date + "')";
        int i = db.InsetQuery(sql);
        return i;
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
        String sql = "insert into `supplier` ( `suppliername`, `supplieraddress`, `contact`, `emailid`,`LocationId`) VALUES ( '" + name + "', '" + address + "','" + contact + "', '" + email + "', '" + state + "');";

        int j = st.executeUpdate(sql);
        // int i = st.executeUpdate(sql);
        if (j > 0) {
            return "1";
        } else {
            return "0";
        }
    }

    @RequestMapping(value = "/insertpurchseItem", method = RequestMethod.GET)
    @ResponseBody
    public String insertPurchaseItem(@RequestParam("itemId") int itemId,
            @RequestParam("price") int price,
            @RequestParam("qty") int qty,
            @RequestParam("purchaseid") String purchaseid)
            throws ClassNotFoundException, SQLException {
        String sql = "INSERT INTO `purchaseitem` (`PurchaseId`, `Quantity`, `ItemId`, `Rate`, `TotalAmount`) VALUES ('" + purchaseid + "', " + qty + ", " + itemId + ", " + price + ", " + (qty * price) + ")";
        int j = db.InsetQuery(sql);

        if (j > 0) {
            return "1";
        } else {
            return "0";
        }
    }

    @RequestMapping(value = "/insertpurchse", method = RequestMethod.GET)
    @ResponseBody
    public String insertpurchse(@RequestParam("supplierId") int supplierId,
            @RequestParam("invoicedate") String invoicedate,
            @RequestParam("invoiceduedate") String invoiceduedate,
            @RequestParam("purchaseid") String purchaseid)
            throws ClassNotFoundException, SQLException {
        String sql = "INSERT INTO `purchase` (`PurchaseId`, `SupplierId`, `InvoiceDate`, `DueDate`) VALUES ('" + purchaseid + "', " + supplierId + ", '" + invoicedate + "', '" + invoiceduedate + "')";
        int j = db.InsetQuery(sql);

        if (j > 0) {
            return "1";
        } else {
            return "0";
        }
    }

    @RequestMapping(value = "/getsupplier", method = RequestMethod.GET)
    public @ResponseBody
    List<SupplierModel> getallSupplier(
            @RequestParam("supplierid") int supplierid) throws SQLException {
        List<SupplierModel> sup = new ArrayList<SupplierModel>();

        String sql = "select * from supplier where supplierid=" + supplierid;
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

            sup.add(new SupplierModel(rs.getInt("supplierid"), rs.getString("suppliername"), rs.getString("supplieraddress"), rs.getString("contact")));
        }

        return sup;

    }
    @RequestMapping(value = "/insertstockassing", method = RequestMethod.GET)
    @ResponseBody
    public String InsertStock(
            @RequestParam("shopownerId") String shopownerId,
            @RequestParam("itemId") int itemId,
            @RequestParam("quota") int quota,
            @RequestParam("amount") float amount,
            @RequestParam("month") String month) throws ClassNotFoundException, SQLException {
        String sql = "INSERT INTO `stockassign` (`shopownerId`, `itemId`, `quota`, `amount`, `month`) VALUES ('" + shopownerId + "', '" + itemId + "', '" + quota + "', '" + amount + "', '" + month + "')";
        int j = db.InsetQuery(sql);

        if (j > 0) {
            return "1";
        } else {
            return "0";
        }
    }
    @RequestMapping(value = "/getAllPurchaseItem", method = RequestMethod.GET)
    public @ResponseBody
    List<PurchaseItemModel> getitempur(
            @RequestParam("purchaseid") String purchaseid) throws SQLException {
        List<PurchaseItemModel> pur_item = new ArrayList<PurchaseItemModel>();
       
        String sql = "select purchaseitem.*,item.ItemName from purchaseitem inner join item on item.ItemId=purchaseitem.ItemId where purchaseitem.PurchaseId='"+purchaseid+"'";
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

            pur_item.add(new PurchaseItemModel(rs.getString("ItemName"), rs.getInt("Quantity"), rs.getInt("Rate"), rs.getInt("TotalAmount")));
        }

        return pur_item;

    }



    @RequestMapping(value = "/getAllFeedBackCustomer", method = RequestMethod.GET)
    public @ResponseBody
    List<FeedBackModel> getAllFeedBackCustomer() throws SQLException {
        List<FeedBackModel> feed = new ArrayList<FeedBackModel>();

        String sql = "select feedback.*,customer.CustomerName from feedback inner join customer on feedback.SenderId=customer.CustomerId where Type=3 and ReciverId='admin'";
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

            feed.add(new FeedBackModel(rs.getInt("FeedBackId"), rs.getString("FeedBackTitle"),rs.getString("FeedBackDescription"),rs.getString("ReciverId"),rs.getString("CustomerName"),rs.getString("CreatedOn"),rs.getInt("Type")));
        }

        return feed;

    }
    
    @RequestMapping(value = "/getAllFeedBackShop", method = RequestMethod.GET)
    public @ResponseBody
    List<FeedBackModel> getAllFeedBackShop() throws SQLException {
        List<FeedBackModel> feed = new ArrayList<FeedBackModel>();

        String sql = "select feedback.*,shopownerregistration.Name from feedback inner join shopownerregistration on feedback.SenderId=shopownerregistration.Email where Type=2 and ReciverId='admin'";
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

            feed.add(new FeedBackModel(rs.getInt("FeedBackId"), rs.getString("FeedBackTitle"),rs.getString("FeedBackDescription"),rs.getString("ReciverId"),rs.getString("Name"),rs.getString("CreatedOn"),rs.getInt("Type")));
        }

        return feed;

    }
    
    @RequestMapping(value = "/getPurchaseReport", method = RequestMethod.GET)
    public @ResponseBody
    List<PurchaseModel> getPurchaseReport(
    @RequestParam("PurchaseFrom") String PurchaseFrom,
            @RequestParam("PurchaseTo") String PurchaseTo) throws SQLException {
        List<PurchaseModel> feed = new ArrayList<PurchaseModel>();

        String sql = "select purchase.*,supplier.suppliername from purchase inner join supplier on supplier.supplierid=purchase.SupplierId where purchase.CreatedDate between '"+PurchaseFrom+"' and '"+PurchaseTo+"'";
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

            feed.add(new PurchaseModel(rs.getString("PurchaseId"),rs.getString("suppliername"),rs.getString("InvoiceDate"),"400"));
        }

        return feed;

    }

}
