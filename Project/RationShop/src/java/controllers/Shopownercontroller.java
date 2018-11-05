/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 
 * @author MinusBugspc1
 */
@Controller
@RequestMapping("/shopowner")
public class Shopownercontroller {
    
    
    @RequestMapping(value="/shophome",method = RequestMethod.GET)
     public String shophome(){
         return "shopowner";
     }
    @RequestMapping(value="/allowdedquota",method = RequestMethod.GET)
     public String allowdedquota(){
         return "allowdedquota";
     }
          
     @RequestMapping(value="/shopsalesreport",method = RequestMethod.GET)
     public String salesreport(){
         return "shopsalesreport";
}
      @RequestMapping(value="/customerwisereport",method = RequestMethod.GET)
     public String customerwisereport(){
         return "customerwisereport";
}
      @RequestMapping(value="/shopstockreport",method = RequestMethod.GET)
     public String stockreport(){
         return "shopstockreport";
}
     @RequestMapping(value="/shopownerfeedback",method = RequestMethod.GET)
     public String shopownerfeedback(){
         return "shopownerfeedback";
}
      
       @RequestMapping(value="/shopownermyprofile",method = RequestMethod.GET)
     public String shopownermyprofile(){
         return "shopownermyprofile";
     }
     @RequestMapping(value="/shopownernotification",method = RequestMethod.GET)
     public String shopownernotification(){
         return "shopownernotification";
     }
      @RequestMapping(value="/shopsales",method = RequestMethod.GET)
     public String shopsales(){
         return "shopsales";
     }
     @RequestMapping(value="/shopcustomerlist",method = RequestMethod.GET)
     public String shopcustomerlist(){
         return "shopcustomerlist";
     }
     @RequestMapping(value="/shopstockupdation",method = RequestMethod.GET)
     public String shopstockupdation(){
         return "shopstockupdation";
     }
}
