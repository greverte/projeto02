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
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <title>Projeto 02 - POO</title>
           <style>
table {
  width:100%;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
  text-align: left;
}
table#t01 tr:nth-child(even) {
  background-color: #eee;
}
table#t01 tr:nth-child(odd) {
 background-color: #fff;
}
table#t01 th {
  background-color: black;
  color: white;
}

input[type=submit] {
  width: 40%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 10px;
  margin: 4px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
.footer {
  position: absolute;
  right: 0;
  bottom: 0;
  left: 0;
  padding: 1rem;
  background-color: black;
  text-family: center, white;
}
      .header {
        height: 70px;
        padding: 20px ;
        background: #e1e1e1;
      }
</style>
    </head>
    <body>
        <center> <div class="header"> <h2> Integrantes: <a class="alert-link">Mirelle Gushomoto e Gabriel Reverte</a></div>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <%@include file = "WEB-INF/jspf/rodape.jspf"%>
 <%@include file = "WEB-INF/jspf/cabecalho.jspf"%>
        <header class="page-header">
    <h1>Amortização Constante</h1>
</header>
        
        <form>
            Valor financiado:<br> <input type="text" name="valorfinanciado"/><br><br>
            Número de meses:<br> <input type="text" name="numeromeses"/><br><br>
            Taxa de juros:<br> <input type="text" name="taxadejuros"/><br><br>
            <input type="submit" name="form" value="Calcular"/>
        </form>
        
        <% if(request.getParameter("form")!=null) { %>
            <% double valor = Double.parseDouble(request.getParameter("valorfinanciado"));%>
            <% int meses = Integer.parseInt(request.getParameter("numeromeses"));%>
            <% double taxa = Double.parseDouble(request.getParameter("taxadejuros"));%>
          
        
       <%DecimalFormat df = new DecimalFormat("#,##0.00");%>
       
        
        <%int x = 0;%>
        <%double totalparcela = 0;%>
        <%double totaljuro = 0;%>
        <% taxa = taxa/100;%>
        <% double amortizacao = valor/meses;%>
        <% double outrovalor = valor;%>
        
         
         <table id="t01">
            <tr>
                <td align="center" valign="middle">Mês</td>
                <td align="center" valign="middle">Parcelas</td>
                <td align="center" valign="middle">Amortizações</td>
                <td align="center" valign="middle">Juros</td>
                <td align="center" valign="middle">Saldo Devedor</td>
                
            </tr>
        <% for (int i=1; i <= meses; i++ ) {%>
        
        
    <tr> 
   
        <td align="center" valign="middle"> <%=i%> </td> <%//índice%>
       <td align="center" valign="middle"><%=df.format(amortizacao + (taxa * (valor - (x * amortizacao))))%></td> <%//parcela%>
       <td align="center" valign="middle"><%=df.format((amortizacao))%></td> <%//amortizacao%>
       <td align="center" valign="middle"><%=df.format((outrovalor*taxa))%></td> <% //juros %>
       <td align="center" valign="middle"><%=df.format((outrovalor-amortizacao))%></td> <% // saldo devedor %>
       
       
       <%totalparcela = totalparcela + (amortizacao + (taxa * (valor - (x * amortizacao))));%>
       <%totaljuro = totaljuro + (outrovalor*taxa);%>
       <%outrovalor = outrovalor - amortizacao;%> <%// mostrar saldo devedor%>  
       
       <%x++;%>
    </tr>
  <%}%>
  
  <td align="center" valign="middle">TOTAL </td>
  <td align="center" valign="middle"><%=totalparcela%></td>
  <td align="center" valign="middle"><%="-"%></td>
  <td align="center" valign="middle"><%=totaljuro%></td>
  <td align="center" valign="middle"><%="-"%></td>
        </table>
        <%}%><br><br><br><br><br><br><br><br><br>
         <div class="footer">
            FATEC - 2019 <br>
      POO - Ricardo Pupo Larguesa<br>
  PROJETO 2 - Mirelle Gushomoto, Gabriel Reverte
</div>
    </body>
</html>
