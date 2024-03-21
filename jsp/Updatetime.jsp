<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ include file="DB_Connection.jsp"%>
<%
    System.out.println("=====================");
    String tm = request.getParameter("times");
    String did = request.getParameter("id");
    System.out.println(tm+"=============="+did);
    
        try 
        {
            String sql = "update orderdetail set Dtime=? where oid = ?";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, tm);
            pstmt.setString(2, did);
            
            int row = pstmt.executeUpdate();
            if (row > 0) {
                response.sendRedirect("order_ongoing.jsp");
            }
        } catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
%>