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
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author minusbug
 */
@Controller
@RequestMapping("/commonApi")
public class CommonAPIController {

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
}
