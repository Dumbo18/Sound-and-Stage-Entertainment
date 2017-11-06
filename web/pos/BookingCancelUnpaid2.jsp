<%-- 
    Document   : BookingCancelUnpaid2
    Created on : 17 Feb, 2017, 2:01:21 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="obseat" class="models.BookingSeatModel"/>
    </head>
    <body>
        <%
            String date=request.getParameter("txtdate");
            double time=Double.parseDouble(request.getParameter("txttime"));
            %>
        <form name='form1' method="post" action='../BookingUnpaidCancelController'>
            
            <%= obseat.getUnpaidBookingRecords("chk1", date, time) %>
            <p><input type='submit' value="Confirm cancel"/></p>
        </form>
    </body>
</html>
