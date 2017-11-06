<%-- 
    Document   : CreateSeat1
    Created on : 30 Jan, 2017, 3:44:20 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seat</title>
    </head>
    <body>
        <jsp:useBean id="obh" class="models.HallModel" />
        
        <%
            int theatercode=Integer.parseInt(request.getParameter("cmbtheatercode"));
            %>
        <form name="frm1" method="post" action="CreateSeat2.jsp">
            <table align="center" >
                <tr><td>Select Hall:</td><td> <%= obh.getComboByTheaterCode("cmbhallcode", theatercode) %></td>
                </tr>
                    <!--
                <tr><td>Seat name :</td>
                    <td> <input type="text" name="txtseatname" required /></td></tr>
                <tr><td>Price :</td><td> <input type="number" name="txtprice"/></td> </tr>
            -->
                <tr><td colspan="2"><input type="submit" value="Create seat for Selected Hall"/></td></tr>
            </table>
        </form>
           
                
    </body>
</html>
