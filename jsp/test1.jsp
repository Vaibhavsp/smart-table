<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ include file="DB_Connection.jsp"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <!-- Basic -->
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
                        'excelHtml5',
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
        <div id="loader">
            <div id="status"></div>
        </div>
        <div id="site-header">
            <header id="header" class="header-block-top">
                <div class="container">
                    <div class="row">
                        <div class="main-menu">
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
                                </div>s
                                <div id="navbar" class="navbar-collapse collapse">
                                    <ul class="nav navbar-nav navbar-right">
                                        <li ><a href="admin_home.jsp">Home</a></li>
                                        <li><a href="menu.jsp">Menu</a></li>
                                        <li><a href="staff.jsp">Staff</a></li>
                                        <li><a href="view_bills.jsp">View Bills</a></li>
                                        <li><a href="view_orders.jsp">View Orders</a></li>
                                        <li><a href="view_customer.jsp">View Customer</a></li>
                                        <li class="active"><a href="admin_review.jsp">Review</a></li>
                                        <li><a href="index.jsp">Logout</a></li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </header>
        </div>

        <div id="banner" class="banner1 full-screen-mode parallax">
            <div class="container pr">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="banner-static">
                        <div class="banner-text">
                            <div class="banner-cell">
                                <h1>Dinner with us  <span class="typer" id="some-id" data-delay="200" data-delim=":" data-words="Friends:Family:Officemates" data-colors="red"></span><span class="cursor" data-cursorDisplay="_" data-owner="some-id"></span></h1>
                                <h2>Accidental appearances </h2>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diem nonummy nibh euismod</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


           <div class="container">
        <table id="example" class="display" style="width:100%">
            <thead>
                <tr>
                    <th>Sr. No</th>
                    <th>Customer Name</th>
                    <th>Mobile No.</th>
                    <th>Visit Date</th>
                    <th>Visit Time</th>
                </tr>
            </thead>
            <tbody>
                <%
                    PreparedStatement pstn = con.prepareStatement("select * from customerdetail");
                    ResultSet rst = pstn.executeQuery();
                    int no=1;
                    while (rst.next())
                    {  
                        %>
                            <tr>
                                <td><%out.println(no++);%></td>
                                <td><%=rst.getString(2)%></td>
                                <td><%=rst.getString(3)%></td>
                                <td><%=rst.getString(4)%></td>
                                <td><%=rst.getString(5)%></td>
                            </tr>
                        <%
                    }        
                %>
        </table>

        </div>



        <!-- ALL JS FILES -->
        <script src="js/all.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!-- ALL PLUGINS -->
        <script src="js/custom.js"></script>
    </body>

</html>