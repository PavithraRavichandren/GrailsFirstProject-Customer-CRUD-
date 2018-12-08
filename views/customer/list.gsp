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
        <h2>Customer List</h2>


        <table border="2px">
            <tr><td>Customer Name</td>
                <td>Blood Group</td>
                <td>Date of Birth</td>
                <td>Email</td>
                <td>Door No</td>
                <td>Street Name</td>
                <td>Area</td>
                <td>Pin Code</td>
                <td>District</td>
                <td>State</td>
                <td>Country</td>
                <td>Continent</td>
            </tr>
            <g:each in="${customerList}" var="p">
                <tr>
                    <td>${p?.name}</td>
                    <td>${p?.bloodGroup}</td>
                    <td>${p?.dob}</td>
                    <td>${p?.email}</td>
                    <td>${p?.address?.doorNo}</td>
                    <td>${p?.address?.streetName}</td>
                    <td>${p?.address?.area}</td>
                    <td>${p?.address?.pincode}</td>
                    <td>${p?.address?.district?.name}</td>
                    <td>${p?.address?.district?.state?.name}</td>
                    <td>${p?.address?.district?.state?.country?.country}</td>
                    <td>${p?.address?.district?.state?.country?.continent}</td>
                </tr>
            </g:each>
        </table>
    </center>
</body>
</html>

