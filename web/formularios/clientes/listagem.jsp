<%-- 
    Document   : listagem
    Created on : 22/10/2019, 17:07:47
    Author     : atila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes Cadastrados</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css"/>
    </head>
    <body>
        <h1>Clientes Cadastrados</h1>

        <p><a href="${pageContext.request.contextPath}/formularios/clientes/novo.jsp">Novo Cliente</a></p>

        <table class="tabelaListagem">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Sobrenome</th>
                    <th>Email</th>
                    <th>CPF</th>
                    <th>Cidade</th>
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>
                <jsp:useBean id="servicos" scope="page" class="cadastroclientes.servicos.ClienteServices">
                    <c:forEach items="${servicos.todos}" var="cliente">
                        <tr>
                            <td>${cliente.id}</td>
                            <td>${cliente.nome}</td>
                            <td>${cliente.sobrenome}</td>
                            <td>${cliente.email}</td>
                            <td>${cliente.cpf}</td>
                            <td>${cliente.cidade.nome}</td>
                            <td><a href="${pageContext.request.contextPath}/processaClientes?acao=prepAlteracao&id=${cliente.id}">Alterar</a></td>
                            <td><a href="${pageContext.request.contextPath}/processaClientes?acao=prepExclusao&id=${cliente.id}">Excluir</a></td>
                        </tr>
                    </c:forEach>
                </jsp:useBean>
            </tbody>
        </table>

    </body>
</html>
