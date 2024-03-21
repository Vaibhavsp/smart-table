package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Base64;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.text.DateFormat;
import java.util.Date;
import java.sql.*;
import java.sql.*;

public final class southindian_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/DB_Connection.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write('\n');
      out.write('\n');

    Connection con=null;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food_factory", "root", "root");
        //System.out.println("Connection Successful.................. jsp page");
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    
    

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("        <!-- Basic -->\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("\n");
      out.write("        <!-- Mobile Metas -->\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0\">\n");
      out.write("\n");
      out.write("        <!-- Site Metas -->\n");
      out.write("        <title>Food Funday Restaurant - One page HTML Responsive</title>\n");
      out.write("        <meta name=\"keywords\" content=\"\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("        <!-- Site Icons -->\n");
      out.write("        <link rel=\"shortcut icon\" href=\"images/favicon.ico\" type=\"image/x-icon\" />\n");
      out.write("        <link rel=\"apple-touch-icon\" href=\"images/apple-touch-icon.png\">\n");
      out.write("\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <!-- Site CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        <!-- Responsive CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/responsive.css\">\n");
      out.write("        <!-- color -->\n");
      out.write("        <link id=\"changeable-colors\" rel=\"stylesheet\" href=\"css/colors/orange.css\" />\n");
      out.write("\n");
      out.write("        <!-- Modernizer -->\n");
      out.write("        <script src=\"js/modernizer.js\"></script>\n");
      out.write("\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("          <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\n");
      out.write("          <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div id=\"loader\">\n");
      out.write("            <div id=\"status\"></div>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"site-header\">\n");
      out.write("            <header id=\"header\" class=\"header-block-top\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"main-menu\">\n");
      out.write("                            <nav class=\"navbar navbar-default\" id=\"mainNav\">\n");
      out.write("                                <div class=\"navbar-header\">\n");
      out.write("                                    <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar\" aria-expanded=\"false\" aria-controls=\"navbar\">\n");
      out.write("                                        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                                        <span class=\"icon-bar\"></span>\n");
      out.write("                                        <span class=\"icon-bar\"></span>\n");
      out.write("                                        <span class=\"icon-bar\"></span>\n");
      out.write("                                    </button>\n");
      out.write("                                    <div class=\"logo\">\n");
      out.write("                                        <a class=\"navbar-brand js-scroll-trigger logo-header\" href=\"#\">\n");
      out.write("                                            <img src=\"images/logo.png\" alt=\"\">\n");
      out.write("                                        </a>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div id=\"navbar\" class=\"navbar-collapse collapse\">\n");
      out.write("                                    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                                        <li ><a href=\"admin_home.jsp\">Home</a></li>\n");
      out.write("                                        <li class=\"active\"><a href=\"menu.jsp\">Menu</a></li>\n");
      out.write("                                        <li><a href=\"add_staff.jsp\">Staff</a></li>\n");
      out.write("                                        <li><a href=\"view_bills.jsp\">View Bills</a></li>\n");
      out.write("                                        <li><a href=\"view_orders.jsp\">View Orders</a></li>\n");
      out.write("                                        <li><a href=\"view_customer.jsp\">View Customer</a></li>\n");
      out.write("                                        <li><a href=\"review.jsp\">Review</a></li>\n");
      out.write("                                        <li><a href=\"index.jsp\">Logout</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                            </nav>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </header>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div id=\"banner\" class=\"banner full-screen-mode parallax\">\n");
      out.write("            <div class=\"container pr\">\n");
      out.write("                <div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">\n");
      out.write("                    <div class=\"banner-static\">\n");
      out.write("                        <div class=\"banner-text\">\n");
      out.write("                            <div class=\"banner-cell\">\n");
      out.write("                                <h1>Dinner with us  <span class=\"typer\" id=\"some-id\" data-delay=\"200\" data-delim=\":\" data-words=\"Friends:Family:Officemates\" data-colors=\"red\"></span><span class=\"cursor\" data-cursorDisplay=\"_\" data-owner=\"some-id\"></span></h1>\n");
      out.write("                                <h2>Accidental appearances </h2>\n");
      out.write("                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diem nonummy nibh euismod</p>\n");
      out.write("\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <!-- end banner-cell -->\n");
      out.write("                        </div>\n");
      out.write("                        <!-- end banner-text -->\n");
      out.write("                    </div>\n");
      out.write("                    <!-- end banner-static -->\n");
      out.write("                </div>\n");
      out.write("                <!-- end col -->\n");
      out.write("            </div>\n");
      out.write("            <!-- end container -->\n");
      out.write("        </div>\n");
      out.write("        <!-- end banner -->\n");
      out.write("\n");
      out.write("        <div class=\"wow fadeIn\" data-wow-duration=\"1s\" data-wow-delay=\"0.1s\">\n");
      out.write("            <h2 class=\"block-title text-center\">\n");
      out.write("                Menu Details\t\n");
      out.write("            </h2>\n");
      out.write("        </div>\n");
      out.write("        <br>\n");
      out.write("\n");
      out.write("        <div id=\"fh5co-tours\" class=\"fh5co-section-gray\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                ");
                    try {
                        PreparedStatement pstn1 = con.prepareStatement("select * from fooddetails where FoodCategory='South Indian' AND MenuCategory='Starter'");
                        ResultSet rs = pstn1.executeQuery();
                        while (rs.next()) {
                            byte[] imgData = rs.getBytes(7);
                            String encode = Base64.getEncoder().encodeToString(imgData);
                            request.setAttribute("imgbase", encode);
                
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"card mb-3\">\n");
      out.write("                    <img src=\"data:image/jpeg;base64,");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${imgbase}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"card-img-top\" style=\"height: 300px;\">\n");
      out.write("                    <div class=\"card-body\">\n");
      out.write("                        <h1 class=\"card-title\" style=\"font-style: italic;\"><b>");
      out.print(rs.getString(2));
      out.write("</b></h1>\n");
      out.write("                        <p class=\"card-text\">Dish Name = ");
      out.print(rs.getString(2));
      out.write(" &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Food Category = ");
      out.print(rs.getString(4));
      out.write("</p>\n");
      out.write("                        <p class=\"card-text\">Menu Category = ");
      out.print(rs.getString(5));
      out.write(" &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Price = ");
      out.print(rs.getString(3));
      out.write("</p>\n");
      out.write("                        <p class=\"card-text\">Info = ");
      out.print(rs.getString(6));
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3 col-md-3 col-sm-3 col-xs-12\">\n");
      out.write("                        <div class=\"form-box\">\n");
      out.write("                            <select name=\"NoOfPlats\" id=\"Menu_Category\" class=\"selectpicker\">\n");
      out.write("                                <option selected disabled>Number Of Plates</option>\n");
      out.write("                                <option value=\"1\">1</option>\n");
      out.write("                                <option value=\"2\">2</option>\n");
      out.write("                                <option value=\"3\">3</option>\n");
      out.write("                                <option value=\"4\">4</option>\n");
      out.write("                                <option value=\"5\">5</option>\n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                    </div><!--\n");
      out.write("                    <div class=\"reserve-book-btn\" style=\"margin-left: 370px;margin-top: -28px;\">\n");
      out.write("                        <input type=\"submit\"  value=\"Add to Cart\" class=\"btn btn-primary\" style=\"height: 50px;width: 200px;\">\n");
      out.write("                    </div>-->\n");
      out.write("                </div>\n");
      out.write("            \n");
      out.write("\n");
      out.write("            ");

                    }
                } catch (Exception e) {
                    System.out.println(e);
                }

            
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- end reservations-main -->\n");
      out.write("\n");
      out.write("    <div id=\"footer\" class=\"footer-main\">\n");
      out.write("\n");
      out.write("        <!-- end footer-news -->\n");
      out.write("        <div class=\"footer-box pad-top-70\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"footer-in-main\">\n");
      out.write("                        <div class=\"footer-logo\">\n");
      out.write("                            <div class=\"text-center\">\n");
      out.write("                                <img src=\"images/logo.png\" alt=\"\" />\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-12\">\n");
      out.write("                            <div class=\"footer-box-a\">\n");
      out.write("                                <h3>About Us</h3>\n");
      out.write("                                <p>Aenean commodo ligula eget dolor aenean massa. Cum sociis nat penatibu set magnis dis parturient montes.</p>\n");
      out.write("                                <ul class=\"socials-box footer-socials pull-left\">\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"#\">\n");
      out.write("                                            <div class=\"social-circle-border\"><i class=\"fa  fa-facebook\"></i></div>\n");
      out.write("                                        </a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"#\">\n");
      out.write("                                            <div class=\"social-circle-border\"><i class=\"fa fa-twitter\"></i></div>\n");
      out.write("                                        </a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"#\">\n");
      out.write("                                            <div class=\"social-circle-border\"><i class=\"fa fa-google-plus\"></i></div>\n");
      out.write("                                        </a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"#\">\n");
      out.write("                                            <div class=\"social-circle-border\"><i class=\"fa fa-pinterest\"></i></div>\n");
      out.write("                                        </a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"#\">\n");
      out.write("                                            <div class=\"social-circle-border\"><i class=\"fa fa-linkedin\"></i></div>\n");
      out.write("                                        </a>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <!-- end footer-box-a -->\n");
      out.write("                        </div>\n");
      out.write("                        <!-- end col -->\n");
      out.write("                        <div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-12\">\n");
      out.write("                            <div class=\"footer-box-b\">\n");
      out.write("                                <h3>New Menu</h3>\n");
      out.write("                                <ul>\n");
      out.write("                                    <li><a href=\"#\">Italian Bomba Sandwich</a></li>\n");
      out.write("                                    <li><a href=\"#\">Double Dose of Pork Belly</a></li>\n");
      out.write("                                    <li><a href=\"#\">Spicy Thai Noodles</a></li>\n");
      out.write("                                    <li><a href=\"#\">Triple Truffle Trotters</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- end footer-box-b -->\n");
      out.write("                        </div>\n");
      out.write("                        <!-- end col -->\n");
      out.write("                        <div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-12\">\n");
      out.write("                            <div class=\"footer-box-c\">\n");
      out.write("                                <h3>Contact Us</h3>\n");
      out.write("                                <p>\n");
      out.write("                                    <i class=\"fa fa-map-signs\" aria-hidden=\"true\"></i>\n");
      out.write("                                    <span>6 E Esplanade, St Albans VIC 3021, Australia</span>\n");
      out.write("                                </p>\n");
      out.write("                                <p>\n");
      out.write("                                    <i class=\"fa fa-mobile\" aria-hidden=\"true\"></i>\n");
      out.write("                                    <span>\n");
      out.write("                                        +91 80005 89080 \n");
      out.write("                                    </span>\n");
      out.write("                                </p>\n");
      out.write("                                <p>\n");
      out.write("                                    <i class=\"fa fa-envelope\" aria-hidden=\"true\"></i>\n");
      out.write("                                    <span><a href=\"#\">support@foodfunday.com</a></span>\n");
      out.write("                                </p>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- end footer-box-c -->\n");
      out.write("                        </div>\n");
      out.write("                        <!-- end col -->\n");
      out.write("                        <div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-12\">\n");
      out.write("                            <div class=\"footer-box-d\">\n");
      out.write("                                <h3>Opening Hours</h3>\n");
      out.write("\n");
      out.write("                                <ul>\n");
      out.write("                                    <li>\n");
      out.write("                                        <p>Monday - Thursday </p>\n");
      out.write("                                        <span> 11:00 AM - 9:00 PM</span>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <p>Friday - Saturday </p>\n");
      out.write("                                        <span>  11:00 AM - 5:00 PM</span>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- end footer-box-d -->\n");
      out.write("                        </div>\n");
      out.write("                        <!-- end col -->\n");
      out.write("                    </div>\n");
      out.write("                    <!-- end footer-in-main -->\n");
      out.write("                </div>\n");
      out.write("                <!-- end row -->\n");
      out.write("            </div>\n");
      out.write("            <!-- end container -->\n");
      out.write("            <div id=\"copyright\" class=\"copyright-main\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">\n");
      out.write("                            <h6 class=\"copy-title\"> Copyright &copy; 2017 Food Funday is powered by <a href=\"#\" target=\"_blank\"></a> </h6>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- end row -->\n");
      out.write("                </div>\n");
      out.write("                <!-- end container -->\n");
      out.write("            </div>\n");
      out.write("            <!-- end copyright-main -->\n");
      out.write("        </div>\n");
      out.write("        <!-- end footer-box -->\n");
      out.write("    </div>\n");
      out.write("    <!-- end footer-main -->\n");
      out.write("\n");
      out.write("    <a href=\"#\" class=\"scrollup\" style=\"display: none;\">Scroll</a>\n");
      out.write("\n");
      out.write("    <section id=\"color-panel\" class=\"close-color-panel\">\n");
      out.write("        <a class=\"panel-button gray2\"><i class=\"fa fa-cog fa-spin fa-2x\"></i></a>\n");
      out.write("        <!-- Colors -->\n");
      out.write("        <div class=\"segment\">\n");
      out.write("            <h4 class=\"gray2 normal no-padding\">Color Scheme</h4>\n");
      out.write("            <a title=\"orange\" class=\"switcher orange-bg\"></a>\n");
      out.write("            <a title=\"strong-blue\" class=\"switcher strong-blue-bg\"></a>\n");
      out.write("            <a title=\"moderate-green\" class=\"switcher moderate-green-bg\"></a>\n");
      out.write("            <a title=\"vivid-yellow\" class=\"switcher vivid-yellow-bg\"></a>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("    <!-- ALL JS FILES -->\n");
      out.write("    <script src=\"js/all.js\"></script>\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    <!-- ALL PLUGINS -->\n");
      out.write("    <script src=\"js/custom.js\"></script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
