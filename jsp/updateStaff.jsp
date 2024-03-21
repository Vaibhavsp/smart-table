<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ include file="DB_Connection.jsp"%>
<%
    String StaffName = request.getParameter("StaffName");
        String StaffEmail = request.getParameter("StaffEmail");
        String Staffmobile = request.getParameter("Staffmobile");
        String Staffsalary = request.getParameter("Staffsalary");
        String StaffType = request.getParameter("StaffType");
        String StaffInfo = request.getParameter("StaffInfo");
        
        try 
        {
            String sql = "update staffdetail set StaffEmail = ?, Staffmobile = ?, Staffsalary = ?, StaffType = ?, StaffInfo = ? where StaffName = ?";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, StaffEmail);
            pstmt.setString(2, Staffmobile);
            pstmt.setString(3, Staffsalary);
            pstmt.setString(4, StaffType);
            pstmt.setString(5, StaffInfo);
            pstmt.setString(6, StaffName);
            
            int row = pstmt.executeUpdate();
            if (row > 0) {
                response.sendRedirect("staff.jsp");
            }
        } catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
%>