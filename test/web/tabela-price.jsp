<%-- 
    Document   : tabela-price.jsp
    Created on : 17/03/2019, 15:24:33
    Author     : gabri
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto 02 - POO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>TABELA PRICE</h1>
        
        <form>
            Valor financiado:<br> <input type="text" name="valorfinanciado"/><br><br>
            Número de meses:<br> <input type="text" name="numeromeses"/><br><br>
            Taxa de juros:<br> <input type="text" name="taxadejuros"/><br><br>
            <input type="submit" name="form" value="enviar"/>
        </form>
        
        <% if(request.getParameter("form")!=null) { %>
            <% double valor = Double.parseDouble(request.getParameter("valorfinanciado"));%>
            <% int meses = Integer.parseInt(request.getParameter("numeromeses"));%>
            <% double taxa = Double.parseDouble(request.getParameter("taxadejuros"));%>
            
            <%DecimalFormat df = new DecimalFormat("#,##0.00");%>
            
            <br><br><table border="i">
                <tr>
                <td align="center" valign="middle">Mês</td>
                <td align="center" valign="middle">Parcelas</td>
                <td align="center" valign="middle">Amortizações</td>
                <td align="center" valign="middle">Juros</td>
                <td align="center" valign="middle">Saldo Devedor</td>
                
            </tr>
            <% for(int i = 1)
    </body>
</html>
