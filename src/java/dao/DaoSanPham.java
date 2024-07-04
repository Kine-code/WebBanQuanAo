/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.SanPham;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hieu.Nguyxn
 */
public class DaoSanPham {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
//    public static void main(String[] args) {
//        DaoSanPham daosp = new DaoSanPham();
//        System.out.println(daosp.getAllSanPhamByID("1"));
//    }
//    
    public List<SanPham> getAllSanPham() {
        List<SanPham> list = new ArrayList<>();
        String query = "select * from SanPham";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new SanPham(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4),
                        rs.getString(5), rs.getFloat(6), rs.getString(7), rs.getInt(8)));
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    public SanPham getAllSanPhamByID(String sanPhamid) {
         String query = "select * from SanPham where [sanpham_id] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, sanPhamid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new SanPham(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4),
                        rs.getString(5), rs.getFloat(6), rs.getString(7), rs.getInt(8));
            }
            
        } catch (Exception e) {
        }
        return null;
    }

    public List<SanPham> getAllSanPhamByDMSP(String dmsp) {
        List<SanPham> list = new ArrayList<>();
        String query = "select * from SanPham where [danhmuc_id] like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + dmsp + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new SanPham(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4),
                        rs.getString(5), rs.getFloat(6), rs.getString(7), rs.getInt(8)));
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    
    public SanPham getAllSanPhamByMSP(String msp) {
        List<SanPham> list = new ArrayList<>();
        String query = "select * from SanPham where [sanpham_id] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, msp);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new SanPham(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4),
                        rs.getString(5), rs.getFloat(6), rs.getString(7), rs.getInt(8));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public SanPham getSanPhamByIdSanPham(String sanPhamid){
        String query = "  select * from SanPham where sanpham_id=?";
        try{
             conn = new DBContext().getConnection();
             ps = conn.prepareStatement(query);
             ps.setString(1,sanPhamid);
             rs= ps.executeQuery();
             while (rs.next()){
                 return new SanPham(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getFloat(6),rs.getString(7),rs.getInt(8));
             }
            }catch (Exception e){
                
            }
        return null;
    }
    public void updateSanPham(String sanPhamid, String tensanpham ,String motasanpham ,String soluong, String size,String giatien,String anh, String danhmuc_id){
        String query = "update SanPham set tensanpham = ?, motasanpham = ?, soluong=?, size = ?, giatien = ?, anh=?, danhmuc_id=? where sanpham_id  = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,tensanpham);
            ps.setString(2,motasanpham);
            ps.setString(3,soluong);
            ps.setString(4,size);
            ps.setString(5,giatien);
            ps.setString(6,anh);
            ps.setString(7,danhmuc_id);
            ps.setString(8,sanPhamid);
            ps.executeUpdate();
        }catch (Exception e){
        
        }
    }
    public void deleteSanPham(String sanPhamid){
        String query = "delete from SanPham where sanpham_id = ?";
        try {
            //mở connect
            conn = new DBContext().getConnection();
            //trỏ query vào db
            ps = conn.prepareStatement(query);
            //truyền id vào query
            ps.setString(1, sanPhamid);
            ps.executeUpdate();
        }catch (Exception e){
            
        }
    }
    public void insertSanPham( String tensanpham ,String motasanpham ,String soluong, String size,String giatien,String anh, String danhmuc_id){
        String query = "  insert into SanPham values(?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, tensanpham);
            ps.setString(2, motasanpham);
            ps.setString(3, soluong);
            ps.setString(4, size);
            ps.setString(5, giatien);
            ps.setString(6, anh);
            ps.setString(7, danhmuc_id);
            ps.executeUpdate();
        }catch (Exception e){
            
        }
    }
}
