/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Hieu.Nguyxn
 */
public class Account {
    private int account_id;
    private String userName;
    private String passWord;
    private String hoten;
    private String email;
    private String sodienthoai;
    private String diachi;
    private boolean isSell;
    private boolean isAdmin;

    public Account(int account_id, String userName, String passWord, String hoten, String email, String sodienthoai, String diachi, boolean isSell, boolean isAdmin) {
        this.account_id = account_id;
        this.userName = userName;
        this.passWord = passWord;
        this.hoten = hoten;
        this.email = email;
        this.sodienthoai = sodienthoai;
        this.diachi = diachi;
        this.isSell = isSell;
        this.isAdmin = isAdmin;
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSodienthoai() {
        return sodienthoai;
    }

    public void setSodienthoai(String sodienthoai) {
        this.sodienthoai = sodienthoai;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public boolean isIsSell() {
        return isSell;
    }

    public void setIsSell(boolean isSell) {
        this.isSell = isSell;
    }

    public boolean isIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "Account{" + "account_id=" + account_id + ", userName=" + userName + ", passWord=" + passWord + ", hoten=" + hoten + ", email=" + email + ", sodienthoai=" + sodienthoai + ", diachi=" + diachi + ", isSell=" + isSell + ", isAdmin=" + isAdmin + '}';
    }

   
}
