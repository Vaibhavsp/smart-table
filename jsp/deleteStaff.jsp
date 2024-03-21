<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ include file="DB_Connection.jsp"%>
<%
    String StaffName = request.getParameter("StaffName");
        
        try 
        {
            String sql = "delete from staffdetail where StaffName = ?";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, StaffName);
            
            int row = pstmt.executeUpdate();
            if (row > 0) {
                response.sendRedirect("staff.jsp");
            }
        } catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
%>