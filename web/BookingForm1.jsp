<%-- 
    Document   : CreateSeat
    Created on : 30 Jan, 2017, 3:39:42 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="obm" class="models.MovieModel"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="demo/themes/base/jquery.ui.all.css">
	<script src="demo/jquery-1.9.0.js"></script>
	<script src="demo/ui/jquery.ui.core.js"></script>
	<script src="demo/ui/jquery.ui.widget.js"></script>
	<script src="demo/ui/jquery.ui.datepicker.js"></script>
	<link rel="stylesheet" href="demo/demos/demos.css">
	<script>
	$(function() {
		$( "#datepicker" ).datepicker();
	});
	</script>
    </head>
    <body>
        <%= session.getAttribute("result") %>
        
        <% session.removeAttribute("result"); %>
        
        <form name="form1" method="post" action="BookingForm2.jsp" >
            <table align="center">
                <tr>
                    <td><h2>select movie</h2></td>
                    <td><%= obm.getCombo("cmbmoviecode") %></td>
                </tr> 
                <tr>
                    <td><h2>enter your booking date:</h2> </td>
                    <td><input type="text" id="datepicker" name="txtplandate"/></td>
                </tr>
                <tr><td colspan="2"><input type="submit" value="Open Seat Map" /></td></tr>
            </table>
                    
        </form>
            
            
    </body>
</html>
