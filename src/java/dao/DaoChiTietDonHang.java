/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.ChiTietDonHang;
import entity.DonHang;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DaoChiTietDonHang {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<ChiTietDonHang> getAllChiTietDonHang() {
        List<ChiTietDonHang> list = new ArrayList<>();
        String query = "select * from ChiTietDonHang";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ChiTietDonHang(
                        rs.getInt(1), // chiTietDonHang_id
                        rs.getInt(2), // donHang_id
                        rs.getInt(3), // sanPham_id
                        rs.getInt(4), // soLuong
                        rs.getFloat(5) // giaBan
                ));
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    
     public void deleteChiTietDonHang(String chiTietDonHang_id){
        String query = "delete from ChiTietDonHang where chiTietDonHang_id = ?";
        try {
            //mở connect
            conn = new DBContext().getConnection();
            //trỏ query vào db
            ps = conn.prepareStatement(query);
            //truyền id vào query
            ps.setString(1, chiTietDonHang_id);
            ps.executeUpdate();
        }catch (Exception e){
            
        }
    }
}
