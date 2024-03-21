<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ include file="DB_Connection.jsp"%>
<%
        String id = request.getParameter("id");
        String statusvalue = request.getParameter("statusvalue");
        String order_status = request.getParameter("orderstatus");
        try 
        {
            String sql = "update orderdetail set order_status=?, review_status = ? where oid = ?";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, statusvalue);
            pstmt.setString(2, order_status);
            pstmt.setString(3, id);
            
            int row = pstmt.executeUpdate();
            if (row > 0) {
                response.sendRedirect("order_ongoing.jsp");
            }
        } catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
%>