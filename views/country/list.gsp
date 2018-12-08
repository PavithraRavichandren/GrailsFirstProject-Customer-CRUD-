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
    <center>

        <h2>Country List</h2>
        <!--g:form controller="country" action="save"-->
        <table border="2px">
            <tr><td>Continent</td><td>Country</td></tr>
            <g:each in="${countryList}" var="p">
                <tr><td>${p?.continent}</td><td>${p?.country}</td></td></tr>
            </g:each>
        </table>
    </center>
</body>
</html>
