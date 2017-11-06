<%-- 
    Document   : BookingCancelUnpaid1
    Created on : 17 Feb, 2017, 2:06:05 PM
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
        <form name="frm1"  method="post" action="BookingCancelUnpaid2.jsp">
            <table border='1' align='center'>
                <tr>
                    <td>Select Date</td>
                    <td><input type="date" name="txtdate" /></td>
                </tr>
                <tr>
                    <td>Select Time</td>
                    <td><input type="text" name="txttime" /></td>
                </tr>
                <tr>
                    
                    <td colspan="2" align='center'><input type="submit" value="View Unpaid Booking" /></td>
                    
                </tr>
            </table>
        </form>
    </body>
</html>
