package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AboutUs_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>Doctor Donor Diary</title>\n");
      out.write("   \n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"nav.css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/style.css\">\n");
      out.write("    <style>\n");
      out.write("body{\n");
      out.write("\tmargin: 0;\n");
      out.write("\tpadding: 0;\n");
      out.write("\tfont-family: sans-serif;\n");
      out.write("}\n");
      out.write("ul{\n");
      out.write("\tposition:absolute;\n");
      out.write("\ttop: 8%;\n");
      out.write("\tleft: 50%;\n");
      out.write("\ttransform: translate(-50%,-50%);\n");
      out.write("\tmargin: 0;\n");
      out.write("\tpadding: 20px 0; \n");
      out.write("\tbackground: #fff; \n");
      out.write("\tdisplay: flex; \n");
      out.write("\tborder-radius: 10px; \n");
      out.write("\tbox-shadow: 0 10px 30px rgba(0,0,0,.3)\n");
      out.write("}\n");
      out.write("ul li{\n");
      out.write("\tlist-style: none;\n");
      out.write("\ttext-align: center;\n");
      out.write("\tdisplay: block;\n");
      out.write("\tborder-right: 1px solid rgba(0,0,0,0.2);\n");
      out.write("}\n");
      out.write("ul li:last-child{\n");
      out.write("\tborder-right: none;\n");
      out.write("}\n");
      out.write("ul li a{\n");
      out.write("\ttext-decoration: none;\n");
      out.write("\tpadding: 0 50px;\n");
      out.write("\tdisplay: block;\n");
      out.write("}\n");
      out.write("ul li a .icon{\n");
      out.write("\twidth: 40px;\n");
      out.write("\theight: 40px; \n");
      out.write("\ttext-align: center;\n");
      out.write("\t\n");
      out.write("\toverflow: hidden;\n");
      out.write("\tmargin: 0 auto 10px;\n");
      out.write("\t\n");
      out.write("}\n");
      out.write("ul li a .icon .fa{\n");
      out.write("\twidth: 100%;\n");
      out.write("\theight: 100%;\n");
      out.write("\tline-height: 40px;\n");
      out.write("\tfont-size: 34px;\n");
      out.write("\ttransition: 0.5s; \n");
      out.write("\tcolor: #000;\n");
      out.write("}\n");
      out.write("ul li a .icon .fa:last-child{\n");
      out.write("\tcolor: aqua;\n");
      out.write("}\n");
      out.write("ul li a:hover .icon .fa{\n");
      out.write("\ttransform: translateY(-100%); \n");
      out.write("}\n");
      out.write("ul li a .name{\n");
      out.write("\tposition: relative;\n");
      out.write("\theight: 20px; \n");
      out.write("\twidth: 100%;\n");
      out.write("\tdisplay: block;\n");
      out.write("\toverflow: hidden;\n");
      out.write("}\n");
      out.write("ul li a .name span{\n");
      out.write("\tdisplay: block;\n");
      out.write("\tposition: relative;\n");
      out.write("\tcolor: #000;\n");
      out.write("\tfont-size: 18px; \n");
      out.write("\tline-height: 20px;\n");
      out.write("\ttransition: 0.5s; \n");
      out.write("\t\n");
      out.write("}\n");
      out.write("ul li a .name span:before{\n");
      out.write("\tcontent: attr(data-text);\n");
      out.write("\tposition: absolute;\n");
      out.write("\ttop: -100%;\n");
      out.write("\twidth: 100%;\n");
      out.write("\tleft: 0;\n");
      out.write("\theight: 1005px;\n");
      out.write("\tcolor: aqua;\n");
      out.write("}\n");
      out.write("@import  url(https://fonts.googleapis.com/css?family=Varela+Round);\n");
      out.write(" *, *:before, *:after {\n");
      out.write("\t box-sizing: border-box;\n");
      out.write("}\n");
      out.write(" body {\n");
      out.write("\t background: #383a3f;\n");
      out.write("\t font-family: \"Varela Round\", sans-serif;\n");
      out.write("}\n");
      out.write(" .card {\n");
      out.write("\t background: #1f2124;\n");
      out.write("\t box-shadow: 0 0 20px rgba(0, 0, 0, 0.4);\n");
      out.write("\t border-radius: 5px;\n");
      out.write("\t margin: 50px 20px 20px 20px;\n");
      out.write("         height: auto;\n");
      out.write("\t width:auto;\t\n");
      out.write("\t padding: 20px;\n");
      out.write("\t text-align: center;\n");
      out.write("\t color: white;\n");
      out.write("\t float: center;\n");
      out.write("} \n");
      out.write("\n");
      out.write(" .card .btn {\n");
      out.write("\t display: block;\n");
      out.write("\t background: #f6b352;\n");
      out.write("\t color: white;\n");
      out.write("\t padding: 15px 20px;\n");
      out.write("\t margin: 20px 0;\n");
      out.write("\t border-radius: 5px;\n");
      out.write("\t box-shadow: rgba(0, 0, 0, 0.9);\n");
      out.write("\t transition: all 200ms ease-in-out;\n");
      out.write("\t text-decoration: none;\n");
      out.write("}\n");
      out.write(".user{\n");
      out.write("    height: 200px;\n");
      out.write("    width:200px;\n");
      out.write("    \n");
      out.write("    \n");
      out.write("}\n");
      out.write(" .card .btn:hover {\n");
      out.write("\t background: #f68657;\n");
      out.write("}\n");
      out.write(" \n");
      out.write("\n");
      out.write("    </style> \n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("</head>   \n");
      out.write("<body>\n");
      out.write("    <div>\n");
      out.write("     <ul>\n");
      out.write("            <li>\n");
      out.write("                <a href=\"index.jsp\">\n");
      out.write("                    <div class=\"icon\">\n");
      out.write("                        <i class=\"fa fa-home\" aria-hidden=\"true\"></i>\t\n");
      out.write("                        <i class=\"fa fa-home\" aria-hidden=\"true\"></i>\t\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"name\"><span data-text=\"Home\">Home</span></div>\n");
      out.write("                </a>\n");
      out.write("            </li>\n");
      out.write("            <li>\n");
      out.write("                <a href=\"#\">\n");
      out.write("                    \n");
      out.write("                    <div class=\"icon\">\n");
      out.write("                        <i class=\"fa fa-file\" aria-hidden=\"true\"></i>\t\n");
      out.write("                        <i class=\"fa fa-file\" aria-hidden=\"true\"></i>\t\t\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"name\"><span data-text=\"About\">About</span></div>\n");
      out.write("                \n");
      out.write("                </a>\n");
      out.write("            </li>\n");
      out.write("            \n");
      out.write("            <li>\n");
      out.write("                <a href=\"#\">\n");
      out.write("               \n");
      out.write("                    <div class=\"icon\">\n");
      out.write("                        <i class=\"fa fa-users\" aria-hidden=\"true\"></i>\t\n");
      out.write("                        <i class=\"fa fa-users\" aria-hidden=\"true\"></i>\t\t\t\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"name\"><span data-text=\"Team\">Team</span></div>\n");
      out.write("                 \n");
      out.write("                </a>\n");
      out.write("            </li>\n");
      out.write("            <li>\n");
      out.write("                <a href=\"#\">\n");
      out.write("                    <div class=\"icon\">\n");
      out.write("                        <i class=\"fa fa-envelope\" aria-hidden=\"true\"></i>\t\t\n");
      out.write("                        <i class=\"fa fa-envelope\" aria-hidden=\"true\"></i>\t\t\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"name\"><span data-text=\"Contact\">Contact</span></div>\n");
      out.write("                   \n");
      out.write("                </a>\n");
      out.write("            </li>\n");
      out.write("     </ul><br><br><br><br><br>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"card\">\n");
      out.write("        <p>Doctor Donor diary is a one type of people support system. Today every person is busy in routing life. We need doctor,blood-donor in critical life problem. But we don’t know enough detail of doctor,donor detail. \n");
      out.write("\n");
      out.write("We follow reference or we find it emergency for fast need. But most of reference is from relation or commission. Common people who don’t know enough detail of any area/pincode wise doctor specialist,donor in city, He can found lots of trouble to find doctor details/blood donors. \n");
      out.write("\n");
      out.write("Some time we know only well known hospital of city but we don’t know enough detail like exact location,about doctor's experience , speciality, contact details etc.</p>\n");
      out.write("\n");
      out.write("<!-- Common people also don’t know enough detail of emergency service for critical disease, Health center, blood bank detail, blood donor detail as well as contact and road map detail of those services.-->\n");
      out.write("\n");
      out.write("<p>With the help of this project all these type of problem can solve. User can also register himself as a blood-donor, also then he can update his info, availablity status etc.</p>\n");
      out.write("<p>The details/operations related to Doctor will be handled by admin. </p>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("</body>\n");
      out.write("</html>\n");
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
