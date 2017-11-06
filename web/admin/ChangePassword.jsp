<%-- 
    Document   : ChangePassword
    Created on : 15 Mar, 2017, 1:04:54 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="../ChangePasswordController">
            <table align="center" border="1">
                <tr>
                    <td>Enter New Password :</td>
                    <td><input type="text" name="txtpassword"/></td>
                </tr>
               
                <tr>
                    
                    <td colspan="2" align="center"><input type="submit" value="Confirm Change"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
