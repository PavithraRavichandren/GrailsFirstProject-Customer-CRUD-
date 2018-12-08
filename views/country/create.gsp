<!DOCTYPE html>
<html>
    <head>
        <g:external dir="css" file="customer.css" />
    </head>
    <body  style="background-color:#E5E8E8;">
        <div class="form-style-6" >
            <h2>Country Details</h2>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:form controller="country">
                <label>Country Name</label>
                <g:textField name="country" class="input_fields"/><br/>
                <label>Continent Name</label>
                <g:textField name="continent" class="input_fields"/><br/>
                <g:actionSubmit value ="Next" class="submit_button" action="save"/>
            </g:form>
        </div>
        <center><a href="/CustomerApplication/country/operation" value="skip">Skip</a></center>
    </body>
</html>