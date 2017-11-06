<%-- 
    Document   : BookingPayment2
    Created on : 15 Feb, 2017, 1:59:28 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <jsp:useBean id="oblphv" class="models.LayoutPlanHallViewModel"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <% int bookingcode =Integer.parseInt(request.getParameter("txtbcode")) ;
        session.setAttribute("bookingcode", bookingcode);
        out.println(session.getAttribute("bookingcode"));
            %>
            
            ${oblphv.getRecordsByBookingCode(bookingcode)}<br/>
            <form method="post" action="BookingPayment2_1.jsp">
                <p align="center">  <input type="submit" value="Make Payment"/></p>
            </form>
    </body>
</html>
