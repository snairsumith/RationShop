package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/customer")
public class CustomerController {
    @RequestMapping(value="/customermyprofile",method = RequestMethod.GET)
     public String profile(){
         return "customermyprofile";
     }
     @RequestMapping(value="/customernotification",method = RequestMethod.GET)
     public String notification(){
         return "customernotification";
     
     }
       @RequestMapping(value="/customerfeedback",method = RequestMethod.GET)
     public String customerfeedback(){
         return "customerfeedback";
     }
      @RequestMapping(value="/customernewfeedback",method = RequestMethod.GET)
     public String customernewfeedback(){
         return "CustomerNewFeedBack";
     }
     
         @RequestMapping(value="/customerpurchase",method = RequestMethod.GET)
     public String customerpurchase(){
         return "customerpurchase";
     }
     
     
    
        
}