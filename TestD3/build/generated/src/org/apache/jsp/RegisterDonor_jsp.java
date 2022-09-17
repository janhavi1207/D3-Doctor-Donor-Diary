package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class RegisterDonor_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Donor Registration</title>\n");
      out.write("    \n");
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
      out.write("    form#form2 {\n");
      out.write("        line-height: 40px;\n");
      out.write("        width: 50%;\n");
      out.write("        margin: auto;\n");
      out.write("       \n");
      out.write("    }\n");
      out.write("    body{ \n");
      out.write("/*        color: blueviolet;*/\n");
      out.write("        font-size: 18px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("    <script lang=\"javascript\">\n");
      out.write("         function validateDetails()\n");
      out.write("         { \n");
      out.write("            var fname1,lname1,mob,age, pass,repass;\n");
      out.write("            \n");
      out.write("            fname1=document.getElementById(\"fname\").value;\n");
      out.write("            lname1=document.getElementById(\"lname\").value;\n");
      out.write("            mob=document.getElementById(\"contact\").value;\n");
      out.write("            age=document.getElementById(\"age\").value;\n");
      out.write("//            if(fName==\"\")\n");
      out.write("//            {\n");
      out.write("//              alert(\"Name can't be left blank\");\n");
      out.write("//              document.getElementById(\"fname\").focus();\n");
      out.write("//              return false;\n");
      out.write("//            }\n");
      out.write("//            if(lName==\"\")\n");
      out.write("//            {\n");
      out.write("//              alert(\"Name can't be left blank\");\n");
      out.write("//              document.getElementById(\"lname\").focus();\n");
      out.write("//              return false;\n");
      out.write("//            }\n");
      out.write("\n");
      out.write("                    pass=document.getElementById(\"pass\").value;\n");
      out.write("                    repass=document.getElementById(\"repass\").value;\n");
      out.write("                    \n");
      out.write("                    if(!(pass.equals(repass))){\n");
      out.write("                        alert(\"New Password and Re-enter Password does not match\");\n");
      out.write("                        return false;\n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("            if(fname1!=\"\")\n");
      out.write("            {\n");
      out.write("              \n");
      out.write("               var valid=\"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ \";   \n");
      out.write("               for(i=0;i<fname1.length;i++)\n");
      out.write("               {\n");
      out.write("                   n=fname1.charAt(i);\n");
      out.write("                   if(valid.indexOf(n)==-1)\n");
      out.write("                   {\n");
      out.write("                      alert(\"Invalid data only character allowed\");\n");
      out.write("                      document.getElementById(\"fname\").focus();\n");
      out.write("                      document.getElementById(\"fname\").select(); \n");
      out.write("                      return false;\n");
      out.write("                   }    \n");
      out.write("               }   \n");
      out.write("              \n");
      out.write("               \n");
      out.write("            }\n");
      out.write("            if(lname1!=\"\")\n");
      out.write("            {\n");
      out.write("              \n");
      out.write("               var valid=\"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ \";   \n");
      out.write("               for(i=0;i<lname1.length;i++)\n");
      out.write("               {\n");
      out.write("                   n=lname1.charAt(i);\n");
      out.write("                   if(valid.indexOf(n)==-1)\n");
      out.write("                   {\n");
      out.write("                      alert(\"Invalid data only character allowed\");\n");
      out.write("                      document.getElementById(\"lname\").focus();\n");
      out.write("                      document.getElementById(\"lname\").select(); \n");
      out.write("                      return false;\n");
      out.write("                   }    \n");
      out.write("               }   \n");
      out.write("              \n");
      out.write("               \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            if(mob!=\"\")  \n");
      out.write("            {\n");
      out.write("                var valid=\"1234567890\";   \n");
      out.write("               for(i=0;i<mob.length;i++)\n");
      out.write("               {\n");
      out.write("                   n=mob.charAt(i);\n");
      out.write("                   if(valid.indexOf(n)==-1)\n");
      out.write("                   {\n");
      out.write("                      alert(\"Invalid data only number allowed\");\n");
      out.write("                      document.getElementById(\"contact\").focus();\n");
      out.write("                      document.getElementById(\"contact\").select(); \n");
      out.write("                      return false;\n");
      out.write("                   }    \n");
      out.write("               }   \n");
      out.write("            }\n");
      out.write("            if(mob!=\"\")  \n");
      out.write("            {\n");
      out.write("                var valid=\"987\";   \n");
      out.write("                   n=mob.charAt(0);\n");
      out.write("                   if(valid.indexOf(n)==-1)\n");
      out.write("                   {\n");
      out.write("                      //alert(\"Invalid first digit of contact\"); \n");
      out.write("                      alert(\"Invalid contact\");\n");
      out.write("                      document.getElementById(\"contact\").focus();\n");
      out.write("                      document.getElementById(\"contact\").select(); \n");
      out.write("                      return false;\n");
      out.write("                   }    \n");
      out.write("               }   \n");
      out.write("            if(mob!=\"\")  \n");
      out.write("            {\n");
      out.write("                if(mob.length!=10)\n");
      out.write("                {\n");
      out.write("                    alert(\"mobile no should be of 10 digits\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            if(age<18){\n");
      out.write("                alert(\"Sorry!!You are not eligible for donating blood\");\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            return true;\n");
      out.write("        }   \n");
      out.write("        \n");
      out.write("         function validate(){\n");
      out.write("                var stateSelect = document.getElementById(\"state\").value;\n");
      out.write("                var citySelect = document.getElementById(\"city\").value;\n");
      out.write("                var areaSelect = document.getElementById(\"area\").value;\n");
      out.write("                var pincode = document.getElementById(\"pin\").value;\n");
      out.write("                \n");
      out.write("//                if (stateSelect == \"\")\n");
      out.write("//                {\n");
      out.write("//                    alert(\"Please select state\");\n");
      out.write("//                //alert(\"hii\");\n");
      out.write("//                  document.getElementById(\"state\").focus();\n");
      out.write("//                    return false;\n");
      out.write("//                }\n");
      out.write("//                if (citySelect == \"\")\n");
      out.write("//                {\n");
      out.write("//                    alert(\"Please select city\");\n");
      out.write("//                    document.getElementById(\"city\").focus();\n");
      out.write("//                    return false;\n");
      out.write("//                }               \n");
      out.write("        }\n");
      out.write("       \n");
      out.write("         var stateObject1 = \n");
      out.write("                 {\n");
      out.write("\"Madhya Pradesh\":{\n");
      out.write("\"Alirajpur\": [\"\"],\n");
      out.write("\"Ashok Nagar\": [\"\"],\n");
      out.write("\"Balaghat\":[\"\"],\n");
      out.write("\"Bhopal\": [\"\"],\n");
      out.write("\"Ganjbasoda\": [\"\"],\n");
      out.write("\"Gwalior\": [\"\"],\n");
      out.write("\"Indore\": [\"Cloth Market\",\"Agra\",\"Ajnod\",\"Alwasa\",\"Ambachandan\",\"ArmyHeadquarter\",\"Attahada\",\"Atwada\",\"Aurangpura\",\"Bachhoda\",\"Badgonda\",\"BadodiaKhan\",\"Bai\",\"BalodaTkun\",\"Banadia\",\"Baoliakhurd\",\"BarlaiJagir\",\"Betma\",\"Bhagana\",\"Bhagora\",\"Bhanwrasala\",\"Bhatkhedi\",\"Bhilbadoli\",\"BicholiMardana\",\"BijasanRoad\",\"Binawda\",\"Burankhedi\",\"Chadoda\",\"Chambal\",\"Chittoda\",\"Choral\",\"Chordia\",\"Dakachia\",\"Datoda\",\"Depalpur\",\"Dhannad\",\"Dharnaka\",\"Dudhia\",\"Farkodha\",\"FcGanj\",\"Gandhinagar\",\"Gautampura\",\"Gawlipalasia\",\"Girota\",\"Gokulpur\",\"Gujarkheda\",\"Guran\",\"GurunanakChauk\",\"Harsola\",\"Hasalpur\",\"Hatod\",\"Cgocomplex\",\"Cat\",\"City-2\",\"Clothmarket\",\"Collectorate\",\"Courts\",\"Ddunagar\",\"Govt.college\",\"Industrialarea\",\"Javeribagh\",\"Kanadiaroad\",\"Kumarkhadi\",\"Malwamill\",\"Manoramaganj\",\"Nagar\",\"Pardesipura\",\"R.s.s.nagar\",\"Rajmohalla\",\"Rambagh\",\"Siyaganj\",\"Tillaknagar\",\"Tukoganj\",\"Uchchanyayalay\",\"IndustrialEstate\",\"Jalodiyagyan\",\"JamburdiSarwar\",\"Jamburdihapsi\",\"Jamli\",\"Jhalaria\",\"Jindakheda\",\"Joshiguradia\",\"Juni\",\"Kachalia\",\"KadwaliBujurg\",\"Kalaria\",\"Kallibillod\",\"Kalmer\",\"Kamadpur\",\"Kampel\",\"Kanadia\",\"KanadiaRoad\",\"Kankariapal\",\"Kanwasa\",\"Karadia\",\"Kasturbagram\",\"Kelod\",\"Kelodkartal\",\"KhatiwalaTank\",\"KhediSihod\",\"Khudel\",\"Khurdi\",\"Kishanganj\",\"Kodria\",\"Kudana\",\"Lasudia\",\"Limbiodapar\",\"LokmanyaNagar\",\"Machal\",\"Machla\",\"Maithwada\",\"Manglia\",\"Manpur\",\"Men\",\"Mendakwasa\",\"Mhow\",\"MhowBarracks\",\"MhowCantt\",\"MhowCollegeofcombat\",\"MhowGaon\",\"MhowInfantryschool\",\"MhowRailwaystattion\",\"Murkheda\",\"NandaNagar\",\"Neori\",\"Pagnispaga\",\"Palakhedi\",\"Palda\",\"Paliya\",\"Panod\",\"Paphund\",\"Pedmi\",\"Pigdamber\",\"Pipalda\",\"Piwdai\",\"RadioColony\",\"RajendraNagar\",\"Rajoda\",\"Rangwasa\",\"Rao\",\"Rasalpura\",\"Rolai\",\"SadarBazar\",\"Sagdod\",\"Sanawadia\",\"Sanwer\",\"SanwerLinkroad\",\"SemliaChau\",\"Simrol\",\"Sivani\",\"Solsinda\",\"SonwayBhensolayaudygikkshet\",\"SudamaNagar\",\"Sumtha\",\"Tihi\",\"Tillorbujurg\",\"Tillorkhurd\",\"Todi\",\"Umaria\",\"Vallabhnagar\",\"VijayNagar\",\"YashwantNagar\"],\n");
      out.write("\"Itarsi\": [\"\"],\n");
      out.write("\"Jabalpur\": [\"\"],\n");
      out.write("\"Lahar\": [\"\"],\n");
      out.write("\"Maharajpur\": [\"\"],\n");
      out.write("\"Mahidpur\": [\"\"],\n");
      out.write("\"Maihar\": [\"\"],\n");
      out.write("\"Malaj Khand\": [\"\"],\n");
      out.write("\"Manasa\": [\"\"],\n");
      out.write("\"Manawar\": [\"\"],\n");
      out.write("\"Mandideep\": [\"\"],\n");
      out.write("\"Mandla\": [\"\"],\n");
      out.write("\"Mandsaur\": [\"\"],\n");
      out.write("\"Mauganj\": [\"\"]\n");
      out.write("}\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("         var stateObject2 = \n");
      out.write("                 {\n");
      out.write("\"Madhya Pradesh\":{\n");
      out.write("\"Alirajpur\": [\"\"],\n");
      out.write("\"Ashok Nagar\": [\"\"],\n");
      out.write("\"Balaghat\":[\"\"],\n");
      out.write("\"Bhopal\": [\"\"],\n");
      out.write("\"Ganjbasoda\": [\"\"],\n");
      out.write("\"Gwalior\": [\"\"],\n");
      out.write("\"Indore\": [\"452002\",\"Agra\",\"Ajnod\",\"Alwasa\",\"Ambachandan\",\"ArmyHeadquarter\",\"Attahada\",\"Atwada\",\"Aurangpura\",\"Bachhoda\",\"Badgonda\",\"BadodiaKhan\",\"Bai\",\"BalodaTkun\",\"Banadia\",\"Baoliakhurd\",\"BarlaiJagir\",\"Betma\",\"Bhagana\",\"Bhagora\",\"Bhanwrasala\",\"Bhatkhedi\",\"Bhilbadoli\",\"BicholiMardana\",\"BijasanRoad\",\"Binawda\",\"Burankhedi\",\"Chadoda\",\"Chambal\",\"Chittoda\",\"Choral\",\"Chordia\",\"Dakachia\",\"Datoda\",\"Depalpur\",\"Dhannad\",\"Dharnaka\",\"Dudhia\",\"Farkodha\",\"FcGanj\",\"Gandhinagar\",\"Gautampura\",\"Gawlipalasia\",\"Girota\",\"Gokulpur\",\"Gujarkheda\",\"Guran\",\"GurunanakChauk\",\"Harsola\",\"Hasalpur\",\"Hatod\",\"Cgocomplex\",\"Cat\",\"City-2\",\"Clothmarket\",\"Collectorate\",\"Courts\",\"Ddunagar\",\"Govt.college\",\"Industrialarea\",\"Javeribagh\",\"Kanadiaroad\",\"Kumarkhadi\",\"Malwamill\",\"Manoramaganj\",\"Nagar\",\"Pardesipura\",\"R.s.s.nagar\",\"Rajmohalla\",\"Rambagh\",\"Siyaganj\",\"Tillaknagar\",\"Tukoganj\",\"Uchchanyayalay\",\"IndustrialEstate\",\"Jalodiyagyan\",\"JamburdiSarwar\",\"Jamburdihapsi\",\"Jamli\",\"Jhalaria\",\"Jindakheda\",\"Joshiguradia\",\"Juni\",\"Kachalia\",\"KadwaliBujurg\",\"Kalaria\",\"Kallibillod\",\"Kalmer\",\"Kamadpur\",\"Kampel\",\"Kanadia\",\"KanadiaRoad\",\"Kankariapal\",\"Kanwasa\",\"Karadia\",\"Kasturbagram\",\"Kelod\",\"Kelodkartal\",\"KhatiwalaTank\",\"KhediSihod\",\"Khudel\",\"Khurdi\",\"Kishanganj\",\"Kodria\",\"Kudana\",\"Lasudia\",\"Limbiodapar\",\"LokmanyaNagar\",\"Machal\",\"Machla\",\"Maithwada\",\"Manglia\",\"Manpur\",\"Men\",\"Mendakwasa\",\"Mhow\",\"MhowBarracks\",\"MhowCantt\",\"MhowCollegeofcombat\",\"MhowGaon\",\"MhowInfantryschool\",\"MhowRailwaystattion\",\"Murkheda\",\"NandaNagar\",\"Neori\",\"Pagnispaga\",\"Palakhedi\",\"Palda\",\"Paliya\",\"Panod\",\"Paphund\",\"Pedmi\",\"Pigdamber\",\"Pipalda\",\"Piwdai\",\"RadioColony\",\"RajendraNagar\",\"Rajoda\",\"Rangwasa\",\"Rao\",\"Rasalpura\",\"Rolai\",\"SadarBazar\",\"Sagdod\",\"Sanawadia\",\"Sanwer\",\"SanwerLinkroad\",\"SemliaChau\",\"Simrol\",\"Sivani\",\"Solsinda\",\"SonwayBhensolayaudygikkshet\",\"SudamaNagar\",\"Sumtha\",\"Tihi\",\"Tillorbujurg\",\"Tillorkhurd\",\"Todi\",\"Umaria\",\"Vallabhnagar\",\"VijayNagar\",\"YashwantNagar\"],\n");
      out.write("\"Itarsi\": [\"\"],\n");
      out.write("\"Jabalpur\": [\"\"],\n");
      out.write("\"Lahar\": [\"\"],\n");
      out.write("\"Maharajpur\": [\"\"],\n");
      out.write("\"Mahidpur\": [\"\"],\n");
      out.write("\"Maihar\": [\"\"],\n");
      out.write("\"Malaj Khand\": [\"\"],\n");
      out.write("\"Manasa\": [\"\"],\n");
      out.write("\"Manawar\": [\"\"],\n");
      out.write("\"Mandideep\": [\"\"],\n");
      out.write("\"Mandla\": [\"\"],\n");
      out.write("\"Mandsaur\": [\"\"],\n");
      out.write("\"Mauganj\": [\"\"]\n");
      out.write("}\n");
      out.write("}\n");
      out.write("\n");
      out.write("        window.onload=function(){\n");
      out.write("                var stateSel = document.getElementById(\"state\");\n");
      out.write("                var citySel = document.getElementById(\"city\");\n");
      out.write("                var areaSel = document.getElementById(\"area\");\n");
      out.write("                 var pinSel = document.getElementById(\"pin\");\n");
      out.write("                for (var x in stateObject1) {\n");
      out.write("                    stateSel.options[stateSel.options.length] = new Option(x, x);\n");
      out.write("                }\n");
      out.write("                stateSel.onchange = function () {\n");
      out.write("                        //empty Chapters- and Topics- dropdowns\n");
      out.write("                        areaSel.length = 1;\n");
      out.write("                        citySel.length = 1;\n");
      out.write("                        pinSel.length = 1;\n");
      out.write("                    //display correct values\n");
      out.write("                    for (var y in stateObject1[this.value]) {\n");
      out.write("                        citySel.options[citySel.options.length] = new Option(y, y);\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("                 \n");
      out.write("                citySel.onchange = function () {\n");
      out.write("                        //empty Chapters dropdown\n");
      out.write("                        areaSel.length = 1;\n");
      out.write("                        pinSel.length = 1;\n");
      out.write("                    //display correct values\n");
      out.write("                    var z = stateObject1[stateSel.value][this.value];\n");
      out.write("                    for (var i = 0; i < z.length; i++) {\n");
      out.write("                        areaSel.options[areaSel.options.length] = new Option(z[i], z[i]);\n");
      out.write("                    }\n");
      out.write("                    var z1 = stateObject2[stateSel.value][this.value];\n");
      out.write("                    for (var i = 0; i < z1.length; i++) {\n");
      out.write("                        pinSel.options[pinSel.options.length] = new Option(z1[i], z1[i]);\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("        } \n");
      out.write("        \n");
      out.write("        </script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("     <div>\n");
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
      out.write("                <a href=\"AboutUs.jsp\">\n");
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
      out.write("                <a href=\"ContactForm.jsp\">\n");
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
      out.write("    <h1 style=\"color:whitesmoke; text-align: center; line-height: 50px;\"><u> <strong> Register as a Blood-Donor</strong></u></h1>\n");
      out.write("    <form action=\"RegisterDonor\" method=\"post\" name=\"form2\" id=\"form2\">\n");
      out.write("        <center>\n");
      out.write("            <table>\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>First Name:</th>\n");
      out.write("                        <td><input type=\"text\" name=\"fname\" id=\"fname\" required></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <th> Last Name:</th>\n");
      out.write("                        <td><input type=\"text\" name=\"lname\" id=\"lname\" required></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Blood Group</th>\n");
      out.write("                        <td id=\"bloodbox\"><select name=\"bloodgrp\" id=\"bloodgrp\" required>\n");
      out.write("                                <option value=\"--\">------------Select------------</option>\n");
      out.write("                                <option value=\"O+\">O+</option>\n");
      out.write("                                <option value=\"O-\">O-</option>\n");
      out.write("                                <option value=\"A+\">A+</option>\n");
      out.write("                                <option value=\"A-\">A-</option>\n");
      out.write("                                <option value=\"B+\">B+</option>\n");
      out.write("                                <option value=\"B-\">B-</option>\n");
      out.write("                                <option value=\"AB+\">AB+</option>\n");
      out.write("                                <option value=\"AB-\">AB-</option>\n");
      out.write("                            </select></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Age:</th>\n");
      out.write("                        <td><input type=\"number\" name=\"age\" id=\"age\" required>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Gender:</th>\n");
      out.write("                        <td><select name=\"gender\" id=\"gender\" required>\n");
      out.write("                                <option value=\"--\">------------Select------------</option>\n");
      out.write("                                <option value=\"Male\">Male</option>\n");
      out.write("                                <option value=\"Female\">Female</option> \n");
      out.write("                                <option value=\"Other\">Other</option>\n");
      out.write("                            </select></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Mobile No:</th>\n");
      out.write("<!--                        <td><input type=\"tel\" name=\"contact\" id=\"contact\" pattern=\"^\\+91(7\\d|8\\d|9\\d)\\d{9}$\" required>-->\n");
      out.write("<td><input type=\"tel\" name=\"contact\" id=\"contact\"  required>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Email:</th>\n");
      out.write("                        <td><input type=\"email\" name=\"email\" id=\"email\" required>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Last date of donation:</th>\n");
      out.write("                        <td><input type=\"date\" name=\"donationDate\" id=\"donationDate\" required>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>User Id:</th>\n");
      out.write("                        <td><input type=\"text\" name=\"userid\" id=\"userid\" required></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <th> Password:</th>\n");
      out.write("                        <td><input type=\"password\" name=\"pass\" id=\"pass\" required></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Re-type Password:</th>\n");
      out.write("                        <td><input type=\"password\" name=\"repass\" id=\"repass\" required></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>State:</th>\n");
      out.write("                        <td><select name=\"state\" id=\"state\" required>\n");
      out.write("                                <option value=\"\" selected=\"selected\">------------Select------------</option>\n");
      out.write("                            </select></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>City:</th>\n");
      out.write("                        <td><select name=\"city\" id=\"city\" required>\n");
      out.write("                                <option value=\"\" selected=\"selected\">------------Select------------</option>\n");
      out.write("                            </select></td>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Area:</th>\n");
      out.write("                        <td><select name=\"area\" id=\"area\" required >\n");
      out.write("                                <option value=\"\" selected=\"selected\">------------Select------------</option>\n");
      out.write("                            </select></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Pincode:</th>\n");
      out.write("                        <td><select name=\"pin\" id=\"pin\" required >\n");
      out.write("                                <option value=\"\" selected=\"selected\">------------Select------------</option>\n");
      out.write("<!--                                <option value=\"452002\">452002</option>\n");
      out.write("                                <option value=\"452001\">452009</option>\n");
      out.write("                                <option value=\"452009\">452001</option>-->\n");
      out.write("                            </select></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Please confirm your availability to donate blood</th>\n");
      out.write("                        <td><select name=\"avail\" id=\"avail\" required>\n");
      out.write("                                <option value=\"--\">------------Select------------</option>\n");
      out.write("                                <option value=\"Y\">available</option>\n");
      out.write("                                <option value=\"N\">unavailable</option>\n");
      out.write("                            </select></td>\n");
      out.write("                    </tr>\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("        </center>\n");
      out.write("        <br>\n");
      out.write("        <input type=\"checkbox\" required>I authorise this website to display my name and telephone number, so that the\n");
      out.write("        needy could contact me, as and when there is an emergency. \n");
      out.write("        <center> <input type=\"submit\" value=\"Submit\" onclick=\"return validateDetails();\">\n");
      out.write("            <input type=\"reset\" value=\"Reset\">\n");
      out.write("        </center>\n");
      out.write("        <br><br>\n");
      out.write("    </form>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
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