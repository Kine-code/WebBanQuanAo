/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.DanhMucSanPham;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author Hieu.Nguyxn
 */
public class DaoDanhMucSanPham {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<DanhMucSanPham> getAllDanhMucSanPham(){
        List<DanhMucSanPham> list = new ArrayList<>();
        String query = "select * from danhmucsanpham";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new DanhMucSanPham(rs.getInt(1), rs.getString(2), rs.getString(3)));   
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    
    public void insertDanhMuc( String tenDanhMuc ,String moTa){
        String query = "  insert into DanhMucSanPham values(?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, tenDanhMuc);
            ps.setString(2, moTa);
            ps.executeUpdate();
        }catch (Exception e){ 
        }
    }
    
    public void deleteDanhMuc(String danhMuc_Id){
        String query = "delete from DanhMucSanPham where danhMuc_Id = ?";
        try {
            //mở connect
            conn = new DBContext().getConnection();
            //trỏ query vào db
            ps = conn.prepareStatement(query);
            //truyền id vào query
            ps.setString(1, danhMuc_Id);
            ps.executeUpdate();
        }catch (Exception e){
            
        }
    }
    
    public DanhMucSanPham getDanhMucByIdDanhMuc(String danhMuc_Id){
        String query = "  select * from DanhMucSanPham where danhMuc_Id=?";
        try{
             conn = new DBContext().getConnection();
             ps = conn.prepareStatement(query);
             ps.setString(1,danhMuc_Id);
             rs= ps.executeQuery();
             while (rs.next()){
                 return new DanhMucSanPham(rs.getInt(1),rs.getString(2),rs.getString(3));
             }
            }catch (Exception e){
                
            }
        return null;
    }
    
    public void updateDanhMuc(String danhMuc_Id,String tenDanhMuc,String moTa){
        String query = "update DanhMucSanPham set tenDanhMuc = ?, moTa=? where danhMuc_Id  = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,tenDanhMuc);
            ps.setString(2,moTa);
            ps.setString(3,danhMuc_Id);
            
            ps.executeUpdate();
        }catch (Exception e){
        
        }
    }
}
