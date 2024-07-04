/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.Date;

/**
 *
 * @author duongvu
 */
public class DonHang {
    private int donHang_id;
    private int khachHang_id;
    private Date ngayDatHang;
    private float tongTien;
    private String trangThai;

    public DonHang(int donHang_id, int khachHang_id, Date ngayDatHang, float tongTien, String trangThai) {
        this.donHang_id = donHang_id;
        this.khachHang_id = khachHang_id;
        this.ngayDatHang = ngayDatHang;
        this.tongTien = tongTien;
        this.trangThai = trangThai;
    }

    public int getDonHang_id() {
        return donHang_id;
    }

    public void setDonHang_id(int donHang_id) {
        this.donHang_id = donHang_id;
    }

    public int getKhachHang_id() {
        return khachHang_id;
    }

    public void setKhachHang_id(int khachHang_id) {
        this.khachHang_id = khachHang_id;
    }

    public Date getNgayDatHang() {
        return ngayDatHang;
    }

    public void setNgayDatHang(Date ngayDatHang) {
        this.ngayDatHang = ngayDatHang;
    }

    public float getTongTien() {
        return tongTien;
    }

    public void setTongTien(float tongTien) {
        this.tongTien = tongTien;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    @Override
    public String toString() {
        return "DonHang{" + "donHang_id=" + donHang_id + ", khachHang_id=" + khachHang_id + ", ngayDatHang=" + ngayDatHang + ", tongTien=" + tongTien + ", trangThai=" + trangThai + '}';
    }
    
    
}
