<%-- 
    Document   : BookingPayment2_1
    Created on : 15 Feb, 2017, 2:06:37 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="obbs" class="models.BookingSeatModel"/>
        <jsp:useBean id="obsdm" class="models.BookingSeatDetailModel"/>
    </head>
    <body>
        <% int bcode = (Integer)session.getAttribute("bookingcode");
        boolean check=obbs.checkPaidOrNotByBookingCode(bcode);
         if(check==true)
            {
                out.println("already made payment!cannot delete/remove booking");
                return;
            }
         else
         {
             int totalprice=obsdm.getTotalPriceForBookingCode(bcode);
            out.println("<br/>total price to pay Rs."+totalprice+"/=");
            %>
         <form name="form1" method="post" action="../BookingPaymentController">
            
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
         <% }
             %>
    </body>
</html>
