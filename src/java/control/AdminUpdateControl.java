/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DaoDanhMucSanPham;
import dao.DaoSanPham;
import dao.DaoAccount;
import entity.Account;
import entity.DanhMucSanPham;
import entity.SanPham;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Hieu.Nguyxn
 */
@WebServlet(name = "AdminUpdateControl", urlPatterns = {"/aupdatecontrol"})
public class AdminUpdateControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String btnname = request.getParameter("btnname");
        
        //San Pham
        dao.DaoSanPham dao = new DaoSanPham();
        String update = request.getParameter("sid");
        //Danh Muc
        dao.DaoDanhMucSanPham daodm = new DaoDanhMucSanPham();
        //Account
        DaoAccount daoacc = new DaoAccount();
        
        switch (btnname) {
            case "btnsuasp":
            SanPham spham = dao.getSanPhamByIdSanPham(update);
            request.setAttribute("sp", spham);
            request.setAttribute("btnname", btnname);
            request.getRequestDispatcher("update.jsp").forward(request, response);
                break;
            case "btnSanPham": 
                String psanPhamid = request.getParameter("sanPhamid");
                String ptensanpham = request.getParameter("tensanpham");
                String pmotasanpham = request.getParameter("motasanpham");
                String psoluong = request.getParameter("soluong");
                String psize = request.getParameter("size");
                String pgiatien = request.getParameter("giatien");
                String panh = request.getParameter("anh");
                String pdanhmuc_id = request.getParameter("danhmuc_id");
                dao.updateSanPham(psanPhamid, ptensanpham, pmotasanpham, psoluong, psize, pgiatien, panh, pdanhmuc_id);
                response.sendRedirect("/WebBanQuanAo/ashowcontrol?btnname=btnsanpham");
            break;   
            case "btnsuadm":
               DanhMucSanPham dmuc = daodm.getDanhMucByIdDanhMuc(update);
               request.setAttribute("dm", dmuc);
               request.setAttribute("btnname", btnname);
               request.getRequestDispatcher("update.jsp").forward(request, response);
            break;
            case "btnDanhMuc":
                String ddanhMuc_Id = request.getParameter("danhMuc_Id");
                String dtenDanhMuc = request.getParameter("tenDanhMuc");
                String dmoTa = request.getParameter("moTa");
                daodm.updateDanhMuc(ddanhMuc_Id, dtenDanhMuc, dmoTa);
                response.sendRedirect("/WebBanQuanAo/ashowcontrol?btnname=danhmucsanpham");
            break;
            case "btnsuaacc":
                Account acc = daoacc.getAccountByIdAccount(update);
                request.setAttribute("acc", acc);
                request.setAttribute("btnname", btnname);
                request.getRequestDispatcher("update.jsp").forward(request, response);
            break;
            case "btnAcc":
                String aaccount_id = request.getParameter("account_id");
                String auserName = request.getParameter("userName");
                String apassWord = request.getParameter("passWord");
                String ahoten = request.getParameter("hoten");
                String aemail = request.getParameter("email");
                String asodienthoai = request.getParameter("sodienthoai");
                String adiachi = request.getParameter("diachi");
                String achucVu = request.getParameter("chucVu");
                daoacc.updateAccount(aaccount_id, auserName, apassWord, ahoten, aemail, asodienthoai, adiachi, achucVu);
                response.sendRedirect("/WebBanQuanAo/ashowcontrol?btnname=account");
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

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
