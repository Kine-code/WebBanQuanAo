/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.*;
import entity.Account;
import context.DBContext;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hieu.Nguyxn
 */
public class DaoAccount {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account checkAccount(String userName, String passWord) {
        String query = "select * from Account where username = ? and password = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, passWord);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getString(7), rs.getInt(8));
            }

        } catch (Exception e) {
        }
        return null;
    }
    
    public static void main(String[] args) {
        DaoAccount dao = new DaoAccount();
        System.out.println(dao.checkAccount("admin", "123"));
    }
    

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        String query = "select * from Account";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(
                        rs.getInt(1), // account_id
                        rs.getString(2), // userName
                        rs.getString(3), // passWord
                        rs.getString(4), // hoten
                        rs.getString(5), // email
                        rs.getString(6), // sodienthoai
                        rs.getString(7), // diachi
                        rs.getInt(8) // isSell
                ));
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public void insertAccount(String userName, String passWord, String hoten, String email, String sodienthoai, String diachi, String chucVu) {
        String query = "  insert into Account values(?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, passWord);
            ps.setString(3, hoten);
            ps.setString(4, email);
            ps.setString(5, sodienthoai);
            ps.setString(6, diachi);
            ps.setString(7, chucVu);

            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void deleteAccount(String account_id) {
        String query = "delete from Account where account_id = ?";
        try {
            //mở connect
            conn = new DBContext().getConnection();
            //trỏ query vào db
            ps = conn.prepareStatement(query);
            //truyền id vào query
            ps.setString(1, account_id);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public Account getAccountByIdAccount(String account_id) {
        String query = "  select * from Account where account_id=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, account_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(
                        rs.getInt(1), // account_id
                        rs.getString(2), // userName
                        rs.getString(3), // passWord
                        rs.getString(4), // hoten
                        rs.getString(5), // email
                        rs.getString(6), // sodienthoai
                        rs.getString(7), // diachi
                        rs.getInt(8) // chucVu
                );
            }
        } catch (Exception e) {

        }
        return null;
    }

    public void updateAccount(String account_id, String userName, String passWord, String hoten, String email, String sodienthoai, String diachi, String chucVu) {
        String query = "update Account set userName = ?, passWord = ?, hoten=?, email = ?, sodienthoai = ?, diachi=?, chucVu=? where account_id= ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, passWord);
            ps.setString(3, hoten);
            ps.setString(4, email);
            ps.setString(5, sodienthoai);
            ps.setString(6, diachi);
            ps.setString(7, chucVu);
            ps.setString(8, account_id);

            ps.executeUpdate();
        } catch (Exception e) {

        }
    }
//    public void updateAccount1(String account_id, String userName, String passWord, String hoten, String email, String sodienthoai, String diachi) {
//        String query = "update Account set userName = ?, passWord = ?, hoten=?, email = ?, sodienthoai = ?, diachi=? where account_id= ?";
//        try {
//            conn = new DBContext().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1, userName);
//            ps.setString(2, passWord);
//            ps.setString(3, hoten);
//            ps.setString(4, email);
//            ps.setString(5, sodienthoai);
//            ps.setString(6, diachi);
//            ps.setString(8, account_id);
//
//            ps.executeUpdate();
//        } catch (Exception e) {
//
//        }
//    }
}
