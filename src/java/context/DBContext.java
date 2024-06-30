/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package context;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

public class DBContext {
   protected Connection conn;
    public Connection getConnection()
    {
        try
        {
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");         
            String connectionurl= "jdbc:sqlserver://localhost:1433; databaseName=QuanLyDeCao; encrypt=false" ;
            conn=DriverManager.getConnection(connectionurl,"sa","123456");    
        }
           catch(Exception ex)
            {
                ex.printStackTrace();
                JOptionPane.showMessageDialog(null,"Không thể kết nối tới CSDL");
            } 
        return conn;
    }
    public void getClose()
    {
        try {
            conn.close();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Không thể đóng kết nối tới CSDL");
        }
    
    }
//    public static void main(String[] args) {
//       DBContext dBContext = new DBContext();
//       Connection conn = dBContext.getConnection();
//        System.out.println(conn);
//    }
}
