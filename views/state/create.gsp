<!DOCTYPE html>
<html>
	<head>
            <g:external dir="css" file="customer.css" />
        </head>
        <body  style="background-color:#E5E8E8;">
            <div class="form-style-6">
            <h2>State Details</h2>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:form controller="state">
                <label>State Name</label>
                <g:textField name="name" class="input_fields"/><br/>
                <g:select name="country" from="${countryList}" optionValue="country" optionKey="id" class="input_fields"/>
                <g:actionSubmit value ="Next" class="submit_button" action="save"/>
            </g:form>
                <center><a href="/CustomerApplication/state/operation" value="skip">Skip</a></center>
            </div>
        </body>
</html>

