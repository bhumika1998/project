/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truck.rent.entities;

import java.sql.Timestamp;

/**
 *
 * @author Lenovo
 */
public class bookuser {
   private int id;
    private String email;
     private String name;
    private String mobile;
    private String source;
    private String destination;
    private String trucktype;
  private Timestamp dateTime;

    public bookuser(int id, String email, String name, String mobile, String source, String destination, String trucktype, Timestamp dateTime) {
        this.id = id;
        this.email = email;
        this.name = name;
        this.mobile = mobile;
        this.source = source;
        this.destination = destination;
        this.trucktype = trucktype;
        this.dateTime = dateTime;
    }

    public bookuser() {
    }

    public bookuser(String email, String name, String mobile, String source, String destination, String trucktype) {
        this.email = email;
        this.name = name;
        this.mobile = mobile;
        this.source = source;
        this.destination = destination;
        this.trucktype = trucktype;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public String getTrucktype() {
        return trucktype;
    }

    public void setTrucktype(String trucktype) {
        this.trucktype = trucktype;
    }

    public Timestamp getDateTime() {
        return dateTime;
    }

    public void setDateTime(Timestamp dateTime) {
        this.dateTime = dateTime;
    }

  
  
}