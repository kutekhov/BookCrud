<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
    <title>ClientData</title>
</head>


<style type="text/css">
    .tg {
        border-collapse: collapse;
        border-spacing: 0;
        border-color: #ccc;
    }

    .tg td {
        font-family: Arial, sans-serif;
        font-size: 14px;
        padding: 10px 5px;
        border-style: solid;
        border-width: 1px;
        overflow: hidden;
        word-break: normal;
        border-color: #ccc;
        color: #333;
        background-color: #fff;
    }

    .tg th {
        font-family: Arial, sans-serif;
        font-size: 14px;
        font-weight: normal;
        padding: 10px 5px;
        border-style: solid;
        border-width: 1px;
        overflow: hidden;
        word-break: normal;
        border-color: #ccc;
        color: #333;
        background-color: #f0f0f0;
    }

    .tg .tg-4eph {
        background-color: #f9f9f9
    }
</style>

</head>
<body>
<h1>Client Details</h1>

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
</table>

</body>
</html>
