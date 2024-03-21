<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ include file="DB_Connection.jsp"%>
<%
    String dishName = request.getParameter("dishName");
        String amount = request.getParameter("amount");
        String FoodCategory = request.getParameter("FoodCategory");
        String MenuCategory = request.getParameter("MenuCategory");
        String info = request.getParameter("info");
        
        try 
        {
            String sql = "update fooddetails set amount = ?, FoodCategory = ?, MenuCategory = ?, info = ? where dishName = ?";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, amount);
            pstmt.setString(2, FoodCategory);
            pstmt.setString(3, MenuCategory);
            pstmt.setString(4, info);
            pstmt.setString(5, dishName);
            
            int row = pstmt.executeUpdate();
            if (row > 0) {
                response.sendRedirect("menu.jsp");
            }
        } catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
%>