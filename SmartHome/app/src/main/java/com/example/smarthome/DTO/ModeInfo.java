package com.example.smarthome.DTO;

public class ModeInfo {
    private String mode;

    private int inLight1;
    private int inLight2;
    private int inFan;
    private int inDoor;
    private int inWindow;
    private int inCCTV;

    private int outLight1;
    private int outLight2;
    private int outFan;
    private int outDoor;
    private int outWindow;
    private int outCCTV;

    private int sleepLight1;
    private int sleepLight2;
    private int sleepFan;
    private int sleepDoor;
    private int sleepWindow;
    private int sleepCCTV;

    public void ModeInfo(int i){
        mode = "in";
        inLight1 = inLight2 = inFan = inDoor = inWindow = inCCTV = i;
        outLight1 = outLight2 = outFan = outDoor = outWindow = outCCTV = i;
        sleepLight1 = sleepLight2 = sleepFan = sleepDoor = sleepWindow = sleepCCTV = i;
    }
    public void ModeInfo(){}

    public String getMode() {
        return mode;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

    public int getInLight1() {
        return inLight1;
    }

    public void setInLight1(int inLight1) {
        this.inLight1 = inLight1;
    }

    public int getInLight2() {
        return inLight2;
    }

    public void setInLight2(int inLight2) {
        this.inLight2 = inLight2;
    }

    public int getInFan() {
        return inFan;
    }

    public void setInFan(int inFan) {
        this.inFan = inFan;
    }

    public int getInDoor() {
        return inDoor;
    }

    public void setInDoor(int inDoor) {
        this.inDoor = inDoor;
    }

    public int getInWindow() {
        return inWindow;
    }

    public void setInWindow(int inWindow) {
        this.inWindow = inWindow;
    }

    public int getInCCTV() {
        return inCCTV;
    }

    public void setInCCTV(int inCCTV) {
        this.inCCTV = inCCTV;
    }

    public int getOutLight1() {
        return outLight1;
    }

    public void setOutLight1(int outLight1) {
        this.outLight1 = outLight1;
    }

    public int getOutLight2() {
        return outLight2;
    }

    public void setOutLight2(int outLight2) {
        this.outLight2 = outLight2;
    }

    public int getOutFan() {
        return outFan;
    }

    public void setOutFan(int outFan) {
        this.outFan = outFan;
    }

    public int getOutDoor() {
        return outDoor;
    }

    public void setOutDoor(int outDoor) {
        this.outDoor = outDoor;
    }

    public int getOutWindow() {
        return outWindow;
    }

    public void setOutWindow(int outWindow) {
        this.outWindow = outWindow;
    }

    public int getOutCCTV() {
        return outCCTV;
    }

    public void setOutCCTV(int outCCTV) {
        this.outCCTV = outCCTV;
    }

    public int getSleepLight1() {
        return sleepLight1;
    }

    public void setSleepLight1(int sleepLight1) {
        this.sleepLight1 = sleepLight1;
    }

    public int getSleepLight2() {
        return sleepLight2;
    }

    public void setSleepLight2(int sleepLight2) {
        this.sleepLight2 = sleepLight2;
    }

    public int getSleepFan() {
        return sleepFan;
    }

    public void setSleepFan(int sleepFan) {
        this.sleepFan = sleepFan;
    }

    public int getSleepDoor() {
        return sleepDoor;
    }

    public void setSleepDoor(int sleepDoor) {
        this.sleepDoor = sleepDoor;
    }

    public int getSleepWindow() {
        return sleepWindow;
    }

    public void setSleepWindow(int sleepWindow) {
        this.sleepWindow = sleepWindow;
    }

    public int getSleepCCTV() {
        return sleepCCTV;
    }

    public void setSleepCCTV(int sleepCCTV) {
        this.sleepCCTV = sleepCCTV;
    }
}
