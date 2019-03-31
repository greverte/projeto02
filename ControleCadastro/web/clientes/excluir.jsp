<%-- 
    Document   : excluir
    Created on : 31/03/2019, 12:25:18
    Author     : gabri
--%>

<%@page import="bd.BDC"%>
<%@page import="bd.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir cliente</title>
    </head>
    <body>
        <% int id = Integer.parseInt(request.getParameter("id"));%>
        <% Cliente c = BDC.getClientesList().get(id);%>
        
        <h3>Remoção de Cliente</h3>
        <h5>ID: <%= id%> </h5>
        <h5>Nome: <%= c.getNome() %></h5>
        <h5>CPF: <%= c.getCpf() %></h5>
        <h5>RG: <%= c.getRg() %></h5>
        <h5>E-mail: <%= c.getEmail() %></h5>
        <h5>Telefone: <%= c.getTelefone() %></h5>
        <h5>Endereço: <%= c.getEndereco() %></h5>
        
        <form action="listaclientes.jsp">
            <h2>Tem certeza que deseja excluir esse cliente?</h2>
            <input type="submit" name="excluir" value="Sim">
            <input type="submit" name="excluir" value="Não">
            <input type="hidden" name="id" value="<%= id%>">
    
        </form>
  
    </body>
</html>
