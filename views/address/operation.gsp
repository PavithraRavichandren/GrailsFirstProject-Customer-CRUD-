<!DOCTYPE html>
<html>
	<head>
            <g:external dir="css" file="customer.css" />
            <script type="text/javascript">

            function callUpdate()
                {
                document.getElementById("delete").style.display = 'none';
                document.getElementById("update").style.display = 'block';
                }
                function callDelete()
                {
                document.getElementById("update").style.display = 'none';
                document.getElementById("delete").style.display = 'block';
                }
            
            </script>
        </head>
        <body  style="background-color:#E5E8E8;">
            <center>
                <h1>Address CRUD operations</h1>
            <li><a href="/CustomerApplication/address/list"  id='hide'>List</a></li>
            <li><a href="#" onclick='callDelete()' id='hide'>Delete</a></li>
            </center>
            <div id="delete" class="form-style-6" style="display:none;">
                <h2>Delete</h2>
                <g:form controller="address">
                    <g:select name="doorNo" from="${addressList}" optionValue="doorNo" optionKey="id" class="input_fields"/>
                    <g:actionSubmit value ="Delete" class="submit_button" action="delete"/>
                </g:form>
            </div>
            <center><a href="/CustomerApplication/customer/create" value="skip">Skip</a></center>
        </body>
</html>