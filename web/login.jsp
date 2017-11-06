<%-- 
    Document   : login
    Created on : 26 Jan, 2017, 6:52:08 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body bgcolor="pink">
        
        
        <form method="post" action="AuthenticateController">
            <table border="1" align="center">
                   <tr>
                    <td>Usertype :</td>
                    <td><select name="cmbusertype" >
                            <option value="0">Admin</option>
                <option value="1" selected>POS</option>
            </select>
                    </td>
                </tr>
                <tr>
                    <td>UserName :</td> 
                    <td><input type="text" name="txtusername" value="adi2" required/></td>
                </tr>
                <tr>
                    <td> Password : </td>
                    <td><input type="password" name="txtpassword" value="adi2" required/></td>
                </tr>
             
                <tr>
                    <td colspan="2" align="center">
                        <input type="image" src='image/LOGIN.jpg' 
                               alt='login' width="100" height="30"/> 
                               </td>
            <tr/>
            </table>
        </form>
    </body>
</html>
