
<%@page import="org.apache.tomcat.util.http.fileupload.FileUtils"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@page import="java.io.IOException"%>
<%@page import="java.nio.file.Files"%>
<%@page import="java.util.*" %>
<%@page import="java.io.File" %>
<%@page import="java.io.FileOutputStream" %>
<%@page import="net.glxn.qrgen.QRCode" %>
<%@page import="net.glxn.qrgen.image.ImageType" %>
<%@page import="java.io.*" %>
<%@page import="java.io.File"%>
<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@include file="DB_Connection.jsp"%>
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
    </head>
    
    <body>
        <div id="loading">
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
                                        <li ><a href="food.jsp">Home</a></li>
                                        <li><a href="food.jsp">Food Order</a></li>
                                        <li ><a href="myorder.jsp">My Order</a></li>
                                        <li><a href="bills.jsp">My Bills</a></li>
                                        <li class="active"><a href="review.jsp">Review</a></li>
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
                Add Review 	
            </h2>
        </div>
        <br>

        <div id="fh5co-tours" class="fh5co-section-gray">
            <div class="container">
                <%  String pno = null;     
                    try {
                        PreparedStatement pstn1 = con.prepareStatement("select * from orderdetail where mobile=?");
                        pstn1.setString(1, (String)session.getAttribute("mobile").toString());
                        ResultSet rs = pstn1.executeQuery();
                        while (rs.next()) {
%>
                <div class="card mb-3">
                        <img src="images/food.png" class="" alt="Card image cap" style="height: 110px; width: 110px; margin-bottom: -120px;">
                        <div class="card-body" style=" margin-left: 220px;">
                        <h1 class="card-title" style="font-style: normal; font-size: 25px;"><b><%=rs.getString(2)%></b></h1>
                        <p class="card-text" style="font-size: 20px; ">Rs. <%=rs.getString(5)%> .00</p>
                        <p class="card-text" style="font-size: 20px; margin-top: -15px;"> Delicious <%=rs.getString(3)%> Food.
                        <div class="reserve-book-btn" style="margin-left: 470px;margin-top: -120px;">
                            <a href="reviewsave.jsp?dname=<%=rs.getString(2)%>" class="btn btn-primary" style="height: 50px;width: 150px;font-weight: bold;font-size: 20px;">Add Review</a>
                        </div> <br /><br />
                    </div>
                </div>
                <%
                       
}
                    } catch (Exception e) {
                        System.out.println(e);
                    }

                %>
            </div>
        </div>

        <div id="footer" class="footer-main">
            <div class="footer-box pad-top-70">
                <div class="container">
                    <div class="row">
                        <div class="footer-in-main">
                            <div class="footer-logo">
                                <div class="text-center">
                                    <img src="images/logo.png" alt="" />
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="footer-box-a">
                                    <h3>About Us</h3>
                                    <p>Aenean commodo ligula eget dolor aenean massa. Cum sociis nat penatibu set magnis dis parturient montes.</p>
                                    <ul class="socials-box footer-socials pull-left">
                                        <li>
                                            <a href="#">
                                                <div class="social-circle-border"><i class="fa  fa-facebook"></i></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="social-circle-border"><i class="fa fa-twitter"></i></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="social-circle-border"><i class="fa fa-google-plus"></i></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="social-circle-border"><i class="fa fa-pinterest"></i></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="social-circle-border"><i class="fa fa-linkedin"></i></div>
                                            </a>
                                        </li>
                                    </ul>

                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="footer-box-b">
                                    <h3>New Menu</h3>
                                    <ul>
                                        <li><a href="#">Italian Bomba Sandwich</a></li>
                                        <li><a href="#">Double Dose of Pork Belly</a></li>
                                        <li><a href="#">Spicy Thai Noodles</a></li>
                                        <li><a href="#">Triple Truffle Trotters</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="footer-box-c">
                                    <h3>Contact Us</h3>
                                    <p>
                                        <i class="fa fa-map-signs" aria-hidden="true"></i>
                                        <span>6 E Esplanade, St Albans VIC 3021, Australia</span>
                                    </p>
                                    <p>
                                        <i class="fa fa-mobile" aria-hidden="true"></i>
                                        <span>
                                            +91 80005 89080 
                                        </span>
                                    </p>
                                    <p>
                                        <i class="fa fa-envelope" aria-hidden="true"></i>
                                        <span><a href="#">support@foodfunday.com</a></span>
                                    </p>
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="footer-box-d">
                                    <h3>Opening Hours</h3>

                                    <ul>
                                        <li>
                                            <p>Monday - Thursday </p>
                                            <span> 11:00 AM - 9:00 PM</span>
                                        </li>
                                        <li>
                                            <p>Friday - Saturday </p>
                                            <span>  11:00 AM - 5:00 PM</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="copyright" class="copyright-main">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <h6 class="copy-title"> Copyright &copy; 2017 Food Funday is powered by <a href="#" target="_blank"></a> </h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a href="#" class="scrollup" style="display: none;">Scroll</a>

        <section id="color-panel" class="close-color-panel">
            <a class="panel-button gray2"><i class="fa fa-cog fa-spin fa-2x"></i></a>
            <div class="segment">
                <h4 class="gray2 normal no-padding">Color Scheme</h4>
                <a title="orange" class="switcher orange-bg"></a>
                <a title="strong-blue" class="switcher strong-blue-bg"></a>
                <a title="moderate-green" class="switcher moderate-green-bg"></a>
                <a title="vivid-yellow" class="switcher vivid-yellow-bg"></a>
            </div>
        </section>

        <script src="js/all.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/custom.js"></script>
    </body>
</html>