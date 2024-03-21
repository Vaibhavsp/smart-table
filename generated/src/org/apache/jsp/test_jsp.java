package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Collections;
import java.util.ArrayList;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class test_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("\n");
      out.write("\n");
      out.write("<!--Author: W3layouts\n");
      out.write("Author URL: http://w3layouts.com\n");
      out.write("License: Creative Commons Attribution 3.0 Unported\n");
      out.write("License URL: http://creativecommons.org/licenses/by/3.0/\n");
      out.write("-->\n");
      out.write("<!DOCTYPE HTML>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Agriculture App</title>\n");
      out.write("        <!---css--->\n");
      out.write("        <link href=\"css/bootstrap.css\" rel='stylesheet' type='text/css' />\n");
      out.write("        <link href=\"css/style.css\" rel='stylesheet' type='text/css' />\n");
      out.write("        <!---css--->\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <meta name=\"keywords\" content=\"Agrox Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \n");
      out.write("              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design\" />\n");
      out.write("        <script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("        <!---js--->\n");
      out.write("        <script src=\"js/jquery-1.12.0.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.js\"></script>\n");
      out.write("        <!---js--->\n");
      out.write("        <!--JS for animate-->\n");
      out.write("        <link href=\"css/animate.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\">\n");
      out.write("        <script src=\"js/wow.min.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            new WOW().init();\n");
      out.write("        </script>\n");
      out.write("        <!--//end-animate-->\n");
      out.write("\n");
      out.write("        <!---webfont--->\n");
      out.write("        <link href='//fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>\n");
      out.write("        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>\n");
      out.write("        <!---webfont--->\n");
      out.write("        <style>\n");
      out.write("            table, th, td {\n");
      out.write("                border: 1px solid black;\n");
      out.write("                border-collapse: collapse;\n");
      out.write("            }\n");
      out.write("            th, td {\n");
      out.write("                padding: 10px;\n");
      out.write("                text-align: left;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body class=\"theme-light\" data-highlight=\"blue2\" style=\"background-color: #000000;\">\n");
      out.write("        ");
String mobileno = (String) session.getAttribute("Userid").toString();
      out.write("\n");
      out.write("        <div >\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"footer-menu footer-3-icons footer-menu-center-icon\">\n");
      out.write("                <a href=\"m_farmer.jsp\" ><i class=\"fa fa-backward\"></i><span>Back</span></a>\n");
      out.write("                <a href=\"m_farmer.jsp\"><i class=\"fa fa-home\"></i><span>Home</span></a>\n");
      out.write("                <a href=\"m_menu.jsp\"><i class=\"fa fa-bars\"></i><span>Menu</span></a>\n");
      out.write("                <div class=\"clear\"></div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"page-content header-clear-large\">\n");
      out.write("\n");
      out.write("                <div class=\"content left-30 right-30\">\n");
      out.write("                    <center>\n");
      out.write("                        <a href=\"https://www.accuweather.com/en/in/nasik/204842/weather-forecast/204842\" class=\"aw-widget-legal\">\n");
      out.write("                            <!--\n");
      out.write("                            By accessing and/or using this code snippet, you agree to AccuWeather?s terms and conditions (in English) which can be found at https://www.accuweather.com/en/free-weather-widgets/terms and AccuWeather?s Privacy Statement (in English) which can be found at https://www.accuweather.com/en/privacy.\n");
      out.write("                            -->\n");
      out.write("                        </a><div id=\"awtd1521865672940\" class=\"aw-widget-36hour\"  data-locationkey=\"\" data-unit=\"f\" data-language=\"en-us\" data-useip=\"true\" data-uid=\"awtd1521865672940\" data-editlocation=\"true\"></div><script type=\"text/javascript\" src=\"https://oap.accuweather.com/launch.js\"></script>\n");
      out.write("\n");
      out.write("                    </center>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"menu-hider\"></div>\n");
      out.write("        </div>\n");
      out.write("        <script type=\"text/javascript\" src=\"scripts/jquery.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"scripts/plugins.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"scripts/custom.js\" async></script>\n");
      out.write("    </body>\n");
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
