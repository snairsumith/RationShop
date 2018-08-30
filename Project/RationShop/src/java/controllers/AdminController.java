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
 *
 * @author MinusBugspc1
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    @RequestMapping(value="/shopownerregister",method = RequestMethod.GET)
     public String test(){
         return "register";
     }
     
    @RequestMapping(value="/quotasetting",method = RequestMethod.GET)
     public String quotasetting(){
         return "quotasetting";
     }
     @RequestMapping(value="/shopownerslist",method = RequestMethod.GET)
     public String shopownerslist(){
         return "shopownerslist";
}
      @RequestMapping(value="/quotalist",method = RequestMethod.GET)
     public String quotalist(){
         return "quotalist";
}
     @RequestMapping(value="/feedbacklist",method = RequestMethod.GET)
     public String feedbacklist(){
         return "feedbacklist";
}
      @RequestMapping(value="/notifications",method = RequestMethod.GET)
     public String notifications(){
         return "notifications";
}
}