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
public class ShopOwnerModel {

    private String Name;
    private String Address;
    private String Email;
    private String Mobile;
    private String ARDNumber;
    private String LocationName;
    private String Gender;
    private String PinCode;

    public ShopOwnerModel(String Name, String Address, String Email, String Mobile, String ARDNumber, String LocationName, String Gender, String PinCode) {
        this.Name = Name;
        this.Address = Address;
        this.Email = Email;
        this.Mobile = Mobile;
        this.ARDNumber = ARDNumber;
        this.LocationName = LocationName;
        this.Gender = Gender;
        this.PinCode = PinCode;

    }

    /**
     * @return the Name
     */
    public String getName() {
        return Name;
    }

    /**
     * @param Name the Name to set
     */
    public void setName(String Name) {
        this.Name = Name;
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

    /**
     * @return the Email
     */
    public String getEmail() {
        return Email;
    }

    /**
     * @param Email the Email to set
     */
    public void setEmail(String Email) {
        this.Email = Email;
    }

    /**
     * @return the Mobile
     */
    public String getMobile() {
        return Mobile;
    }

    /**
     * @param Mobile the Mobile to set
     */
    public void setMobile(String Mobile) {
        this.Mobile = Mobile;
    }

    /**
     * @return the ARDNumber
     */
    public String getARDNumber() {
        return ARDNumber;
    }

    /**
     * @param ARDNumber the ARDNumber to set
     */
    public void setARDNumber(String ARDNumber) {
        this.ARDNumber = ARDNumber;
    }

    /**
     * @return the LocationName
     */
    public String getLocationName() {
        return LocationName;
    }

    /**
     * @param LocationName the LocationName to set
     */
    public void setLocationName(String LocationName) {
        this.LocationName = LocationName;
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
     * @return the PinCode
     */
    public String getPinCode() {
        return PinCode;
    }

    /**
     * @param PinCode the PinCode to set
     */
    public void setPinCode(String PinCode) {
        this.PinCode = PinCode;
    }
}
