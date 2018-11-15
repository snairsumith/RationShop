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
public class PurchaseModel {

    private String PurchaseId;
    private String SupplierName;
    private String PurcahseDate;
    private String TotalAmount;

    public PurchaseModel(String PurchaseId, String SupplierName, String PurcahseDate, String TotalAmount) {
        this.PurchaseId = PurchaseId;
        this.SupplierName = SupplierName;
        this.PurcahseDate = PurcahseDate;
        this.TotalAmount = TotalAmount;
    }

    /**
     * @return the PurchaseId
     */
    public String getPurchaseId() {
        return PurchaseId;
    }

    /**
     * @param PurchaseId the PurchaseId to set
     */
    public void setPurchaseId(String PurchaseId) {
        this.PurchaseId = PurchaseId;
    }

    /**
     * @return the SupplierName
     */
    public String getSupplierName() {
        return SupplierName;
    }

    /**
     * @param SupplierName the SupplierName to set
     */
    public void setSupplierName(String SupplierName) {
        this.SupplierName = SupplierName;
    }

    /**
     * @return the PurcahseDate
     */
    public String getPurcahseDate() {
        return PurcahseDate;
    }

    /**
     * @param PurcahseDate the PurcahseDate to set
     */
    public void setPurcahseDate(String PurcahseDate) {
        this.PurcahseDate = PurcahseDate;
    }

    /**
     * @return the TotalAmount
     */
    public String getTotalAmount() {
        return TotalAmount;
    }

    /**
     * @param TotalAmount the TotalAmount to set
     */
    public void setTotalAmount(String TotalAmount) {
        this.TotalAmount = TotalAmount;
    }
}
