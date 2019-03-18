package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.DecimalFormat;

public final class tabela_002dprice_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Projeto 02 - POO</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"alert alert-primary\" role=\"alert\">\r\n");
      out.write("    <center> <h2> <a class=\"alert-link\">Projeto 02 - POO</h2>\r\n");
      out.write("\r\n");
      out.write("<center><br>\r\n");
      out.write("<a href=\"home.jsp\" class=\"btn btn-primary btn-lg active\" role=\"button\" aria-pressed=\"true\">HOME</a>\r\n");
      out.write("<a href=\"amortizacao-constante.jsp\" class=\"btn btn-secondary btn-lg active\" role=\"button\" aria-pressed=\"true\">Amortização Constante</a>\r\n");
      out.write("<a href=\"amortizacao-americana.jsp\" class=\"btn btn-primary btn-lg active\" role=\"button\" aria-pressed=\"true\">Amortização Americana</a>\r\n");
      out.write("<a href=\"tabela-price.jsp\" class=\"btn btn-secondary btn-lg active\" role=\"button\" aria-pressed=\"true\">Tabela Price</a>\r\n");
      out.write("\n");
      out.write("        <h1>Tabela Price</h1>\n");
      out.write("        \n");
      out.write("           <form>\n");
      out.write("            Valor financiado:<br><input type=\"text\" name=\"financiamento\" required><br><br>\n");
      out.write("            Número de meses:<br><input type=\"text\" name=\"tempo\" required><br><br>\n");
      out.write("            Taxa de Juros:<br><input type=\"text\" name=\"taxa\" required><br>\n");
      out.write("            <p><input type=\"submit\" name=\"form\" value=\"Calcular\">\n");
      out.write("           </form>\n");
      out.write("        \n");
      out.write("        ");
if (request.getParameter("enviar") != null) {
      out.write("\n");
      out.write("        ");
try { 
      out.write(" \n");
      out.write("        <hr>\n");
      out.write("        ");
DecimalFormat df = new DecimalFormat("#,##0.00");
      out.write(" \n");
      out.write("\n");
      out.write("        ");
 double valor = Double.parseDouble(request.getParameter("financiamento"));
      out.write("\n");
      out.write("        ");
 int meses = Integer.parseInt(request.getParameter("tempo"));
      out.write("\n");
      out.write("        ");
 double taxa = Double.parseDouble(request.getParameter("taxa"));
      out.write("\n");
      out.write("        \n");
      out.write("        ");
double parcela = valor * (Math.pow((1 + (taxa / 100)), meses) * (taxa / 100)) / (Math.pow((1 + (taxa / 100)), meses) - 1);
      out.write("\n");
      out.write("        ");
double juros = 0;
      out.write("\n");
      out.write("        ");
double amortizacao = parcela / juros;
      out.write("\n");
      out.write("\n");
      out.write("        ");
double devedor = valor;
      out.write("\n");
      out.write("        ");
double totParcela = 0;
      out.write("\n");
      out.write("        ");
double totAmortizacao = 0;
      out.write("\n");
      out.write("        ");
double totJuros = 0;
      out.write("\n");
      out.write("\n");
      out.write("        <table border = \"1\">\n");
      out.write("            <th>Mês</th>\n");
      out.write("            <th>Parcela</th> \n");
      out.write("            <th>Amortização</th>\n");
      out.write("            <th>Juros</th>\n");
      out.write("            <th>Saldo Devedor</th>\n");
      out.write("                ");
for (int i = 1; i <= meses; i++) {
      out.write("\n");
      out.write("\n");
      out.write("            ");
juros = (devedor * (taxa / 100));
      out.write("\n");
      out.write("            ");
amortizacao = parcela - juros;
      out.write("\n");
      out.write("            ");
devedor = devedor - parcela + juros;
      out.write("\n");
      out.write("            ");
valor -= parcela;
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("                <td>R$  ");
      out.print(df.format(parcela));
      out.write("</td>\n");
      out.write("                <td>R$  ");
      out.print(df.format(amortizacao));
      out.write("</td>\n");
      out.write("                <td>R$  ");
      out.print(df.format(juros));
      out.write("</td>\n");
      out.write("                <td>R$  ");
      out.print(df.format(devedor));
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("            ");
totParcela += parcela;
      out.write("\n");
      out.write("            ");
totAmortizacao += amortizacao;
      out.write("\n");
      out.write("            ");
totJuros += juros;
      out.write("\n");
      out.write("            ");
juros = (taxa * devedor) / 100;
      out.write("\n");
      out.write("            ");
}
      out.write("\n");
      out.write("            <tr id=\"fim\">\n");
      out.write("                <td>Total: </td>\n");
      out.write("                <td>R$  ");
      out.print(df.format(totParcela));
      out.write("</td>\n");
      out.write("                <td>R$  ");
      out.print(df.format(totAmortizacao));
      out.write("</td>\n");
      out.write("                <td>R$  ");
      out.print(df.format(totJuros));
      out.write("</td>\n");
      out.write("                <td>R$  ");
      out.print(df.format(devedor));
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("        ");
} catch (Exception ex) {
      out.write("\n");
      out.write("        <h3 style=\"color: red\">Erro: ");
      out.print(ex.getMessage());
      out.write("</h3>\n");
      out.write("        ");
}
      out.write("\n");
      out.write("        ");
}
      out.write("\n");
      out.write("                </body>\n");
      out.write("                </html>");
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
