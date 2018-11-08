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
public class LocationModel {
    private int LocationId;
    private String LocationName;
    
    public LocationModel(int LocationId,String LocationName){
        this.LocationId=LocationId;
        this.LocationName=LocationName;
        
    }
    /**
     * @return the LocationId
     */
    public int getLocationId() {
        return LocationId;
    }

    /**
     * @param LocationId the LocationId to set
     */
    public void setLocationId(int LocationId) {
        this.LocationId = LocationId;
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
    
}
