/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import LiibraryFunction.DBFunctions;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.CategoryModel;
import models.LocationModel;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author minusbug
 */
@Controller
@RequestMapping("/commonApi")
public class CommonAPIController {

    DBFunctions db = new DBFunctions();

    @RequestMapping(value = "/getallcategory", method = RequestMethod.GET)
    public @ResponseBody
    List<CategoryModel> getAllCategory() throws SQLException {
        List<CategoryModel> cat = new ArrayList<CategoryModel>();
        cat.add(new CategoryModel(1, "name"));
        String sql = "select * from category";
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

            cat.add(new CategoryModel(rs.getInt("CategoryId"), rs.getString("CategoryName")));
        }

        return cat;

    }

    @RequestMapping(value = "/getalllocation", method = RequestMethod.GET)
    public @ResponseBody
    List<LocationModel> getAllLocation(
            @RequestParam("ParentId") int ParentId) throws SQLException {
        List<LocationModel> loc = new ArrayList<LocationModel>();

        String sql = "select * from location where ParentId=" + ParentId;
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

            loc.add(new LocationModel(rs.getInt("LocationId"), rs.getString("LocationName")));
        }

        return loc;

    }

    @RequestMapping(value = "/sendFeedBack", method = RequestMethod.GET)
    @ResponseBody
    public String sendFeedBack(
            @RequestParam("Title") String Title,
            @RequestParam("Description") String Description,
            @RequestParam("SenderId") String SenderId,
            @RequestParam("ReciverId") String ReciverId,
            @RequestParam("Type") String Type)
            throws ClassNotFoundException, SQLException {

        String sql = "INSERT INTO `feedback` (`FeedBackTitle`, `FeedBackDescription`,`SenderId`, `ReciverId`, `Type`) VALUES ('" + Title + "', '" + Description + "','" + SenderId + "', '" + ReciverId + "', " + Type + ")";

        int i = db.InsetQuery(sql);

        if (i > 0) {
            return "1";
        } else {
            return "0";
        }
    }

    @RequestMapping(value = "/insertNotification", method = RequestMethod.GET)
    @ResponseBody
    public String insertNotification(
            @RequestParam("RoleType") int RoleType,
            @RequestParam("Title") String Title,
            @RequestParam("Description") String Description,
            @RequestParam("CategoryType") int CategoryType) throws ClassNotFoundException, SQLException {

        String sql = "INSERT INTO `notifications` (`Title`, `Description`, `RoleType`,`CategoryType`) VALUES ('" + Title + "', '" + Description + "', " + RoleType + ","+CategoryType+")";

        int i = db.InsetQuery(sql);

        if (i > 0) {
            return "1";
        } else {
            return "0";
        }
    }



    @RequestMapping(value = "/insertstockassing1", method = RequestMethod.GET)
    @ResponseBody
    public String InsertStock1(@RequestParam("shopownerId") int shopownerId,
            @RequestParam("itemId") int itemId,
            @RequestParam("quota") int quota,
            @RequestParam("amount") float amount,
            @RequestParam("month") String month) throws ClassNotFoundException, SQLException {
//        String sql = "INSERT INTO `stockassign` (`shopownerId`, `itemId`, `quota`, `amount`, `month`) VALUES ('" + shopownerId + "', '" + itemId + "', '" + quota + "', '" + amount + "', '" + month + "')";
//        int j = db.InsetQuery(sql);
//
//        if (j > 0) {
//            return "1";
//        } else {
//            return "0";
//        }
        return "0";
    }

    

}
