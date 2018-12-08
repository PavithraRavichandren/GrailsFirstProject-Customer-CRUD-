<!DOCTYPE html>
<html>
	<head>
            <g:external dir="css" file="customer.css" />
        </head>
        <body  style="background-color:#E5E8E8;">
            <div class="form-style-6" style="margin-top: 0px;">
            <h2>Address Details</h2>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:form controller="address" action="save" >
                <label>Door No</label>
                <g:textField name="doorNo" class="input_fields"/><br/>
                <label>Street Name</label>
                <g:textField name="streetName" class="input_fields"/><br/>
                <label>Area</label>
                <g:textField name="area" class="input_fields"/><br/>
                <label>Pin Code</label>
                <g:textField name="pincode" class="input_fields"/><br/>
                <g:select name="distId" from="${districtList}" optionValue="name" optionKey="id" class="input_fields"/>
                <g:actionSubmit value ="Next" class="submit_button" action="save"/>
            </g:form>
                <center><a href="/CustomerApplication/address/operation" value="skip">Skip</a></center>
            </div>
        </body>
</html>

