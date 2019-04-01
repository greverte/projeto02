<%-- 
    Document   : adicionar
    Created on : 31/03/2019, 12:25:02
    Author     : mirelle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar Fornecedor</title>
    </head>
    <body>
        <h2>Adicionar Novo Fornecedor</h2>
        <form action="listaclientes.jsp">
            <br/>Nome: <br/><input type="text" name="nome"/>
            <br/><br/>Razão Social: <br/><input type="text" name="razao"/>
            <br/><br/>CNPJ: <br/><input type="text" name="cnpj"/>
            <br/><br/>E-mail: <br/><input type="text" name="email"/>
            <br/><br/>Telefone: <br/><input type="text" name="telefone"/>
            <br/><br/>Endereço: <br/><input type="text" name="endereco"/>
            <br/><br/><input type="submit" name="adicionar"/>
        </form>
    </body>
</html>
