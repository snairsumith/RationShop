package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/customer")
public class CustomerController {
    @RequestMapping(value="/customermyprofile",method = RequestMethod.GET)
     public String profile(@RequestParam("uname") String uname){
         return "customermyprofile";
     }
     @RequestMapping(value="/customermyprofileedit",method = RequestMethod.GET)
     public String customermyprofileedit(@RequestParam("uname") String uname){
         return "EditProfileCustomer";
     }
     @RequestMapping(value="/customernotification",method = RequestMethod.GET)
     public String notification(@RequestParam("uname") String uname){
         return "customernotification";
     
     }
       @RequestMapping(value="/customerfeedback",method = RequestMethod.GET)
     public String customerfeedback(@RequestParam("uname") String uname){
         return "customerfeedback";
     }
      @RequestMapping(value="/customernewfeedback",method = RequestMethod.GET)
     public String customernewfeedback(@RequestParam("uname") String uname){
         return "CustomerNewFeedBack";
     }
     
         @RequestMapping(value="/customerpurchase",method = RequestMethod.GET)
     public String customerpurchase(@RequestParam("uname") String uname){
         return "customerpurchase";
     }
     
     
    
        
}