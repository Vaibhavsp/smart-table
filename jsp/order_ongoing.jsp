<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="DB_Connection.jsp"%>
<!DOCTYPE html>
<html lang="en">
    <!-- Mirrored from uitheme.net/zipto/home-1.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 06 Feb 2021 10:20:29 GMT -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0">

        <!-- Site Metas -->
        <title>Food Funday Restaurant - One page HTML Responsive</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Site Icons -->
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
        <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Site CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- color -->
        <link id="changeable-colors" rel="stylesheet" href="css/colors/orange.css" />
        <!-- Modernizer -->
        <script src="js/modernizer.js"></script>
        <!-- Custom Stylesheet -->
        
        <script type="text/javascript" language="javascript" src="js/j1.js">
        </script>
        <script type="text/javascript" language="javascript" src="js/j2.js">
        </script>
        <script type="text/javascript" language="javascript" src="js/j3.js">
        </script>
        <script type="text/javascript" language="javascript" src="js/j4.js">
        </script>
        <script type="text/javascript" language="javascript" src="js/j5.js">
        </script>
        <script type="text/javascript" language="javascript" src="js/j6.js">
        </script>
        <script type="text/javascript" language="javascript" src="js/j7.js">
        </script>
        
        <SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() 
	{ 
		window.history.forward(); 
	}
</SCRIPT>

        <script>
            $(document).ready(function () {
                $('#example').DataTable({
                    dom: 'Bfrtip',
                    buttons: [
//                        'copyHtml5',
//                        'excelHtml5',
//                        'csvHtml5',
//                        'pdfHtml5'
                    ]
                });

            });
        </script>
        <link rel="stylesheet" type="text/css" href="css/c1.css">
        <link rel="stylesheet" type="text/css" href="css/c2.css">
    </head>
    <body>
      
        <div id="site-header">
            <header id="header" class="header-block-top">
                <div class="container">
                    <div class="row">
                        <div class="main-menu">
                             navbar 
                            <nav class="navbar navbar-default" id="mainNav">
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <div class="logo">
                                        <a class="navbar-brand js-scroll-trigger logo-header" href="#">
                                            <img src="images/logo.png" alt="">
                                        </a>
                                    </div>
                                </div>
                                <div id="navbar" class="navbar-collapse collapse">
                                    <ul class="nav navbar-nav navbar-right">
                                        <li ><a href="chef_home.jsp">Home</a></li>
                                        <li class="active"><a href="order_ongoing.jsp">Ongoing Order</a></li>
                                        <li><a href="order_completed.jsp">Completed Order</a></li>
                                        <li><a href="order_total.jsp">Total Order</a></li>
                                        <li><a href="chef_review.jsp">Review</a></li>
                                        <li><a href="food_login.jsp">Logout</a></li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </header> 
        </div>
        <div id="banner" class="banner1 full-screen-mode parallax" style="height: 25px;">
            <div class="container pr">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="banner-static">
                        <div class="banner-text">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
            <h2 class="block-title text-center">
                Ongoing Orders	
            </h2>
        </div>
        <br>
        
        <div class="container">
        <table id="example" class="display" style="width:100%">
            <thead>
                <tr>
                    <th>Sr. No</th>
                    <th>Customer Name</th>
                    <th>Table No</th>
                    <th>Dish Name</th>
                    <th>Menu Category</th>
                    <th>Quantity</th>
                    <th>Time</th>
                    <th>Preparing</th>
                    <th>Completed</th>
                </tr>
            </thead>
            <tbody>
                <%
                    PreparedStatement pstn = con.prepareStatement("SELECT distinct * FROM food_factory.orderdetail ordtl  join food_factory.customerdetail cdtl ON ordtl.mobile = cdtl.custMobile where order_status=0 order by oid asc");
                    ResultSet rst = pstn.executeQuery();
                    int no=1;
                    while (rst.next())
                    {  
                        %>
                            <tr>
                                <td><%out.println(no++);%></td>
                                <td><%=rst.getString(13)%></td>
                                <td><%=rst.getString(10)%></td>
                                <td><%=rst.getString(2)%></td>
                                <td><%=rst.getString(4)%></td>
                                <td><%=rst.getString(6)%></td>
                                    <script>
                                           function saveTime(id, tm)
                                           {
                                               
                                               if(confirm('Are you sure, You Accept This Order !!!!')) 
                                                {
                                                    
                                                    console.log(tm);
                                                    window.location.href = '<c:url value="/Updatetime.jsp"/>?times=' + tm+'&id='+id;
//                                                    alert("yiiii");
                                                }
                                           }
                                    </script>
                                    <td>
                                        <div class="reserve-book-btn" style="margin-top: -30px;">
                                            <a onclick ="saveTime(<%=rst.getString(1)%>,20);"  class="btn btn-primary" style="height: 40px;width: 75px;text-align: center;font-weight: bold;font-size: 14px;text-align: left;"> 20 Min</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                          </div>
                                    </td>
                                    <td>
                                        <div class="reserve-book-btn" style="margin-top: -30px;">
                                            <a href="updateChef_status.jsp?id=<%=rst.getString(1)%>&statusvalue=0&orderstatus=Food is being prepared"   class="btn btn-primary" style="height: 40px;width: 120px;text-align: center;font-weight: bold;font-size: 15px;">Preparing</a>
                                        </div>
                                    </td>
                                <td>
                                    <div class="reserve-book-btn" style="margin-top: -30px;">
                                        <a href="updateChef_status.jsp?id=<%=rst.getString(1)%>&statusvalue=1&orderstatus=Food is Ready to Serve" class="btn btn-primary" style="height: 40px;width: 120px;text-align: center;font-weight: bold;font-size: 15px;">Completed</a>
                                    </div>
                                </td>
                            </tr>
                        <%
                    }        
                %>
        </table>
        </div>
        
    </body>
</html>