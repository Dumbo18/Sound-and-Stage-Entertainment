<%-- 
    Document   : BookingPrint2
    Created on : 15 Feb, 2017, 2:58:07 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function Print()
            {
             window.print();   
            }
        </script>
        <jsp:useBean id="obbs" class="models.BookingSeatModel"/>
        <jsp:useBean id="obbsdm" class="models.BookingSeatDetailModel"/>
        <jsp:useBean id="oblphv" class="models.LayoutPlanHallViewModel"/>
        <style>
            table
            {
                 border-style: solid;
                 border-width: 5px;
            }
            tr td
            {
                border-style: inset;
                border-width: 2px;
            }
        </style>
    </head>
    <body>
        <% String bookingcode = request.getParameter("txtbcode");
        int bcode= Integer.parseInt(bookingcode);
        boolean check=obbs.checkPaidOrNotByBookingCode(bcode);
        if(check==false)
                {
                        out.println("Payment not done");
                        return;
                }
        
            %>
            <table align="left">
               
                <tr> 
                    
                    <td colspan="2"><%= oblphv.getTheaterNameByBookingCode(bcode) %></td>
                </tr>
                <tr>
                    
                    <td colspan="2"><%=oblphv.getHallNameByBookingCode(bcode) %></td>
                </tr>
                 <tr> 
                    <td>Booking Code</td>
                    <td><%= bcode %></td>
                </tr>
                <tr>
                    <td>Seat Name</td>
                    <td><%=oblphv.getSeatNamebyBookingCode(bcode) %></td>
                </tr>
                <tr>
                <td>Amount</td>
                <td>Rs.<%=obbsdm.getTotalPriceForBookingCode(bcode)%>/=</td>
                </tr>
                <tr>
                <td>Booking Date</td>
                <td><%= oblphv.getBookingDateByBookingCode(bcode)%></td>
                </tr>
                <tr>
                <td>Show time</td>
                <td><%= oblphv.getStartTimebyBookingCode(bcode)%></td>
                </tr>
                <tr>
                    <td  colspan="2"> <button onclick="Print()">Print</button></td>
                </tr>
            </table>
                
    </body>
</html>
