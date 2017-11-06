<%-- 
    Document   : CreateUser1
    Created on : 8 Feb, 2017, 1:14:23 PM
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
        <form name="frm" method="post" action="../UserMasterController">
            <table align="center" border="1">
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="txtusername" required/></td>

                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="txtpassword" required/></td>

                </tr>
                <tr>
                    <td>Usertype</td>
                            <td><select name="sname">
                                    <option value="0">Admin</option>
                                    <option value="1">POS Officer</option>
                        </select></td>

                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="txtname" required/></td>
                    

                </tr>
                <tr>
                    <td>Phone</td>
                    <td><input type="text" name="txtphone" required/></td>

                </tr>
                <tr>
                    
                    <td colspan="2" align="center"><input type="submit" value="Register New User" /></td>

                </tr>
                
            </table>
        </form>
        
    </body>
</html>
