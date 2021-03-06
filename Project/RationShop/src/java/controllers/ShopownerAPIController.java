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
import models.CustomerCategoryCount;
import models.CustomerModel;
import models.FeedBackModel;
import models.PurchaseItemModel;
import models.PurchaseModel;
import models.SalesItemModel;
import models.ShopOwnerModel;
import models.SupplierModel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/shopownerapi")
public class ShopownerAPIController {

    DBFunctions db = new DBFunctions();

    @RequestMapping(value = "/customermyprofile", method = RequestMethod.GET)
    @ResponseBody
    public String insertdata(
            @RequestParam("name") String Name,
            @RequestParam("age") String Age,
            @RequestParam("cls") String clss)
            throws ClassNotFoundException, SQLException {
       
        
        String sql = "insert into newtbl(Name,age,cls)values('sumith','" + Age + "','" + clss + "')";
        int i = db.InsetQuery(sql);
        if (i > 0) {
            return "sucess";
        } else {
            return "faill";
        }
    }

    @RequestMapping(value = "/insertCustomer", method = RequestMethod.GET)
    @ResponseBody
    public String insertCustomer(
            @RequestParam("CustomerName") String Name,
            @RequestParam("RationCardNo") String RationCardNo,
            @RequestParam("Address") String Address,
            @RequestParam("AadharNo") String AadharNo,
            @RequestParam("DOB") String DOB,
            @RequestParam("EmailId") String EmailId,
            @RequestParam("ContactNo") String ContactNo,
            @RequestParam("Gender") String Gender,
            @RequestParam("ShopOwnerId") String ShopOwnerId,
            @RequestParam("Password") String Password,
            @RequestParam("CategoryId") String CategoryId
    )
            throws ClassNotFoundException, SQLException {

        String sql = "INSERT INTO `customer` (`CustomerName`, `RationCardNo`, `Address`, `AadharNo`, `DOB`, `EmailId`, `ContactNo`, `Gender`, `ShopOwnerId`,`CategoryId`) VALUES ('" + Name + "', '" + RationCardNo + "', '" + Address + "', '" + AadharNo + "','" + DOB + "', '" + EmailId + "', '" + ContactNo + "', '" + Gender + "', '" + ShopOwnerId + "',"+CategoryId+")";
         String sql1="insert into login(UserName,Password,Role)values('"+EmailId+"','"+Password+"','1')";
        int i = db.InsetQuery(sql);
        int j = db.InsetQuery(sql1);
        if (i > 0) {
            return "1";
        } else {
            return "0";
        }
    }

    @RequestMapping(value = "/getallowedquota", method = RequestMethod.GET)
    public @ResponseBody
    List<AllowedQuotaModel> getAllowQota(
            @RequestParam("shopusername") String shopusername,
            @RequestParam("month") int month) throws SQLException {
        List<AllowedQuotaModel> quota = new ArrayList<AllowedQuotaModel>();

        String sql = "select stockassign.*,item.ItemName from stockassign inner join item on stockassign.ItemId=item.ItemId where stockassign.shopownerId='" + shopusername + "'and month(CreatedDate)=" + month;
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

            quota.add(new AllowedQuotaModel(rs.getString("ItemName"), rs.getInt("quota"), rs.getFloat("amount")));
        }

        return quota;

    }

    @RequestMapping(value = "/getcustomerbyshop", method = RequestMethod.GET)
    public @ResponseBody
    List<CustomerModel> getCustByShop(
            @RequestParam("shopusername") String shopusername) throws SQLException {
        List<CustomerModel> quota = new ArrayList<CustomerModel>();

        String sql = "select * from customer where ShopOwnerId='" + shopusername + "'";
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

            quota.add(new CustomerModel(rs.getInt("CustomerId"), rs.getString("CustomerName"), rs.getString("EmailId"), rs.getString("ContactNo"), rs.getString("RationCardNo"), rs.getString("AadharNo"), rs.getString("Gender"), rs.getString("Address"),rs.getString("ShopOwnerId"),rs.getInt("CategoryId")));
        }

        return quota;

    }

    @RequestMapping(value = "/getcustomerbyid", method = RequestMethod.GET)
    public @ResponseBody
    List<CustomerModel> getCustById(
            @RequestParam("CustomerId") int CustomerId) throws SQLException {
        List<CustomerModel> quota = new ArrayList<CustomerModel>();

        String sql = "select * from customer where CustomerId='" + CustomerId + "'";
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

            quota.add(new CustomerModel(rs.getInt("CustomerId"), rs.getString("CustomerName"), rs.getString("EmailId"), rs.getString("ContactNo"), rs.getString("RationCardNo"), rs.getString("AadharNo"), rs.getString("Gender"), rs.getString("Address"),rs.getString("ShopOwnerId"),rs.getInt("CategoryId")));
        }

        return quota;

    }

    @RequestMapping(value = "/insertsalseItem", method = RequestMethod.GET)
    @ResponseBody
    public String insertPurchaseItem(@RequestParam("itemId") int itemId,
            @RequestParam("price") int price,
            @RequestParam("qty") int qty,
            @RequestParam("purchaseid") String purchaseid)
            throws ClassNotFoundException, SQLException {
        String sql = "INSERT INTO `salesitem` (`SalesId`, `Quantity`, `ItemId`, `Rate`, `TotalAmount`) VALUES ('" + purchaseid + "', " + qty + ", " + itemId + ", " + price + ", " + (qty * price) + ")";
        int j = db.InsetQuery(sql);

        if (j > 0) {
            return "1";
        } else {
            return "0";
        }
    }
    @RequestMapping(value = "/getAllSalesItem", method = RequestMethod.GET)
    public @ResponseBody
    List<PurchaseItemModel> getitempur(
            @RequestParam("purchaseid") String purchaseid) throws SQLException {
        List<PurchaseItemModel> pur_item = new ArrayList<PurchaseItemModel>();
       
        String sql = "select salesitem.*,item.ItemName from salesitem inner join item on item.ItemId=salesitem.ItemId where salesitem.SalesId ='"+purchaseid+"'";
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

            pur_item.add(new PurchaseItemModel(rs.getString("ItemName"), rs.getInt("Quantity"), rs.getInt("Rate"), rs.getInt("TotalAmount")));
        }

        return pur_item;

    }
    @RequestMapping(value = "/insertsales", method = RequestMethod.GET)
    @ResponseBody
    public String insertpurchse(@RequestParam("supplierId") int supplierId,
            @RequestParam("invoicedate") String invoicedate,
            @RequestParam("purchaseid") String purchaseid)
            throws ClassNotFoundException, SQLException {
        String sql = "INSERT INTO `sales` (`SalesId`, `CustomerId`) VALUES ('" + purchaseid + "', " + supplierId + ")";
        System.out.println("controllers.ShopownerAPIController.insertpurchse()"+sql);
        int j = db.InsetQuery(sql);

        if (j > 0) {
            return "1";
        } else {
            return "0";
        }
    }

    @RequestMapping(value = "/getshopownerbyid", method = RequestMethod.GET)
    public @ResponseBody
    List<ShopOwnerModel> getShopById(
            @RequestParam("shopusername") String shopusername) throws SQLException {
        List<ShopOwnerModel> quota = new ArrayList<ShopOwnerModel>();

        String sql = "select shopownerregistration.*,location.LocationName from shopownerregistration inner join location on shopownerregistration.Locationid=location.Locationid where shopownerregistration.Email='" + shopusername + "'";
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

            quota.add(new ShopOwnerModel(rs.getString("Name"), rs.getString("Address"), rs.getString("Email"), rs.getString("Contact"), rs.getString("ARDNumber"), rs.getString("LocationName"),rs.getString("Gender"), rs.getString("PinCode")));
        }

        return quota;

    }
    
    @RequestMapping(value = "/getAllFeedBackFromCustomer", method = RequestMethod.GET)
    public @ResponseBody
    List<FeedBackModel> getAllFeedBackShop(
    @RequestParam("shopusername") String shopusername
    ) throws SQLException {
        List<FeedBackModel> feed = new ArrayList<FeedBackModel>();

        String sql = "select feedback.*,customer.CustomerName from feedback inner join customer on feedback.SenderId=customer.CustomerId where Type=3 and ReciverId='"+shopusername+"'";
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

            feed.add(new FeedBackModel(rs.getInt("FeedBackId"), rs.getString("FeedBackTitle"),rs.getString("FeedBackDescription"),rs.getString("ReciverId"),rs.getString("CustomerName"),rs.getString("CreatedOn"),rs.getInt("Type"),rs.getString("Address")));
        }

        return feed;

    }
    @RequestMapping(value = "/getCustomerReportReport", method = RequestMethod.GET)
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
    
    @RequestMapping(value = "/getCustomerWiseReportSale", method = RequestMethod.GET)
    public @ResponseBody
    List<SalesItemModel> getitemSales(
            @RequestParam("CustomerId") String CustomerId) throws SQLException {
        List<SalesItemModel> pur_item = new ArrayList<SalesItemModel>();
       
        String sql = "select salesitem.*,item.ItemName,sales.* from salesitem inner join item on item.ItemId=salesitem.ItemId inner join sales on sales.SalesId=salesitem.SalesId where sales.CustomerId="+CustomerId+"";
        System.out.println("controllers.ShopownerAPIController.getitemSales()"+sql);
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

            pur_item.add(new SalesItemModel(rs.getString("ItemName"), rs.getInt("Quantity"), rs.getInt("Rate"), rs.getInt("TotalAmount"),rs.getString("DateOfSale")));
        }

        return pur_item;

    }
    @RequestMapping(value = "/getCutsomersCoutByCategory", method = RequestMethod.GET)
    public @ResponseBody
    List<CustomerCategoryCount> getCutsomersCoutByCategory(
            @RequestParam("ShopOwnerUsername") String ShopOwnerUsername) throws SQLException {
        List<CustomerCategoryCount> pur_item = new ArrayList<CustomerCategoryCount>();
        DBFunctions db = new DBFunctions();
        int CountPriority=0;
        int CountAYY=0;
        int CountNonPrioritySubsidy=0;
        int CountNonPriority =0;
        
        String sql = "select count(*)as CountPriority from customer where ShopOwnerId='"+ShopOwnerUsername+"' and CategoryId=5";
        String sql1 = "select count(*)as CountAYY from customer where ShopOwnerId='"+ShopOwnerUsername+"' and CategoryId=6";
        String sql2 = "select count(*)as CountNonPrioritySubsidy from customer where ShopOwnerId='"+ShopOwnerUsername+"' and CategoryId=7";
        String sql3 = "select count(*)as CountNonPriority from customer where ShopOwnerId='"+ShopOwnerUsername+"' and CategoryId=8";
        
        
        ResultSet rs = db.SelectQuery(sql);
        ResultSet rs2 = db.SelectQuery(sql1);
        ResultSet rs3 = db.SelectQuery(sql2);
        ResultSet rs4 = db.SelectQuery(sql3);
        if (rs.next()) {

            CountPriority=rs.getInt("CountPriority");
        }
         if (rs2.next()) {

            CountAYY=rs2.getInt("CountAYY");
        }
          if (rs3.next()) {

            CountNonPrioritySubsidy=rs3.getInt("CountNonPrioritySubsidy");
        }
         if (rs4.next()) {

            CountNonPriority=rs4.getInt("CountNonPriority");
        }
        pur_item.add(new CustomerCategoryCount(CountPriority, CountNonPriority, CountAYY, CountNonPrioritySubsidy));
        return pur_item;

    }
    
     @RequestMapping(value = "/getItemByCategory", method = RequestMethod.GET)
    public @ResponseBody
    List<SalesItemModel> getItemByCategory(
            @RequestParam("CategoryId") int CategoryId) throws SQLException {
        List<SalesItemModel> pur_item = new ArrayList<SalesItemModel>();
       
        String sql = "select item.ItemName,rationallotment.AllotmentId,item.ItemId,rationallotment.Quantity as AllotedQty,rationallotment.Rate as allotedPrice  from rationallotment inner join item on item.ItemId=rationallotment.ItemId  where rationallotment.CategoryId="+CategoryId+"";
       
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {
            int qty=rs.getInt("AllotedQty");
            int amount=rs.getInt("allotedPrice");
            int Total=qty*amount;
            pur_item.add(new SalesItemModel(rs.getString("ItemName"), rs.getInt("AllotedQty"), rs.getInt("allotedPrice"), Total,rs.getString("AllotmentId")));
        }

        return pur_item;

    }
    
        @RequestMapping(value = "/getItemByAllotementId", method = RequestMethod.GET)
    public @ResponseBody
    List<SalesItemModel> getItemByAllotementId(
            @RequestParam("AllotmentId") int AllotmentId) throws SQLException {
        List<SalesItemModel> pur_item = new ArrayList<SalesItemModel>();
       
        String sql = "select item.ItemName,item.ItemId,rationallotment.AllotmentId,rationallotment.Quantity as AllotedQty,rationallotment.Rate as allotedPrice  from rationallotment inner join item on item.ItemId=rationallotment.ItemId  where rationallotment.AllotmentId="+AllotmentId+"";
       
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {
            int qty=rs.getInt("AllotedQty");
            int amount=rs.getInt("allotedPrice");
            int Total=qty*amount;
            pur_item.add(new SalesItemModel(rs.getString("ItemName"), rs.getInt("AllotedQty"), rs.getInt("allotedPrice"), Total,rs.getString("ItemId")));
        }

        return pur_item;

    }
    
            @RequestMapping(value = "/shopowner_update", method = RequestMethod.GET)
    @ResponseBody
    public String shopowner_update(@RequestParam("name") String name,
            @RequestParam("password") String password,
            @RequestParam("address") String address,
            @RequestParam("dob") String dob,
            @RequestParam("email") String email,
            @RequestParam("contactno") String contactno,
            @RequestParam("gender") String gender,
            @RequestParam("ardNo") String ardno,
            @RequestParam("location") String location,
            @RequestParam("pincode") String pincode,
            @RequestParam("username") String username) throws ClassNotFoundException, SQLException {

        String sql = "update  `shopownerregistration` set ARDNumber='"+ardno+"',`Name`='"+name+"', `Address`='"+address+"', `DateOfBirth`='"+dob+"',  `Contact`='"+contactno+"',`PinCode`='"+pincode+"' where EmailId='"+username+"'";
      
       
        int i = db.InsetQuery(sql);
        if (i > 0) {
            return "1";
        } else {
            return "0";
        }
    }
    

    
    
    

}
