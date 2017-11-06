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
    <body bgcolor="green">
        <jsp:useBean id="obPV" class="models.LayoutPlanHallViewModel"/>
        
        <%
            int moviecode=Integer.parseInt(request.getParameter("cmbmoviecode"));
            String bookingdate=request.getParameter("txtplandate");
            boolean checkplan=obPV.checkPlanExistsOnDateAndMovie(moviecode, bookingdate);
            if(checkplan==false)
            {
                out.println("<br/>plan not exists on that date");
                return;
            }
            session.setAttribute("moviecode", moviecode);
            session.setAttribute("bookingdate", bookingdate);
            %>
        <form name="frm1" method="post" action="BookingForm3.jsp">
            <table align="center" >
                <tr>
                    <td>select time:</td>
                    <td><%= obPV.getComboMultiple(moviecode, bookingdate, "cmbstarttime") %></td>
                </tr>
                <tr><td colspan="2"><input type="submit" value="Select Hall"/></td></tr>
            </table>
        </form>
    </body>
</html>
