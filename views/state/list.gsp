<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sample title</title>
    </head>
    <body  style="background-color:#E5E8E8;">
        <!--g:form controller="country" action="save"-->
    <center>
        <h2>State List</h2>
        <table border="2px" id="customers">
            <tr><td>Continent</td><td>Country</td><td>State</td></tr>
            <g:each in="${stateList}" var="p">
                <tr><td>${p?.country?.continent}</td><td>${p?.country.country}</td><td>${p?.name}</td></tr>
            </g:each>
        </table>
    </center>
</body>
</html>
