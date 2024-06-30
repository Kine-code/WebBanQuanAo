/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Admin
 */
public class GioHang {

    private SanPham pro;
    private int soluong;//số lượng sản phẩm

    public GioHang(SanPham pro, int soluong) {
        this.pro = pro;
        this.soluong = soluong;
    }

    public GioHang() {
    }

    public SanPham getPro() {
        return pro;
    }

    public void setPro(SanPham pro) {
        this.pro = pro;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    @Override
    public String toString() {
        return "GioHang{" + "pro=" + pro + ", soluong=" + soluong + '}';
    }

    
}
