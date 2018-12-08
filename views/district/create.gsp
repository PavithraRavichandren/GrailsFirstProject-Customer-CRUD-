<!DOCTYPE html>
<html>
	<head>
            <g:external dir="css" file="customer.css" />
        </head>
        <body  style="background-color:#E5E8E8;">
            <div class="form-style-6">
            <h2>District Details</h2>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:form controller="district">
                <label>District Name</label>
                <g:textField name="districtName" class="input_fields"/><br/>
                <g:select name="stateName" from="${stateList}" optionValue="name" optionKey="id" class="input_fields"/>
                <g:actionSubmit value ="Next" class="submit_button" action="save"/>
            </g:form>
            </div>
            <center><a href="/CustomerApplication/district/operation" value="skip">Skip</a></center>
        </body>
</html>

