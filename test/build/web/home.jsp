<%-- 
    Document   : home
    Created on : 14/03/2019, 23:35:27
    Author     : gabri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <title>Projeto 02 - POO</title>
        <style> 
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
<br><br>

<div class="jumbotron" align="center">
      <div class="alert alert-info" role="alert">
  <h4 class="alert-heading">TABELA SAC </h4>
  <p>A Tabela SAC é o sistema de amortização
           no qual as parcelas tem valores decrescentes.
            É muito utilizado em financiamentos de imóveis.</p>
  
</div>
       <div class="alert alert-info" role="alert">
  <h4 class="alert-heading">AMORTIZAÇÃO AMERICANA </h4>
  <p>O Sistema de Amortização Americano é uma
            forma de pagamento de empréstimos que se
            caracteriza pelo pagamento apenas dos juros
            da dívida,deixando o valor da dívida constante
            que pode ser paga em apenas um único pagamento.</p>
  
       </div>
            <div class="alert alert-info" role="alert">
  <h4 class="alert-heading">TABELA PRICE </h4>
  <p>A Tabela Price é o sistema de amortização mais utilizado nos empréstimos e financiamentos e sua principal característica são as parcelas de mesmo valor.</p>
  
       </div></div>
           <div class="footer">
            FATEC - 2019 <br>
      POO - Ricardo Pupo Larguesa<br>
      PROJETO 2 - Mirelle Gushomoto, Gabriel Reverte
</html>
