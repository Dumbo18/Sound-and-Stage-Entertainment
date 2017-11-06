<%-- 
    Document   : MovieCreateForm1
    Created on : 6 Feb, 2017, 1:34:27 PM
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
         <form action="../MovieController" >
            <table border="1" align="center" >
                <tr>
                    <td>Movie Name :</td>
                    <td><input type="text" name="txtname" required/></td>
                </tr>
              <tr>
                    <td>Genre :</td>
                    <td><input type="text" name="txtgenre"required/></td>
                </tr>
                <tr>
                    <td>Cast:</td>
                    <td><input type="text" name="txtcast"required/></td>
                </tr>
                <tr>
                    
                    <td colspan="2" align="center"><input type="submit" value="Register new Movie"/></td>
                </tr>
                

                
  
            </table>
        </form>
    </body>
</html>
