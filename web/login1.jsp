<%-- 
    Document   : login1
    Created on : 22 Feb, 2017, 2:21:45 PM
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
        <div style="background-color: rosybrown; width: 25% ">
            <!--<h2> Server Resource login</h2>-->
            <form method="POST" action="j_security_check">
                <table border="1" align="center">
                    <caption><h2>Server Resource login</h2></caption>
                    <tr>
                        <td>UserName</td>
                        <td><input type="text" name="j_username"/></td>
                    </tr> 
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="j_password"/></td>
                    </tr>
                    <tr><td colspan="2" align="center"><input type="submit" value="Login"/>
                            <input type="reset" value="Reset"/></td></tr>
            
            
            </table>
            </form>
        </div>
        
    </body>
</html>
