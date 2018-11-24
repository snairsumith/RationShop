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
public class CustomerCategoryCount {
    private int CatPriority;
    private int CatNonPriority;
    private int CatAyy;
    private int CatNonPrioSub;
    public CustomerCategoryCount(int CatPriority,int CatNonPriority,int CatAyy,int CatNonPrioSub){
        this.CatPriority=CatPriority;
        this.CatNonPrioSub=CatNonPriority;
        this.CatAyy=CatAyy;
        this.CatNonPriority=CatNonPriority;
    }

    /**
     * @return the CatPriority
     */
    public int getCatPriority() {
        return CatPriority;
    }

    /**
     * @param CatPriority the CatPriority to set
     */
    public void setCatPriority(int CatPriority) {
        this.CatPriority = CatPriority;
    }

    /**
     * @return the CatNonPriority
     */
    public int getCatNonPriority() {
        return CatNonPriority;
    }

    /**
     * @param CatNonPriority the CatNonPriority to set
     */
    public void setCatNonPriority(int CatNonPriority) {
        this.CatNonPriority = CatNonPriority;
    }

    /**
     * @return the CatAyy
     */
    public int getCatAyy() {
        return CatAyy;
    }

    /**
     * @param CatAyy the CatAyy to set
     */
    public void setCatAyy(int CatAyy) {
        this.CatAyy = CatAyy;
    }

    /**
     * @return the CatNonPrioSub
     */
    public int getCatNonPrioSub() {
        return CatNonPrioSub;
    }

    /**
     * @param CatNonPrioSub the CatNonPrioSub to set
     */
    public void setCatNonPrioSub(int CatNonPrioSub) {
        this.CatNonPrioSub = CatNonPrioSub;
    }
    
}
