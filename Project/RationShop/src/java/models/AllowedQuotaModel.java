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
public class AllowedQuotaModel {
    private String ItemName;
    private int Quota;
    private float Amount;
    public AllowedQuotaModel(String ItemName,int Quota,float Amount){
        this.ItemName=ItemName;
        this.Quota=Quota;
        this.Amount=Amount;
    }

    /**
     * @return the ItemName
     */
    public String getItemName() {
        return ItemName;
    }

    /**
     * @param ItemName the ItemName to set
     */
    public void setItemName(String ItemName) {
        this.ItemName = ItemName;
    }

    /**
     * @return the Quota
     */
    public int getQuota() {
        return Quota;
    }

    /**
     * @param Quota the Quota to set
     */
    public void setQuota(int Quota) {
        this.Quota = Quota;
    }

    /**
     * @return the Amount
     */
    public float getAmount() {
        return Amount;
    }

    /**
     * @param Amount the Amount to set
     */
    public void setAmount(float Amount) {
        this.Amount = Amount;
    }
}
