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
        <table border="2px">
            <tr><td>Door Number</td><td>Street Name</td><td>Area</td><td>District</td><td>Pin code</tr>
            <g:each in="${addressList}" var="p">
                <tr>
                    <td>${p?.doorNo}</td>
                    <td>${p?.streetName}</td>
                    <td>${p?.area}</td>
                    <td>${p?.district?.name}</td>
                    <td>${p?.pincode}</td>
                </tr>
            </g:each>
        </table>
    </center>
    </body>
</html>
