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
    <body>
        <!--g:form controller="country" action="save"-->
    <center>
        <h2>State List</h2>

        <table border="2px">
            <tr><td>Continent</td><td>Country</td><td>State</td><td>District</td></tr>
            <g:each in="${districtList}" var="p">
                <tr>
                    <td>${p?.state?.country?.continent}</td>
                    <td>${p?.state?.country?.country}</td>
                    <td>${p?.state?.name}</td>
                    <td>${p?.name}</td>
                </tr>
            </g:each>
        </table>
    </center>
</body>
</html>
