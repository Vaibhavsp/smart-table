/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig(maxFileSize = 16177215)
public class addStaff extends HttpServlet 
{
    private String dbURL = "jdbc:mysql://localhost:3306/food_factory";
    private String dbUser = "root";
    private String dbPass = "root";
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       String StaffName = request.getParameter("StaffName");
        String StaffEmail = request.getParameter("StaffEmail");
        String Staffmobile = request.getParameter("Staffmobile");
        String Staffsalary = request.getParameter("Staffsalary");
        String StaffType = request.getParameter("StaffType");
        String StaffInfo = request.getParameter("StaffInfo");
        
        InputStream inputStream = null;

        Part filePart = request.getPart("photo1");
        
        if (filePart != null) 
        {
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
            inputStream = filePart.getInputStream();
        }
        
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client

        try 
        {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            String sql = "insert into staffdetail(StaffName, StaffEmail , Staffmobile, Staffsalary, StaffType, StaffInfo, img) value(?,?,?,?,?,?,?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, StaffName);
            pstmt.setString(2, StaffEmail);
            pstmt.setString(3, Staffmobile);
            pstmt.setString(4, Staffsalary);
            pstmt.setString(5, StaffType);
            pstmt.setString(6, StaffInfo);
            
            if (inputStream != null) {
                pstmt.setBlob(7, inputStream);
            }

            int row = pstmt.executeUpdate();
            if (row > 0) {
                response.sendRedirect("staff.jsp");
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        } 
    }
}
