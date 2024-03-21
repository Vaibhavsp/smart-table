<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ include file="DB_Connection.jsp"%>
<%
    String dishName = request.getParameter("dishName");
        
        try 
        {
            String sql = "delete from fooddetails where dishName = ?";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, dishName);
            
            int row = pstmt.executeUpdate();
            if (row > 0) {
                response.sendRedirect("menu.jsp");
            }
        } catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
%>