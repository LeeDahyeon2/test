package com.example.smarthome.DTO;

public class IoTInfo {
    private int light1_r;
    private int light1_g;
    private int light1_b;
    private String colorHex1;

    private int light2_r;
    private int light2_g;
    private int light2_b;
    private String colorHex2;

    private int flag_fan;
    private int flag_window;
    private int flag_door;
    private int flag_light1;
    private int flag_light2;
    private int flag_cctv1;
    private int flag_cctv2;

    private int app_fan;
    private int app_window;
    private int app_door;
    private int app_light1;
    private int app_light2;
    private int app_cctv1;
    private int app_cctv2;

    public IoTInfo(){
        flag_fan=0;
        flag_window=0;
        flag_door=0;
        flag_light1=0;
        flag_light2=0;
        flag_cctv1=0;
        flag_cctv2=0;
        app_fan=0;
        app_window=0;
        flag_cctv1=0;
        flag_cctv2=0;
        app_cctv1=0;
        app_cctv2=0;
    }

    public int getApp_light1() {
        return app_light1;
    }

    public void setApp_light1(int app_light1) {
        this.app_light1 = app_light1;
    }

    public int getApp_light2() {
        return app_light2;
    }

    public void setApp_light2(int app_light2) {
        this.app_light2 = app_light2;
    }

    public int getFlag_cctv1() {
        return flag_cctv1;
    }

    public void setFlag_cctv1(int flag_cctv1) {
        this.flag_cctv1 = flag_cctv1;
    }

    public int getFlag_cctv2() {
        return flag_cctv2;
    }

    public void setFlag_cctv2(int flag_cctv2) {
        this.flag_cctv2 = flag_cctv2;
    }

    public int getApp_cctv1() {
        return app_cctv1;
    }

    public void setApp_cctv1(int app_cctv1) {
        this.app_cctv1 = app_cctv1;
    }

    public int getApp_cctv2() {
        return app_cctv2;
    }

    public void setApp_cctv2(int app_cctv2) {
        this.app_cctv2 = app_cctv2;
    }

    public int getFlag_fan() {
        return flag_fan;
    }

    public void setFlag_fan(int flag_fan) {
        this.flag_fan = flag_fan;
    }

    public int getFlag_window() {
        return flag_window;
    }

    public void setFlag_window(int flag_window) {
        this.flag_window = flag_window;
    }

    public int getFlag_door() {
        return flag_door;
    }

    public void setFlag_door(int flag_door) {
        this.flag_door = flag_door;
    }

    public int getFlag_light1() {
        return flag_light1;
    }

    public void setFlag_light1(int flag_light1) {
        this.flag_light1 = flag_light1;
    }

    public int getFlag_light2() {
        return flag_light2;
    }

    public void setFlag_light2(int flag_light2) {
        this.flag_light2 = flag_light2;
    }

    public int getApp_fan() {
        return app_fan;
    }

    public void setApp_fan(int app_fan) {
        this.app_fan = app_fan;
    }

    public int getApp_window() {
        return app_window;
    }

    public void setApp_window(int app_window) {
        this.app_window = app_window;
    }

    public int getApp_door() {
        return app_door;
    }

    public void setApp_door(int app_door) {
        this.app_door = app_door;
    }

    public String getColorHex1() {
        return colorHex1;
    }

    public void setColorHex1(String colorHex1) {
        this.colorHex1 = colorHex1;
    }

    public String getColorHex2() {
        return colorHex2;
    }

    public void setColorHex2(String colorHex2) {
        this.colorHex2 = colorHex2;
    }

    public int getLight1_r() {
        return light1_r;
    }

    public void setLight1_r(int light1_r) {
        this.light1_r = light1_r;
    }

    public int getLight1_g() {
        return light1_g;
    }

    public void setLight1_g(int light1_g) {
        this.light1_g = light1_g;
    }

    public int getLight1_b() {
        return light1_b;
    }

    public void setLight1_b(int light1_b) {
        this.light1_b = light1_b;
    }

    public int getLight2_r() {
        return light2_r;
    }

    public void setLight2_r(int light2_r) {
        this.light2_r = light2_r;
    }

    public int getLight2_g() {
        return light2_g;
    }

    public void setLight2_g(int light2_g) {
        this.light2_g = light2_g;
    }

    public int getLight2_b() {
        return light2_b;
    }

    public void setLight2_b(int light2_b) {
        this.light2_b = light2_b;
    }
}
