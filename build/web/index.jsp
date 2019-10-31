<%-- 
    Document   : index
    Created on : 19/10/2019, 13:25:48
    Author     : atila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Controle de Cadastro de Clientes</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css"/>
    </head>
    <body>
        <h1>Sistema de Cadastro de Clientes</h1>
        
        <p>
            <a href="${pageContext.request.contextPath}/formularios/clientes/listagem.jsp">Clientes</a>
        </p>
        <p>
            <a href="${pageContext.request.contextPath}/formularios/cidades/listagem.jsp">Cidades</a>
        </p>
        <p>
            <a href="${pageContext.request.contextPath}/formularios/estados/listagem.jsp">Estados</a>
        </p>
        
    </body>
</html>
