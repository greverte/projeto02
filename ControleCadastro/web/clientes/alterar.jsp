<%-- 
    Document   : alterar
    Created on : 31/03/2019, 12:25:10
    Author     : gabri
--%>

<%@page import="bd.BDC"%>
<%@page import="bd.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Cliente</title>
    </head>
    <body>
        <% int id = Integer.parseInt(request.getParameter("id"));%>
        <% Cliente c = BDC.getClientesList().get(id);%>
        
        <h2>Alterar Dados do Cliente</h2>
        <h4>ID: <b><%= id %></b></h4>
        <form action="listaclientes.jsp">
            Nome: <br/><input type="text" name="nome" value="<%=c.getNome()%>"/>
            <br/><br/>CPF: <br/><input type="text" name="cpf" value="<%=c.getCpf()%>"/>
            <br/><br/>RG: <br/><input type="text" name="rg" value="<%=c.getRg()%>"/>
            <br/><br/>E-mail: <br/><input type="text" name="email" value="<%=c.getEmail()%>"/>
            <br/><br/>Telefone: <br/><input type="text" name="telefone" value="<%=c.getTelefone()%>"/>
            <br/><br/>Endereço: <br/><input type="text" name="endereco" value="<%=c.getEndereco()%>"/>
            <br/>
            <hr>
            <h4>Tem certeza que deseja alterar os dados desse cliente?</h4>
            <input type="submit" name="alterar" value="Sim">
            <input type="submit" name="alterar" value="Não">
            <input type="hidden" name="id" value="<%= id %>">
  
        </form>
    </body>
</html>
