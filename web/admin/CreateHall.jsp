<%-- 
    Document   : CreateHall
    Created on : 27 Jan, 2017, 1:07:44 PM
    Author     : Dear Kallu
--%>
<jsp:useBean id="objTheater" class="models.TheaterModel"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <form name="form1" method="post" action="CreateHall1.jsp">
            <table align="center">
                <tr>
                    <td>select theater:</td>
                    <td><%= objTheater.getCombo("cmbtheatercode") %></td>
                </tr>
                
                <tr>
                    <td colspan="2"><input type="submit" value="Selected Theater"/></td>
                    
                </tr>
            </table>
             
                    
                    
        </form>
    </body>
</html>
