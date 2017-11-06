<%-- 
    Document   : CreaterTheater1
    Created on : 27 Jan, 2017, 12:45:19 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="obt" class="models.TheaterModel"/>
    </head>
    <body>
        <%= session.getAttribute("result")%>
        <% session.removeAttribute("result"); 
            %>
        <form action="../TheaterController" >
            <table border="1" align="center" >
                <tr>
                    <td>Theater Name :</td>
                    <td><input type="text" name="txtname" required/></td>
                </tr>
              <tr>
                    <td>Theater Location :</td>
                    <td><input type="text" name="txtlocation" required/></td>
                </tr>
                <tr>
                    
                    <td colspan="2" align="center"><input type="submit" value="Register new theater"/></td>
                </tr>
                

                
  
            </table>
        </form>
        <hr/>
        <%= obt.getRecordswithEditAndDeleteButton("../TheaterEditDeleteController")%>
    </body>
        
</html>
