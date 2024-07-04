/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DaoDanhMucSanPham;
import dao.DaoSanPham;
import dao.*;
import entity.DonHang;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

@WebServlet(name = "AdminAddControl", urlPatterns = {"/aaddcontrol"})
public class AdminAddControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String btnThem = request.getParameter("btnname");
        switch (btnThem) {
            case "btnSanPham":
                String stensanpham = request.getParameter("tensanpham");
                String smotasanpham = request.getParameter("motasanpham");
                String ssoluong = request.getParameter("soluong");
                String ssize = request.getParameter("size");
                String sgiatien = request.getParameter("giatien");
                String sanh = request.getParameter("anh");
                String sdanhmuc_id = request.getParameter("danhmuc_id");
                DaoSanPham dao = new DaoSanPham();
                dao.insertSanPham(stensanpham, smotasanpham, ssoluong, ssize, sgiatien, sanh, sdanhmuc_id);
                response.sendRedirect("/WebBanQuanAo/ashowcontrol?btnname=btnsanpham");
                break;
            case "danhmucsanpham":
                String stenDanhMuc = request.getParameter("tenDanhMuc");
                String smota = request.getParameter("mota");
                dao.DaoDanhMucSanPham daodm = new DaoDanhMucSanPham();
                daodm.insertDanhMuc(stenDanhMuc, smota);
                response.sendRedirect("/WebBanQuanAo/ashowcontrol?btnname=danhmucsanpham");
                break;
            case "btnAccount":
                String auserName = request.getParameter("userName");
                String apassWord = request.getParameter("passWord");
                String ahoten = request.getParameter("hoten");
                String aemail = request.getParameter("email");
                String asodienthoai = request.getParameter("sodienthoai");
                String adiachi = request.getParameter("diachi");
                String achucVu = request.getParameter("chucVu");
                DaoAccount daoacc = new DaoAccount();
                daoacc.insertAccount(auserName, apassWord, ahoten, aemail, asodienthoai, adiachi, achucVu);
                response.sendRedirect("/WebBanQuanAo/ashowcontrol?btnname=account");
                break;
            case "btnDonHang":
                String dkhachHang_id = request.getParameter("khachHang_id");
                String dngayDatHang = request.getParameter("ngayDatHang");
                String dtongTien = request.getParameter("tongTien");
                String dtrangThai = request.getParameter("trangThai");
                DaoDonHang daodh = new DaoDonHang();
                daodh.insertDonHang(dkhachHang_id, dngayDatHang, dtongTien, dtrangThai);
                if(dtrangThai != null)
                    response.sendRedirect("/WebBanQuanAo/ashowcontrol?btnname=donhang");
                break;
            default:
                throw new AssertionError();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

//    public static void main(String[] args) {
//        DaoDonHang daodh = new DaoDonHang();
//        List<DonHang> ListDH = daodh.getAllDonHang();
//        daodh.insertDonHang("1", "2005/12/21", "1", "1");
//        for (DonHang donHang : ListDH) {
//                    System.out.println(donHang);
//
//        }
//        
//    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
