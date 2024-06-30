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
}
