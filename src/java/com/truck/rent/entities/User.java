
package com.truck.rent.entities;

import java.sql.Timestamp;


public class User {
    
    private int id;
    private String name;
    private String email;
    private String password;
   
    
    private String mobile;
    private Timestamp dateTime;
    private String profile;

    public User(int id, String name, String email, String password, String mobile, Timestamp dateTime, String profile) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.mobile = mobile;
        this.dateTime = dateTime;
        this.profile = profile;
    }

    public User(String name, String email, String password, String mobile, String profile) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.mobile = mobile;
        this.profile = profile;
    }

    public User(String name, String email, String password, String mobile) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.mobile = mobile;
    }

    public User() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public Timestamp getDateTime() {
        return dateTime;
    }

    public void setDateTime(Timestamp dateTime) {
        this.dateTime = dateTime;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }
    

}