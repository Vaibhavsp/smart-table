<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ include file="DB_Connection.jsp"%>
<%
    String type = request.getParameter("type");
    String id = request.getParameter("id");
    String qty = request.getParameter("qty");
    System.out.println(type+ "--------------"+id+"---------------------"+qty);
    if(type.equalsIgnoreCase("a"))
    {
    try 
         {
            int a = Integer.parseInt(qty)+1;
             // constructs SQL statement
             String sql = "update orderdetail set qnt = ? where oid = ?";
             PreparedStatement pstmt = con.prepareStatement(sql);
             pstmt.setString(1, String.valueOf(a));
             pstmt.setInt(2, Integer.valueOf(id));
             int row = pstmt.executeUpdate();
             if (row > 0) {
                 %>
 <script>
     window.location = "myorder.jsp";
 </script>
 <%
 //                response.sendRedirect("southindian.jsp");
             }
         } catch (SQLException ex) {
             ex.printStackTrace();
         }
}
else
{
try 
         {
            int a = Integer.parseInt(qty)-1;
             // constructs SQL statement
             String sql = "update orderdetail set qnt = ? where oid = ?";
             PreparedStatement pstmt = con.prepareStatement(sql);
             pstmt.setString(1, String.valueOf(a));
                pstmt.setInt(2, Integer.valueOf(id));
             int row = pstmt.executeUpdate();
             if (row > 0) {
                 %>
 <script>
     window.location = "myorder.jsp";
 </script>
 <%
 //                response.sendRedirect("southindian.jsp");
             }
         } catch (SQLException ex) {
             ex.printStackTrace();
         }
}

%>