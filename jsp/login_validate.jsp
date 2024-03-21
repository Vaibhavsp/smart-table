<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.*"%>
<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.text.ParseException"%>
<%@ include file="DB_Connection.jsp"%>
<%    
    String dt = "19-05-2023";
    Date dtcurr = new Date();
    SimpleDateFormat dftcurr = new SimpleDateFormat("dd-MM-yyyy");
    String currentdate = dftcurr.format(dtcurr);

    Date date1 = dftcurr.parse(dt);
    Date date2 = dftcurr.parse(currentdate);
    long diff = date2.getTime() - date1.getTime();
   // System.out.println("Days: " + TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS));
    int day = (int) TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS);
    
  //  if(day>=15)
   // {
  //      try
  //      {
  //          PreparedStatement pstmt1 = con.prepareStatement("DROP TABLE orderdetail");
  //          pstmt1.executeUpdate();
  //          response.sendRedirect("food_login.jsp");
    //    }
  //      catch(Exception e1)
  //      {
  //          System.out.println(e1);
  //      }
  //  }
  //  else
  //  {
    

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        session.setAttribute("Userid", username);

        if(username.equals("admin") && password.equals("1122"))
        {
                response.sendRedirect("admin_home.jsp");
        }
        else if(username.equals("chef") && password.equals("1122"))
        {
                response.sendRedirect("chef_home.jsp");
        }
        else
        {
            %>
                <script>
                    alert("Please Enter Valid Detailed");
                    window.location = "login.jsp";
                </script>
            <%
        }
    //}
        
%>