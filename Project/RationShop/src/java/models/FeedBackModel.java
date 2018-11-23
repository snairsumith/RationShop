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
public class FeedBackModel {

    private int FeedBackId;
    private String Title;
    private String Description;
    private String ReciverName;
    private String SenderName;
    private String DateOfSend;
    private int Type;
    private String Location;

    public FeedBackModel(int FeedBackId, String Title, String Description, String ReciverName, String SenderName, String DateOfSend, int Type,String Location) {
        this.FeedBackId = FeedBackId;
        this.Title = Title;
        this.Description = Description;
        this.ReciverName = ReciverName;
        this.SenderName = SenderName;
        this.DateOfSend = DateOfSend;
        this.Type = Type;
        this.Location=Location;
    }

    /**
     * @return the FeedBackId
     */
    public int getFeedBackId() {
        return FeedBackId;
    }

    /**
     * @param FeedBackId the FeedBackId to set
     */
    public void setFeedBackId(int FeedBackId) {
        this.FeedBackId = FeedBackId;
    }

    /**
     * @return the Title
     */
    public String getTitle() {
        return Title;
    }

    /**
     * @param Title the Title to set
     */
    public void setTitle(String Title) {
        this.Title = Title;
    }

    /**
     * @return the Description
     */
    public String getDescription() {
        return Description;
    }

    /**
     * @param Description the Description to set
     */
    public void setDescription(String Description) {
        this.Description = Description;
    }

    /**
     * @return the ReciverName
     */
    public String getReciverName() {
        return ReciverName;
    }

    /**
     * @param ReciverName the ReciverName to set
     */
    public void setReciverName(String ReciverName) {
        this.ReciverName = ReciverName;
    }

    /**
     * @return the SenderName
     */
    public String getSenderName() {
        return SenderName;
    }

    /**
     * @param SenderName the SenderName to set
     */
    public void setSenderName(String SenderName) {
        this.SenderName = SenderName;
    }

    /**
     * @return the DateOfSend
     */
    public String getDateOfSend() {
        return DateOfSend;
    }

    /**
     * @param DateOfSend the DateOfSend to set
     */
    public void setDateOfSend(String DateOfSend) {
        this.DateOfSend = DateOfSend;
    }

    /**
     * @return the Type
     */
    public int getType() {
        return Type;
    }

    /**
     * @param Type the Type to set
     */
    public void setType(int Type) {
        this.Type = Type;
    }

    /**
     * @return the Location
     */
    public String getLocation() {
        return Location;
    }

    /**
     * @param Location the Location to set
     */
    public void setLocation(String Location) {
        this.Location = Location;
    }
}
