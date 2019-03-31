<%-- 
    Document   : listaclientes
    Created on : 31/03/2019, 11:27:27
    Author     : gabri
--%>


<%@page import="bd.BDC"%>
<%@page import="bd.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (request.getParameter("adicionar") != null){
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String endereco = request.getParameter("endereco");
        
        Cliente NovoCliente = new Cliente();
        NovoCliente.setNome(nome);
        NovoCliente.setCpf(cpf);
        NovoCliente.setRg(rg);
        NovoCliente.setEmail(email);
        NovoCliente.setTelefone(telefone);
        NovoCliente.setEndereco(endereco);
        BDC.getClientesList().add(NovoCliente);
        response.sendRedirect(request.getRequestURI());
    }
    else if (request.getParameter("excluir")!= null){
        String resposta = request.getParameter("excluir");
        if (resposta.equals("Sim")) {
            int id = Integer.parseInt(request.getParameter("id"));
            BDC.getClientesList().remove(id);   
    }
    response.sendRedirect(request.getRequestURI());
    
    }
    
    else if (request.getParameter("alterar")!=null){
        String resposta = request.getParameter("alterar");
        if (resposta.equals("Sim")) {
            int id = Integer.parseInt(request.getParameter("id"));
            Cliente NovoCliente = new Cliente();
        NovoCliente.setNome(request.getParameter("nome"));
        NovoCliente.setCpf(request.getParameter("cpf"));
        NovoCliente.setRg(request.getParameter("rg"));
        NovoCliente.setEmail(request.getParameter("email"));
        NovoCliente.setTelefone(request.getParameter("telefone"));
        NovoCliente.setEndereco(request.getParameter("endereco"));
         BDC.getClientesList().set(id, NovoCliente);   
        }
        response.sendRedirect(request.getRequestURI());
    }

%>
    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
    </head>
    <body>
        <h2>Clientes</h2>
        <form action="adicionar.jsp">
            <input type="submit" value="Adicionar">
        </form>
        <h3>Listagem</h3>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>CPF</th>
                <th>RG</th>
                <th>E-mail</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Comandos</th>
            </tr>
            <% for (Cliente c : BDC.getClientesList()) {%>
            <tr>
                <% int id = BDC.getClientesList().indexOf(c);%>
                
                <td> <%= id%></td>
                <td> <%= c.getNome() %></td>
                <td> <%= c.getCpf() %></td>
                <td><%= c.getRg() %></td>
                <td><%= c.getEmail() %></td>
                <td><%= c.getTelefone() %></td>
                <td><%= c.getEndereco() %></td>
                <td>
                    <a href="alterar.jsp?id=<%=id%>">
                        <button>Alterar</button>
                </a>
                    <a href="excluir.jsp?id=<%=id%>">
                        <button>Excluir</button>
                </a>
                </td>
                </tr>
                
                <%}%>
        </table>
   
    </body>
</html>
