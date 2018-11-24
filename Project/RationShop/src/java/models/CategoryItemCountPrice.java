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
public class CategoryItemCountPrice {

    private int ItemQtyPriority;
    private int ItemQtyNonPriority;
    private int ItemQtyAyy;
    private int ItemQtyNonPrioSub;

    private int ItemPricePriority;
    private int ItemPriceNonPriority;
    private int ItemPriceAyy;
    private int ItemPriceNonPrioSub;

    public CategoryItemCountPrice(int ItemQtyPriority, int ItemQtyNonPriority, int ItemQtyAyy, int ItemQtyNonPrioSub, int ItemPricePriority, int ItemPriceNonPriority, int ItemPriceAyy, int ItemPriceNonPrioSub) {
        this.ItemQtyPriority = ItemQtyPriority;
        this.ItemQtyNonPriority = ItemQtyNonPriority;
        this.ItemQtyAyy = ItemQtyAyy;
        this.ItemQtyNonPrioSub = ItemQtyNonPrioSub;
        this.ItemPricePriority = ItemPricePriority;
        this.ItemPriceNonPriority = ItemPriceNonPriority;
        this.ItemPriceAyy = ItemPriceAyy;
        this.ItemPriceNonPrioSub = ItemPriceNonPrioSub;
    }

    /**
     * @return the ItemQtyPriority
     */
    public int getItemQtyPriority() {
        return ItemQtyPriority;
    }

    /**
     * @param ItemQtyPriority the ItemQtyPriority to set
     */
    public void setItemQtyPriority(int ItemQtyPriority) {
        this.ItemQtyPriority = ItemQtyPriority;
    }

    /**
     * @return the ItemQtyNonPriority
     */
    public int getItemQtyNonPriority() {
        return ItemQtyNonPriority;
    }

    /**
     * @param ItemQtyNonPriority the ItemQtyNonPriority to set
     */
    public void setItemQtyNonPriority(int ItemQtyNonPriority) {
        this.ItemQtyNonPriority = ItemQtyNonPriority;
    }

    /**
     * @return the ItemQtyAyy
     */
    public int getItemQtyAyy() {
        return ItemQtyAyy;
    }

    /**
     * @param ItemQtyAyy the ItemQtyAyy to set
     */
    public void setItemQtyAyy(int ItemQtyAyy) {
        this.ItemQtyAyy = ItemQtyAyy;
    }

    /**
     * @return the ItemQtyNonPrioSub
     */
    public int getItemQtyNonPrioSub() {
        return ItemQtyNonPrioSub;
    }

    /**
     * @param ItemQtyNonPrioSub the ItemQtyNonPrioSub to set
     */
    public void setItemQtyNonPrioSub(int ItemQtyNonPrioSub) {
        this.ItemQtyNonPrioSub = ItemQtyNonPrioSub;
    }

    /**
     * @return the ItemPricePriority
     */
    public int getItemPricePriority() {
        return ItemPricePriority;
    }

    /**
     * @param ItemPricePriority the ItemPricePriority to set
     */
    public void setItemPricePriority(int ItemPricePriority) {
        this.ItemPricePriority = ItemPricePriority;
    }

    /**
     * @return the ItemPriceNonPriority
     */
    public int getItemPriceNonPriority() {
        return ItemPriceNonPriority;
    }

    /**
     * @param ItemPriceNonPriority the ItemPriceNonPriority to set
     */
    public void setItemPriceNonPriority(int ItemPriceNonPriority) {
        this.ItemPriceNonPriority = ItemPriceNonPriority;
    }

    /**
     * @return the ItemPriceAyy
     */
    public int getItemPriceAyy() {
        return ItemPriceAyy;
    }

    /**
     * @param ItemPriceAyy the ItemPriceAyy to set
     */
    public void setItemPriceAyy(int ItemPriceAyy) {
        this.ItemPriceAyy = ItemPriceAyy;
    }

    /**
     * @return the ItemPriceNonPrioSub
     */
    public int getItemPriceNonPrioSub() {
        return ItemPriceNonPrioSub;
    }

    /**
     * @param ItemPriceNonPrioSub the ItemPriceNonPrioSub to set
     */
    public void setItemPriceNonPrioSub(int ItemPriceNonPrioSub) {
        this.ItemPriceNonPrioSub = ItemPriceNonPrioSub;
    }
}
