<%-- 
    Document   : CreateSeat2
    Created on : 30 Jan, 2017, 4:45:14 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="objseat" class="models.SeatModel"/>
             
    </head>
    <body>
        <%= session.getAttribute("result") %>
        <%
            session.removeAttribute("result");
            
            Object osessionhallcode=session.getAttribute("hallcode");
            int hallcode=0;
            if(osessionhallcode==null)
            {
                hallcode=Integer.parseInt(request.getParameter("cmbhallcode"));
                session.setAttribute("hallcode", hallcode);
            }
            else
                hallcode=(Integer)session.getAttribute("hallcode");
        
                
            %>
        
        <form name="form1" method="post" action="../SeatController">
            <table align="center" >
            
                    
                <tr><td>Seat name :</td>
                    <td> <input type="text" name="txtseatname" required /></td></tr>
                <tr><td>Price :</td><td> <input type="number" name="txtprice"/></td> </tr>
            
                <tr><td colspan="2"><input type="submit" value="Create seat for Selected Hall"/></td></tr>
            </table>
            
        </form>
            
        <hr/>
        
            <%= objseat.getRecordsByHallCodeWithDeleteAndEditButton(hallcode, "../DeleteSeatController") %>
            
    </body>
</html>
