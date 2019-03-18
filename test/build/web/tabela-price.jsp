<%-- 
    Document   : tabela-price
    Created on : 17/03/2019, 23:25:47
    Author     : mirel
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
    <h1>Tabela Price</h1>
</header>
        
           <form>
            Valor financiado:<br><input type="text" name="financiamento" required><br><br>
            Número de meses:<br><input type="text" name="tempo" required><br><br>
            Taxa de Juros:<br><input type="text" name="taxa" required><br>
                       <br>
 <p><input type="submit" name="form" value="Calcular">
           </form>
        
        <%if (request.getParameter("form") != null) {%>
        <%try { %> 
        <hr>
        <%DecimalFormat df = new DecimalFormat("#,##0.00");%> 

        <% double valor = Double.parseDouble(request.getParameter("financiamento"));%>
        <% int meses = Integer.parseInt(request.getParameter("tempo"));%>
        <% double taxa = Double.parseDouble(request.getParameter("taxa"));%>
        
        <%double parcela = valor * (Math.pow((1 + (taxa / 100)), meses) * (taxa / 100)) / (Math.pow((1 + (taxa / 100)), meses) - 1);%>
        <%double juros = 0;%>
        <%double amortizacao = parcela / juros;%>

        <%double saldodevedor = valor, totalParcela = 0, totalAmortizacao = 0, totalJuros = 0;%>
        
        


        <table id="t01">
            <th>Mês</th>
            <th>Parcela</th> 
            <th>Amortização</th>
            <th>Juros</th>
            <th>Saldo Devedor</th>
                <%for (int i = 1; i <= meses; i++) {%>

            <%juros = (saldodevedor * (taxa / 100));%>
            <%amortizacao = parcela - juros;%>
            <%saldodevedor = saldodevedor - parcela + juros;%>
            <%valor = valor - parcela;%>


            <tr>
                <td><%=i%></td>
                <td>R$  <%=df.format(parcela)%></td>
                <td>R$  <%=df.format(amortizacao)%></td>
                <td>R$  <%=df.format(juros)%></td>
                <td>R$  <%=df.format(saldodevedor)%></td>
            </tr>

            <%totalParcela += parcela;%>
            <%totalAmortizacao += amortizacao;%>
            <%totalJuros += juros;%>
            <%juros = (taxa * saldodevedor) / 100;%>
            <%}%>
            <tr>
                <td>Total: </td>
                <td>R$  <%=df.format(totalParcela)%></td>
                <td>R$  <%=df.format(totalAmortizacao)%></td>
                <td>R$  <%=df.format(totalJuros)%></td>
                <td>R$  <%=df.format(saldodevedor)%></td>
            </tr>
        </table>
        <%} catch (Exception ex) {%>
        <h3 style="color: blue"> Erro:<%=ex.getMessage()%></h3>
        <%}%>
        <%}%><br><br><br><br><br><br><br><br><br>
         <div class="footer">
            FATEC - 2019 <br>
      POO - Ricardo Pupo Larguesa<br>
  PROJETO 2 - Mirelle Gushomoto, Gabriel Reverte
</div>
    </body>
</html>
