/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.DonHang;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;

public class DaoDonHang {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<DonHang> getAllDonHang() {
        List<DonHang> list = new ArrayList<>();
        String query = "select * from DonHang";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new DonHang(rs.getInt(1), rs.getInt(2), rs.getDate(3), rs.getFloat(4), rs.getString(5)));
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public void insertDonHang(String khachHang_id, String ngayDatHang, String tongTien, String trangThai) {
        String query = "insert into DonHang values(?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, khachHang_id);
            ps.setString(2, ngayDatHang);
            ps.setString(3, tongTien);
            ps.setString(4, trangThai);

            ps.executeUpdate();
        } catch (Exception e) {

        }
    }
    public void deleteDonHang(String donHang_id){
        String query = "delete from DonHang where donHang_id = ?";
        try {
            //mở connect
            conn = new DBContext().getConnection();
            //trỏ query vào db
            ps = conn.prepareStatement(query);
            //truyền id vào query
            ps.setString(1, donHang_id);
            ps.executeUpdate();
        }catch (Exception e){
            
        }
    }

}
