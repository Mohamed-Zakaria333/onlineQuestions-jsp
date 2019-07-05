package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class With_005ftime_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


Random rand = new Random();   
ArrayList<String>question=new ArrayList();
ArrayList<Integer> coorect_Answer = new ArrayList();
int num_of_ques=3;
int range=10;

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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("      \r\n");
      out.write("        <title>Questions</title>\r\n");
      out.write("        <link href=\"styles/Home.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("        <link href=\"styles/Normal.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("        <link href=\"styles/With_time.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"styles/animate.css\">\r\n");
      out.write("        <script src=\"styles/sweet1.js\"></script>\r\n");
      out.write("        <script src=\"styles/sweet2.js\"></script> \r\n");
      out.write("<!--//=========================================        -->\r\n");
      out.write("\r\n");
      out.write("<!-- //=========================================      -->\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"head\">\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("<div id=\"page-container\">\r\n");
      out.write("       <div class=\"head\">\r\n");
      out.write("           <div style=\"float: left\" > <p class=\"title\">Test Math <span>1+2+3⏱</span></p></div>\r\n");
      out.write("           \r\n");
      out.write("            <button class=\"button1\" onclick=\"location.href = 'Home.jsp';\">cancel</button>       \r\n");
      out.write("            <div class=\"counter\" id=\"count\" >60</div>      \r\n");
      out.write("        </div>\r\n");
      out.write("   <div id=\"content-wrap\">\r\n");
      out.write("            <FORM  action=\"Results.jsp\" method = \"POST\" name=\"queForm\">\r\n");
      out.write("            ");
 for(int i = 0; i < num_of_ques; i++) { 
      out.write("\r\n");
      out.write("            <div class=\"question\" >\r\n");
      out.write("                <h1 style=\"text-align: center;\">\r\n");

int num1 = rand.nextInt(range);
int num2 = rand.nextInt(range);
int num3 = rand.nextInt(range);
int Result=num1+num2+num3;
question.add(num1+" + "+num2+" + "+num3+" ??");
coorect_Answer.add(Result);

      out.write("\r\n");
      out.write("<span style=\"color:#0988ae\">");
      out.print(num1);
      out.write("</span>\r\n");
      out.write(" +\r\n");
      out.write("<span style=\"color:#0988ae\">");
      out.print(num2);
      out.write("</span>\r\n");
      out.write("  +\r\n");
      out.write("<span style=\"color:#0988ae\">");
      out.print(num3);
      out.write("</span>\r\n");
      out.write("   ??\r\n");
      out.write("                </h1>\r\n");
      out.write("\r\n");
      out.write("   <div class=\"chosses\" style=\"width: 25%\">  <INPUT TYPE=\"number\" name=\"usr_answer");
      out.print(i);
      out.write("\"  placeholder=\"answer\" required></div>\r\n");
      out.write("                </div>\r\n");
      out.write("            \r\n");
      out.write("        \r\n");
      out.write("        ");
 } 
      out.write("\r\n");
      out.write("        <INPUT TYPE=\"submit\" VALUE=\"Submit\" class=\"alert-vel\" onclick=\"stopTimer()\" >\r\n");
      out.write("            </form>\r\n");
      out.write(" \r\n");
      out.write("      all other page content \r\n");
      out.write("   </div>\r\n");
      out.write("  ");

  session.setAttribute("qeustion", question);  
  session.setAttribute("sys_ans",coorect_Answer ); 
  
      out.write("     \r\n");
      out.write("  <footer id=\"footer\">\r\n");
      out.write("      <p class=\"copyRights\">&#169 this jsp app made by Mohamed Zakaria</p> \r\n");
      out.write("      \r\n");
      out.write("  </footer>\r\n");
      out.write(" </div>\r\n");
      out.write("<!--            //==============================================================-->\r\n");
      out.write("         <script>\r\n");
      out.write("            var counter=60; \r\n");
      out.write("            var myVar = setInterval(myTimer, 1000);\r\n");
      out.write("            function myTimer() {\r\n");
      out.write("             document.getElementById(\"count\").innerHTML = --counter;   \r\n");
      out.write("                if (counter < 10&&counter >0)\r\n");
      out.write("            {   document.getElementById(\"count\").innerHTML= '0'+counter;\r\n");
      out.write("                document.getElementById(\"count\").style.color = \"red\";  \r\n");
      out.write("            }\r\n");
      out.write("                         else if (counter == 0)\r\n");
      out.write("                       {     \r\n");
      out.write("                             \r\n");
      out.write("                           document.getElementById(\"count\").innerHTML= '0'+counter;\r\n");
      out.write("                           clearInterval(myVar);\r\n");
      out.write("                           setTimeout(function() {\r\n");
      out.write("                                             \r\n");
      out.write(" Swal.fire({\r\n");
      out.write("  title: 'time out 😭😭😭😭😭😭',\r\n");
      out.write("  animation: false,\r\n");
      out.write("  customClass: {\r\n");
      out.write("    popup: 'animated tada'\r\n");
      out.write("  },\r\n");
      out.write("  allowOutsideClick: false,\r\n");
      out.write("  confirmButtonText: 'try again'\r\n");
      out.write("}).then((result) => {\r\n");
      out.write("  if (result.value) {\r\n");
      out.write("    location.href = 'With_time.jsp';\r\n");
      out.write("  }\r\n");
      out.write("})\r\n");
      out.write("  \r\n");
      out.write("                       \r\n");
      out.write("}, 1000);\r\n");
      out.write("                       }\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("    function stopTimer()\r\n");
      out.write("{\r\n");
      out.write("clearInterval(myVar);\r\n");
      out.write("}        \r\n");
      out.write("         </script>\r\n");
System.out.println(question);
System.out.println(coorect_Answer);





      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!--            //==============================================================-->\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
