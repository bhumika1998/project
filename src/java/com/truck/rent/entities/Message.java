/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truck.rent.entities;

/**
 *
 * @author Lenovo
 */
public class Message {
    
    private  String content;
    private String type;
    private String CssClass;

    public Message(String content, String type, String CssClass) {
        this.content = content;
        this.type = type;
        this.CssClass = CssClass;
    }
//getter setter
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCssClass() {
        return CssClass;
    }

    public void setCssClass(String CssClass) {
        this.CssClass = CssClass;
    }
    
    
    
}
