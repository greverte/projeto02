package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/WEB-INF/jspf/menu.jspf");
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("         <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("        <title>Projeto 02 - POO</title>\r\n");
      out.write("        \r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("        <h2>Integrantes: Gabriel Reverte e Mirelle Gushomoto </h2>\r\n");
      out.write("         ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<h1>Projeto 02 - POO</h1>\r\n");
      out.write("MENU ||\r\n");
      out.write("\r\n");
      out.write("<a href=\"home.jsp\">HOME</a>\r\n");
      out.write("<a href=\"amortizacao-constante.jsp\">AMORTIZACAO CONSTANTE</a>\r\n");
      out.write("<a href=\"amortizacao-americana.jsp\">AMORTIZACAO AMERICANA</a>\r\n");
      out.write("<a href=\"tabela-price.jsp\">TABELA PRICE</a>");
      out.write("\r\n");
      out.write("  <div class=\"jumbotron\" align=\"center\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <h1 class=\"display-3 mt-5\">\r\n");
      out.write("                    A Tabela SAC é o sistema de amortização\r\n");
      out.write("            <br> no qual as parcelas tem valores decrescentes.\r\n");
      out.write("            <br> É muito utilizado em financiamentos de imóveis.</div>  \r\n");
      out.write("            <br>\r\n");
      out.write("       \r\n");
      out.write("        <h3>Amortização Americana:</h3>\r\n");
      out.write("        <p>O Sistema de Amortização Americano é uma<br>\r\n");
      out.write("            forma de pagamento de empréstimos que se<br>\r\n");
      out.write("            caracteriza pelo pagamento apenas dos juros<br>\r\n");
      out.write("            da dívida,deixando o valor da dívida constante<br>\r\n");
      out.write("            que pode ser paga em apenas um único pagamento.</p>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
