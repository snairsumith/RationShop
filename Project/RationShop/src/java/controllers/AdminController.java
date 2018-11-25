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

    @RequestMapping(value = "/adminhome", method = RequestMethod.GET)
    public String adminHome() {
        return "adminhome";
    }

    @RequestMapping(value = "/shopownerregister", method = RequestMethod.GET)
    public String test() {
        return "shopownerregister";
    }

    @RequestMapping(value = "/quotasetting", method = RequestMethod.GET)
    public String quotasetting() {
        return "quotasetting";
    }

    @RequestMapping(value = "/shopownerslist", method = RequestMethod.GET)
    public String shopownerslist() {
        return "shopownerslist";
    }

    @RequestMapping(value = "/quotalist", method = RequestMethod.GET)
    public String quotalist() {
        return "quotalist";
    }

    @RequestMapping(value = "/feedbacklist", method = RequestMethod.GET)
    public String feedbacklist() {
        return "feedbacklist";
    }

    @RequestMapping(value = "/notifications", method = RequestMethod.GET)
    public String notifications() {
        return "notifications";
    }

    @RequestMapping(value = "/additem", method = RequestMethod.GET)
    public String additem() {
        return "additem";
    }

    @RequestMapping(value = "/itemdetails", method = RequestMethod.GET)
    public String itemdetails() {
        return "itemdetails";
    }

    @RequestMapping(value = "/addsuppliers", method = RequestMethod.GET)
    public String addsuppliers() {
        return "addsuppliers";
    }

    @RequestMapping(value = "/suppliersdetails", method = RequestMethod.GET)
    public String suppliersdetails() {
        return "suppliersdetails";
    }

    @RequestMapping(value = "/purchaseentry", method = RequestMethod.GET)
    public String purchaseentry() {
        return "purchaseentry";
    }

    @RequestMapping(value = "/myprofile", method = RequestMethod.GET)
    public String myprofile() {
        return "myprofile";
    }

    @RequestMapping(value = "/salesreport", method = RequestMethod.GET)
    public String salesreport() {
        return "salesreport";
    }

    @RequestMapping(value = "/purchasereport", method = RequestMethod.GET)
    public String purchasereport() {
        return "purchasereport";
    }

    @RequestMapping(value = "/stockreport", method = RequestMethod.GET)
    public String stockreport() {
        return "stockreport";
    }

    @RequestMapping(value = "/stockassign", method = RequestMethod.GET)
    public String stockassign() {
        return "stockassign";
    }

    @RequestMapping(value = "/stockReport", method = RequestMethod.GET)
    public String stockReport() {
        return "stockreport";
    }
}
