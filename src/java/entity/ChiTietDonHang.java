/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author DuongVu
 */
public class ChiTietDonHang {
    private int chiTietDonHang_id;
    private int donHang_id;
    private int sanPham_id;
    private int soLuong;
    private float giaBan;

    public ChiTietDonHang(int chiTietDonHang_id, int donHang_id, int sanPham_id, int soLuong, float giaBan) {
        this.chiTietDonHang_id = chiTietDonHang_id;
        this.donHang_id = donHang_id;
        this.sanPham_id = sanPham_id;
        this.soLuong = soLuong;
        this.giaBan = giaBan;
    }

    public int getChiTietDonHang_id() {
        return chiTietDonHang_id;
    }

    public void setChiTietDonHang_id(int chiTietDonHang_id) {
        this.chiTietDonHang_id = chiTietDonHang_id;
    }

    public int getDonHang_id() {
        return donHang_id;
    }

    public void setDonHang_id(int donHang_id) {
        this.donHang_id = donHang_id;
    }

    public int getSanPham_id() {
        return sanPham_id;
    }

    public void setSanPham_id(int sanPham_id) {
        this.sanPham_id = sanPham_id;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public float getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(float giaBan) {
        this.giaBan = giaBan;
    }

    @Override
    public String toString() {
        return "ChiTietDonHang{" + "chiTietDonHang_id=" + chiTietDonHang_id + ", donHang_id=" + donHang_id + ", sanPham_id=" + sanPham_id + ", soLuong=" + soLuong + ", giaBan=" + giaBan + '}';
    }
    
}
