package com.example.smarthome.DTO;

import android.media.Image;
import android.widget.EditText;

import java.util.Date;

public class MemberInfo {
    private String email;
    private String nic;
    private String name;
    private String phone;
    private String address;
    private String birth;
    public MemberInfo(){}
    public MemberInfo(String email, String nic,String name, String phone, String address, String birth){
        this.email = email;
        this.nic=nic;
        this.name=name;
        this.phone=phone;
        this.address=address;
        this.birth=birth;
    }
    public String getEmail(){
        return this.email;
    }
    public void setEmail(String email){
        this.email = email;
    }
    public String getNic(){
        return this.nic;
    }
    public void getNic(String email){
        this.nic = nic;
    }
    public String getName(){
        return this.name;
    }
    public void setName(String name){
        this.name = name;
    }
    public String getPhone(){
        return this.phone;
    }
    public void setPhone(String phone){
        this.phone = phone;
    }
    public String getAddress(){
        return this.address;
    }
    public void setAddress(String address){
        this.address = address;
    }
    public String getBirth(){
        return this.birth;
    }
    public void setBirth(String birth){
        this.birth = birth;
    }
}
