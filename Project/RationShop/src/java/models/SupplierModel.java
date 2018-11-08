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
public class SupplierModel {
    private int supplierid;
    private String suppliername;
    private String supplieraddress;
    private String contact;
    
    
    public SupplierModel(int supplierid,String suppliername,String supplieraddress,String contact){
        this.supplierid=supplierid;
        this.suppliername=suppliername;
        this.supplieraddress=supplieraddress;
        this.contact=contact;
    }

    /**
     * @return the supplierid
     */
    public int getSupplierid() {
        return supplierid;
    }

    /**
     * @param supplierid the supplierid to set
     */
    public void setSupplierid(int supplierid) {
        this.supplierid = supplierid;
    }

    /**
     * @return the suppliername
     */
    public String getSuppliername() {
        return suppliername;
    }

    /**
     * @param suppliername the suppliername to set
     */
    public void setSuppliername(String suppliername) {
        this.suppliername = suppliername;
    }

    /**
     * @return the supplieraddress
     */
    public String getSupplieraddress() {
        return supplieraddress;
    }

    /**
     * @param supplieraddress the supplieraddress to set
     */
    public void setSupplieraddress(String supplieraddress) {
        this.supplieraddress = supplieraddress;
    }

    /**
     * @return the contact
     */
    public String getContact() {
        return contact;
    }

    /**
     * @param contact the contact to set
     */
    public void setContact(String contact) {
        this.contact = contact;
    }
    
}
