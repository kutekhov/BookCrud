<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<%--
  Created by IntelliJ IDEA.
  User: Мой-ПК
  Date: 29.11.2018
  Time: 23:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="../../index.jsp">Back to main menu</a>
<h1>Client List</h1>

<c:if test="${!empty clientList}">
    <table class="tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">Name</th>
            <th width="120">Family</th>
            <th width="120">data_birth</th>
            <th width="120">passport</th>
            <th width="120">address</th>
            <th width="120">number_contract</th>
            <th width="120">e_mail</th>
            <th width="120">password</th>
            <th width="60">Edit</th>
            <th width="60">Delete</th>
        </tr>
        <c:forEach items="${listClients}" var="client">
            <tr>
                <td>${client.id}</td>
                <td><a href="//${client.id}" target="_blank">${client.clientName}</a></td>
                <td>${client.clientFamily}</td>
                <td>${client.data_birth}</td>
                <td>${client.clientPasspor}</td>
                <td>${client.clientAddress}</td>
                <td>${client.numberContract}</td>
                <td>${client.emailClient}</td>
                <td>${client.passwordClient}</td>
                <td><a href="<c:url value='/edit/${client.id}'/>">Edit</a></td>
                <td><a href="<c:url value='/remove/${client.id}'/>">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>


<h1>Add a Client</h1>

<c:url var="addAction" value="/clients/add"/>

<form:form action="${addAction}" commandName="client">
<table>
    <c:if test="${!empty client.id}">
        <tr>
            <td>
                <form:label path="id">
                    <spring:message text="ID"/>
                </form:label>
            </td>
            <td>
                <form:input path="id" readonly="true" size="8" disabled="true"/>
                <form:hidden path="ID"/>
            </td>
        </tr>
    </c:if>
    <tr>
        <td>
            <form:label path="name_clien">
                <spring:message text="clientName"/>
            </form:label>
        </td>
        <td>
            <form:input path="clientName"/>
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="clientFamily">
                <spring:message text="clientFamily"/>
            </form:label>
        </td>
        <td>
            <form:input path="clientFamily"/>
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="data_birth">
                <spring:message text="data_birth"/>
            </form:label>
        </td>
        <td>
            <form:input path="data_birth"/>
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="clientPasspor">
                <spring:message text="passport"/>
            </form:label>
        </td>
        <td>
            <form:input path="clientPasspor"/>
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="clientAddress">
                <spring:message text="address"/>
            </form:label>
        </td>
        <td>
            <form:input path="clientAddress"/>
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="numberContract">
                <spring:message text="numberContract"/>
            </form:label>
        </td>
        <td>
            <form:input path="numberContract"/>
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="emailClient">
                <spring:message text="emailClient"/>
            </form:label>
        </td>
        <td>
            <form:input path="emailClient"/>
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="passwordClient">
                <spring:message text="passwordClient"/>
            </form:label>
        </td>
        <td>
            <form:input path="passwordClient"/>
        </td>
    </tr>




    <tr>
        <td colspan="2">
            <c:if test="${!empty client.clientName}">
                <input type="submit"
                       value="<spring:message text="edit client"/>"/>
            </c:if>
            <c:if test="${empty client.clientName}">
                <input type="submit"
                       value="<spring:message text="Add client"/>"/>
            </c:if>
        </td>
    </tr>
</table>
</form:form>
</html>
