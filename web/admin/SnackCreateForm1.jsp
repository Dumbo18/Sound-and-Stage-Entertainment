<%-- 
    Document   : SnackCreateForm1
    Created on : 6 Feb, 2017, 2:03:45 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="obs" class="models.SnackModel"/>
    </head>
    <body>
        <%=session.getAttribute("result") %>
        <% session.removeAttribute("result");
            %>
        <form action="../SnackController" >
            <table border="1" align="center" >
                <tr>
                    <td>Snack Name :</td>
                    <td><input type="text" name="txtname" required/></td>
                </tr>
              <tr>
                    <td>Price : </td>
                    <td><input type="text" name="txtprice"required/></td>
                </tr>
                
                <tr>
                    
                    <td colspan="2" align="center"><input type="submit" value="Register new Snacks"/></td>
                </tr>
            </table>
        </form>
        <hr/>
        <%= obs.getRecordsWithDeleteAndEditButton("../SnackEditDeleteController") %>
    </body>
</html>
