<%-- 
    Document   : amortizacao-constante
    Created on : 14/03/2019, 23:42:30
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
        <h1>Amortização Constante</h1>
        
        <form>
            Valor financiado: <input type="text" name="valorfinanciado"/><br><br>
            Número de meses: <input type="text" name="numeromeses"/><br><br>
            Taxa de juros: <input type="text" name="taxadejuros"/><br><br>
            <input type="submit" name="form" value="enviar"/>
        </form>
        <% if(request.getParameter("form")!=null) { %>
            <% int valor = Integer.parseInt(request.getParameter("valorfinanciado"));%>
            <% int meses = Integer.parseInt(request.getParameter("numeromeses"));%>
            <% double taxa = Double.parseDouble(request.getParameter("taxadejuros"));%>
            
        
        
        <% taxa = taxa/100;%>
        
        <%int x = 0;%>
        
        <%DecimalFormat df = new DecimalFormat("#.00");%>   
        <% double amortizacao = valor/meses;%>
        
         
        
        <% for (int i=1; i <= meses; i++ ) {%>
        
        <%x++;%>
        <h2><%=i%>° parcela:<%=(amortizacao+(taxa*(valor-x*amortizacao)))%></h2>
            
        
        <%}%>
        <%}%>
        
    </body>
</html>
