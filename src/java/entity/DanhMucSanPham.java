/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Hieu.Nguyxn
 */
public class DanhMucSanPham {
    private int danhMuc_Id;
    private String tenDanhMuc;
    private String moTa;

    public DanhMucSanPham(int danhMuc_Id, String tenDanhMuc, String moTa) {
        this.danhMuc_Id = danhMuc_Id;
        this.tenDanhMuc = tenDanhMuc;
        this.moTa = moTa;
    }

    public DanhMucSanPham() {
    }
    
    

    public int getDanhMuc_Id() {
        return danhMuc_Id;
    }

    public void setDanhMuc_Id(int danhMuc_Id) {
        this.danhMuc_Id = danhMuc_Id;
    }

    public String getTenDanhMuc() {
        return tenDanhMuc;
    }

    public void setTenDanhMuc(String tenDanhMuc) {
        this.tenDanhMuc = tenDanhMuc;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    @Override
    public String toString() {
        return "DanhMucSanPham{" + "danhMuc_Id=" + danhMuc_Id + ", tenDanhMuc=" + tenDanhMuc + ", moTa=" + moTa + '}';
    }
}
