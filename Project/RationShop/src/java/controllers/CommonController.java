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
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author MinusBugspc1
 */
@Controller
@RequestMapping("/")
public class CommonController {
    @RequestMapping(method = RequestMethod.GET)
    public String login(ModelMap modelMap) {
        
        return "login";
    }
     @RequestMapping(value="/shopownerregister",method = RequestMethod.GET)
     public String test(){
         return "register";
     }
     

     
    
    
}
