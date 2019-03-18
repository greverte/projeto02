package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.DecimalFormat;

public final class amortizacao_002dconstante_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Projeto 02 - POO</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");
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
      out.write("        <h1>Amortização Constante</h1>\r\n");
      out.write("        \r\n");
      out.write("        <form>\r\n");
      out.write("            Valor financiado:<br> <input type=\"text\" name=\"valorfinanciado\"/><br><br>\r\n");
      out.write("            Número de meses:<br> <input type=\"text\" name=\"numeromeses\"/><br><br>\r\n");
      out.write("            Taxa de juros:<br> <input type=\"text\" name=\"taxadejuros\"/><br><br>\r\n");
      out.write("            <input type=\"submit\" name=\"form\" value=\"enviar\"/>\r\n");
      out.write("        </form>\r\n");
      out.write("        \r\n");
      out.write("        ");
 if(request.getParameter("form")!=null) { 
      out.write("\r\n");
      out.write("            ");
 double valor = Double.parseDouble(request.getParameter("valorfinanciado"));
      out.write("\r\n");
      out.write("            ");
 int meses = Integer.parseInt(request.getParameter("numeromeses"));
      out.write("\r\n");
      out.write("            ");
 double taxa = Double.parseDouble(request.getParameter("taxadejuros"));
      out.write("\r\n");
      out.write("          \r\n");
      out.write("        \r\n");
      out.write("       ");
DecimalFormat df = new DecimalFormat("#,##0.00");
      out.write("\r\n");
      out.write("       \r\n");
      out.write("        \r\n");
      out.write("        ");
int x = 0;
      out.write("\r\n");
      out.write("        ");
double totalparcela = 0;
      out.write("\r\n");
      out.write("        ");
double totaljuro = 0;
      out.write("\r\n");
      out.write("        ");
 taxa = taxa/100;
      out.write("\r\n");
      out.write("        ");
 double amortizacao = valor/meses;
      out.write("\r\n");
      out.write("        ");
 double outrovalor = valor;
      out.write("\r\n");
      out.write("        \r\n");
      out.write("         \r\n");
      out.write("        <br><br><table border=\"i\">\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td align=\"center\" valign=\"middle\">Mês</td>\r\n");
      out.write("                <td align=\"center\" valign=\"middle\">Parcelas</td>\r\n");
      out.write("                <td align=\"center\" valign=\"middle\">Amortizações</td>\r\n");
      out.write("                <td align=\"center\" valign=\"middle\">Juros</td>\r\n");
      out.write("                <td align=\"center\" valign=\"middle\">Saldo Devedor</td>\r\n");
      out.write("                \r\n");
      out.write("            </tr>\r\n");
      out.write("        ");
 for (int i=1; i <= meses; i++ ) {
      out.write("\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("    <tr> \r\n");
      out.write("   \r\n");
      out.write("        <td align=\"center\" valign=\"middle\"> ");
      out.print(i);
      out.write(" </td>\r\n");
      out.write("       <td align=\"center\" valign=\"middle\">");
      out.print(df.format(amortizacao + (taxa * (valor - (x * amortizacao)))));
      out.write("</td>\r\n");
      out.write("       <td align=\"center\" valign=\"middle\">");
      out.print(df.format((amortizacao)));
      out.write("</td>\r\n");
      out.write("       <td align=\"center\" valign=\"middle\">");
      out.print(df.format((outrovalor*taxa)));
      out.write("</td>\r\n");
      out.write("       <td align=\"center\" valign=\"middle\">");
      out.print(df.format((outrovalor-amortizacao)));
      out.write("</td>\r\n");
      out.write("       \r\n");
      out.write("       \r\n");
      out.write("       ");
totalparcela = totalparcela + (amortizacao + (taxa * (valor - (x * amortizacao))));
      out.write("\r\n");
      out.write("       ");
totaljuro = totaljuro + (outrovalor*taxa);
      out.write("\r\n");
      out.write("       ");
outrovalor = outrovalor - amortizacao;
      out.write("\r\n");
      out.write("       \r\n");
      out.write("       ");
x++;
      out.write("\r\n");
      out.write("    </tr>\r\n");
      out.write("  ");
}
      out.write("\r\n");
      out.write("  \r\n");
      out.write("  <td align=\"center\" valign=\"middle\">TOTAL </td>\r\n");
      out.write("  <td align=\"center\" valign=\"middle\">");
      out.print(totalparcela);
      out.write("</td>\r\n");
      out.write("  <td align=\"center\" valign=\"middle\"></td>\r\n");
      out.write("  <td align=\"center\" valign=\"middle\">");
      out.print(totaljuro);
      out.write("</td>\r\n");
      out.write("  <td align=\"center\" valign=\"middle\"></td>\r\n");
      out.write("        </table>\r\n");
      out.write("        ");
}
      out.write("\r\n");
      out.write("        \r\n");
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
