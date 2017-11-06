<%-- 
    Document   : CreateSeat
    Created on : 30 Jan, 2017, 3:39:42 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="obt" class="models.TheaterModel"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form name="form1" method="post" action="CreateSeat1.jsp" >
            <table align="center">
                <tr>
                    <td>select theater</td>
                    <td><%= obt.getCombo("cmbtheatercode") %></td>
                </tr> 
                <tr><td colspan="2"><input type="submit" value="submit" /></td></tr>
            </table>
                    
        </form>
            
            
    </body>
</html>
