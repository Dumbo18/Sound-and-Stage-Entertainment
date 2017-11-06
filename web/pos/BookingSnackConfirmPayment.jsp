<%-- 
    Document   : BookingSnackConfirmPayment
    Created on : 20 Feb, 2017, 1:32:50 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:useBean id="obbstm" class="models.BookingSnackTempModel"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        ${snackrecords}
        <% int bcode = (Integer)session.getAttribute("bookingcode");
            int totalprice=obbstm.getTotalPriceByBookingCode(bcode);
            %>
        
        <form method="post" action="../SnackPaymentController">
            <table align="center" >
                <tr>
                    <td align="center" colspan="2"><label style="color: red">Credit Card Details</label></td>
                </tr>
                <tr>
                    <td>Credit Card Holder Name</td>
                    <td><input type="text" name="txtccholdername" 
                               placeholder="Enter Holder Name" required</td>
                </tr>
                <tr>
                    <td>Credit Card Number</td>
                    <td><input type="text" name="txtccnumber" 
                               placeholder="Enter Number" required</td>
                </tr>
                <tr>
                    <td>CVV Number</td>
                    <td><input type="text" name="txtcvvnumber" 
                               placeholder="Enter Number" required</td>
                </tr>
                <tr>
                    <td>Valid Upto</td>
                    <td><input type="date" name="txtdate" 
                                required</td>
                </tr>
                <tr>
                    <td>Amount to pay Rs.</td>
                    <td><input type="text" name="txtamount1" value="<%= totalprice %>" disabled="true"  /></td>
                </tr>
                <tr>
                    
                    <td>
                        <input type="hidden" name="txtamount" value="<%= totalprice %>"/>
                        
                        <input type="submit" value="Make Payment"/> 
                               </td>
                </tr>
            </table>
            
        </form>
    </body>
</html>
