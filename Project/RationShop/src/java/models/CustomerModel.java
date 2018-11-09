/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author minusbug
 */
public class CustomerModel {

    private int CustomerId;
    private String CustomerName;
    private String CustomerEmail;
    private String Contact;
    private String RationCardNo;
    private String AadharCardNo;
    private String Gender;
    private String Address;

    public CustomerModel(int CustomerId, String CustomerName, String CustomerEmail, String Contact, String RationCardNo, String AadharCardNo,String Gender,String Address) {
        this.CustomerId = CustomerId;
        this.CustomerName = CustomerName;
        this.CustomerEmail = CustomerEmail;
        this.Contact = Contact;
        this.RationCardNo = RationCardNo;
        this.AadharCardNo = AadharCardNo;
        this.Gender=Gender;
        this.Address=Address;
    }

    /**
     * @return the CustomerId
     */
    public int getCustomerId() {
        return CustomerId;
    }

    /**
     * @param CustomerId the CustomerId to set
     */
    public void setCustomerId(int CustomerId) {
        this.CustomerId = CustomerId;
    }

    /**
     * @return the CustomerName
     */
    public String getCustomerName() {
        return CustomerName;
    }

    /**
     * @param CustomerName the CustomerName to set
     */
    public void setCustomerName(String CustomerName) {
        this.CustomerName = CustomerName;
    }

    /**
     * @return the CustomerEmail
     */
    public String getCustomerEmail() {
        return CustomerEmail;
    }

    /**
     * @param CustomerEmail the CustomerEmail to set
     */
    public void setCustomerEmail(String CustomerEmail) {
        this.CustomerEmail = CustomerEmail;
    }

    /**
     * @return the Contact
     */
    public String getContact() {
        return Contact;
    }

    /**
     * @param Contact the Contact to set
     */
    public void setContact(String Contact) {
        this.Contact = Contact;
    }

    /**
     * @return the RationCardNo
     */
    public String getRationCardNo() {
        return RationCardNo;
    }

    /**
     * @param RationCardNo the RationCardNo to set
     */
    public void setRationCardNo(String RationCardNo) {
        this.RationCardNo = RationCardNo;
    }

    /**
     * @return the AadharCardNo
     */
    public String getAadharCardNo() {
        return AadharCardNo;
    }

    /**
     * @param AadharCardNo the AadharCardNo to set
     */
    public void setAadharCardNo(String AadharCardNo) {
        this.AadharCardNo = AadharCardNo;
    }

    /**
     * @return the Gender
     */
    public String getGender() {
        return Gender;
    }

    /**
     * @param Gender the Gender to set
     */
    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    /**
     * @return the Address
     */
    public String getAddress() {
        return Address;
    }

    /**
     * @param Address the Address to set
     */
    public void setAddress(String Address) {
        this.Address = Address;
    }
}
