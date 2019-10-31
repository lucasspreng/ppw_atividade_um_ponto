<%-- 
    Document   : alterar
    Created on : 22/10/2019, 22:31:33
    Author     : atila
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Cliente</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css"/>
    </head>
    <body>
        <h1>Alterar Cliente</h1>

        <form method="post" 
              action="${pageContext.request.contextPath}/processaCidades">

            <input type="hidden" name="acao" value="alterar">
            <input type="hidden" name="id" value="${requestScope.cliente.id}">


            <table>
                <tr>
                    <td class="alinhaDireita">Nome: </td>
                    <td>
                        <input name="nome" type="text" size="20" value="${requestScope.cliente.nome}">
                    </td>
                </tr>
                <tr>
                    <td class="alinhaDireita">Sobrenome: </td>
                    <td>
                        <input name="sobrenome" type="text" size="20" value="${requestScope.cliente.sobrenome}">
                    </td>
                </tr>
                <tr>
                    <td class="alinhaDireita">Data de Nascimento <br> (dd/mm/aaaa): </td>
                    <td>
                        <fmt:formatDate pattern="dd/MM/yyyy" <input name="nascimento" type="text" size="8"> var="data" scope="page">
                                        <input name="dataNascimento" type="text" size="8">
                    </fmt:formatDate>

                </td>
            </tr>
            <tr>
                <td class="alinhaDireita">CPF: </td>
                <td>
                    <input name="cpf" type="text" size="13" value="${requestScope.cliente.cpf}">
                </td>
            </tr>
            <tr>
                <td class="alinhaDireita">Email: </td>
                <td>
                    <input name="email" type="text" size="20" value="${requestScope.cliente.email}">
                </td>
            </tr>
            <tr>
                <td class="alinhaDireita">Logradouro: </td>
                <td>
                    <input name="logradouro" type="text" size="25" value="${requestScope.cliente.logradouro}">
                </td>
            </tr>
            <tr>
                <td class="alinhaDireita">Número: </td>
                <td>
                    <input name="numero" type="text" size="6" value="${requestScope.cliente.numero}">
                </td>
            </tr>
            <tr>
                <td class="alinhaDireita">Bairro: </td>
                <td>
                    <input name="bairro" type="text" size="15" value="${requestScope.cliente.bairro}">
                </td>
            </tr>
            <tr>
                <td class="alinhaDireita">CEP: </td>
                <td>
                    <input name="cep" type="text" size="7" value="${requestScope.cliente.cep}">
                </td>
            </tr>
            <tr>
                <td class="alinhaDireita">Cidade: </td>
                <td>
                    <jsp:useBean id="servicos" scope="page" class="cadastroclientes.servicos.CidadeServices">


                        <select name="idCidade">
                            <c:forEach items="${servicos.todos}" var="cidade">
                                <c:choose>
                                    <c:when test="${requestScope.cliente.cidade.id eq cidade.id}">
                                        <option value="${cidade.id}" selected="true">${cidade.nome}</option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value="${cidade.id}">${cidade.nome}</option>
                                    </c:otherwise>
                                </c:choose>                                
                            </c:forEach>
                        </select>                   

                    </jsp:useBean>                   
                </td>
            </tr>
            <tr>
                <td>
                    <a href="${pageContext.request.contextPath}/formularios/clientes/listagem.jsp">Voltar</a>
                </td>
                <td class="alinhaDireita">
                    <input type="submit" value="alterar">
                </td>
            </tr>
        </table>

    </form>

</body>
</html>
