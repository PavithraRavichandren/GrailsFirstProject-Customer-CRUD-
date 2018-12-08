<!DOCTYPE html>
<html>
	<head>
            <g:external dir="css" file="customer.css" />
        </head>
        <body  style="background-color:#E5E8E8;">
            <div class="form-style-6" style="margin-top: 0px;">
            <h2>Customer Details</h2>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:form controller="customer" >
                <label>Customer Name</label>
                <g:textField name="name" class="input_fields"/><br/>
                <label>Blood Group</label>
                <g:textField name="bloodGroup" class="input_fields"/><br/>
                <label>Date of Birth</label><br/>
                <g:datePicker name="dateOfBirth" class="input_fields" precision="day"  /><br/>
                <label>Email</label>
                <g:textField name="email" class="input_fields"/><br/>
                <label>Password</label>
                <g:textField name="password" class="input_fields"/><br/>
                <g:select name="doorNo" from="${addressList}" optionValue="doorNo" optionKey="id" class="input_fields"/>
                <g:actionSubmit value ="Next" class="submit_button" action="save"/>
            </g:form>
            <center><a href="/CustomerApplication/customer/operation" value="skip">Skip</a></center>
            </div>
        </body>
</html>