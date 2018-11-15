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
public class SalesItemModel {
    
    private String ItemName;
    private int Quantity;
    private int Rate;
    private int TotalAmount;
    private String Date;
    public SalesItemModel(String ItemName,int Quantity,int Rate,int TotalAmount,String Date){
       this.ItemName=ItemName;
       this.Quantity=Quantity;
       this.Rate=Rate;
       this.TotalAmount=TotalAmount;
       this.Date=Date;
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
     * @return the Quantity
     */
    public int getQuantity() {
        return Quantity;
    }

    /**
     * @param Quantity the Quantity to set
     */
    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    /**
     * @return the Rate
     */
    public int getRate() {
        return Rate;
    }

    /**
     * @param Rate the Rate to set
     */
    public void setRate(int Rate) {
        this.Rate = Rate;
    }

    /**
     * @return the TotalAmount
     */
    public int getTotalAmount() {
        return TotalAmount;
    }

    /**
     * @param TotalAmount the TotalAmount to set
     */
    public void setTotalAmount(int TotalAmount) {
        this.TotalAmount = TotalAmount;
    }

    /**
     * @return the Date
     */
    public String getDate() {
        return Date;
    }

    /**
     * @param Date the Date to set
     */
    public void setDate(String Date) {
        this.Date = Date;
    }
}
