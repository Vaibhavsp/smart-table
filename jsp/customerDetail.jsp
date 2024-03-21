<%@page import="java.util.Random"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ include file="DB_Connection.jsp"%>
<%    String CustomerName = request.getParameter("CustomerName");
    String CustomerNumber = request.getParameter("CustomerNumber");
    Random random = new Random();int min = 1;
    int max = 5;
    
    session.setAttribute("tableNo", random.nextInt(max - min + 1) + min);
    session.setAttribute("mobile", CustomerNumber);
    session.setAttribute("name", CustomerName);
    SimpleDateFormat smf =new SimpleDateFormat("HH:MM:SS");
    try {
        String sql = "insert into customerdetail(custName, custMobile, cdate, cTime) values(?, ?, ?, ?)";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, CustomerName);
        pstmt.setString(2, CustomerNumber);
        pstmt.setString(3, String.valueOf(LocalDate.now()));
        pstmt.setString(4, String.valueOf(smf.format(new Date())));
        int row = pstmt.executeUpdate();
        if (row > 0) {
%>
<script>
    alert("Welcome To Food Factory");
    window.location = "index.jsp";
</script>
<%
//                response.sendRedirect("food.jsp");
        }
    } catch (SQLException ex) {
        ex.printStackTrace();
    }
%>