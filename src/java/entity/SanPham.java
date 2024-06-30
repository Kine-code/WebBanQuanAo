/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Hieu.NGUYXN
 */
public class SanPham {
    private int sanPhamid;
    private String tensanpham;
    private String motasanpham;
    private int soluong;
    private String size;
    private float giatien;
    private String anh;
    private int danhmuc_id;

    public SanPham(int sanPhamid, String tensanpham, String motasanpham, int soluong, String size, float giatien, String anh, int danhmuc_id) {
        this.sanPhamid = sanPhamid;
        this.tensanpham = tensanpham;
        this.motasanpham = motasanpham;
        this.soluong = soluong;
        this.size = size;
        this.giatien = giatien;
        this.anh = anh;
        this.danhmuc_id = danhmuc_id;
    }

    public int getSanPhamid() {
        return sanPhamid;
    }

    public void setSanPhamid(int sanPhamid) {
        this.sanPhamid = sanPhamid;
    }

    public String getTensanpham() {
        return tensanpham;
    }

    public void setTensanpham(String tensanpham) {
        this.tensanpham = tensanpham;
    }

    public String getMotasanpham() {
        return motasanpham;
    }

    public void setMotasanpham(String motasanpham) {
        this.motasanpham = motasanpham;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public float getGiatien() {
        return giatien;
    }

    public void setGiatien(float giatien) {
        this.giatien = giatien;
    }

    public String getAnh() {
        return anh;
    }

    public void setAnh(String anh) {
        this.anh = anh;
    }

    public int getDanhmuc_id() {
        return danhmuc_id;
    }

    public void setDanhmuc_id(int danhmuc_id) {
        this.danhmuc_id = danhmuc_id;
    }

    @Override
    public String toString() {
        return "SanPham{" + "sanPhamid=" + sanPhamid + ", tensanpham=" + tensanpham + ", motasanpham=" + motasanpham + ", soluong=" + soluong + ", size=" + size + ", giatien=" + giatien + ", anh=" + anh + ", danhmuc_id=" + danhmuc_id + '}';
    }
}
