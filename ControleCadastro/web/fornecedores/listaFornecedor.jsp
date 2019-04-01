<%-- 
    Document   : listaclientes
    Created on : 31/03/2019, 11:27:27
    Author     : mirelle
--%>


<%@page import="bd.BDF"%>
<%@page import="bd.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (request.getParameter("adicionar") != null){
        String nome = request.getParameter("nome");
        String razao = request.getParameter("razao");
        String cnpj = request.getParameter("cnpj");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String endereco = request.getParameter("endereco");
        
        Fornecedor NovoCliente = new Fornecedor();
        NovoCliente.setNome(nome);
        NovoCliente.setrazao(razao);
        NovoCliente.setcnpj(cnpj);
        NovoCliente.setEmail(email);
        NovoCliente.setTelefone(telefone);
        NovoCliente.setEndereco(endereco);
        BDF.getFornecedorList().add(NovoFornecedor);
        response.sendRedirect(request.getRequestURI());
    }
    else if (request.getParameter("excluir")!= null){
        String resposta = request.getParameter("excluir");
        if (resposta.equals("Sim")) {
            int id = Integer.parseInt(request.getParameter("id"));
            BDF.getFornecedorList().remove(id);   
    }
    response.sendRedirect(request.getRequestURI());
    
    }
    
    else if (request.getParameter("alterar")!=null){
        String resposta = request.getParameter("alterar");
        if (resposta.equals("Sim")) {
            int id = Integer.parseInt(request.getParameter("id"));
            FornecedorCliente NovoCliente = new Fornecedor();
        NovoCliente.setNome(request.getParameter("nome"));
        NovoCliente.setCpf(request.getParameter("razao"));
        NovoCliente.setRg(request.getParameter("cnpj"));
        NovoCliente.setEmail(request.getParameter("email"));
        NovoCliente.setTelefone(request.getParameter("telefone"));
        NovoCliente.setEndereco(request.getParameter("endereco"));
         BDF.getFornecedorList().set(id, NovoCliente);   
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
