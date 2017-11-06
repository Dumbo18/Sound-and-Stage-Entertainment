<%-- 
    Document   : BookingForm5.jsp
    Created on : 13 Feb, 2017, 1:11:56 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:useBean id="obsdm" class="models.BookingSeatDetailModel"/>
<jsp:useBean id="oblpvm" class="models.LayoutPlanHallViewModel"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="yellow">
        
        ${result}
        
        <%
           
            Object obookingcode=session.getAttribute("bookingcode");
            if(obookingcode==null)
            {
                out.println("<br/>bookingcode not found!");
                return;
            }
            
            int bcode=Integer.parseInt(obookingcode.toString());
              session.setAttribute("bookingcode", bcode);  
            out.println("<br/>booking code from session is: "+session.getAttribute("bookingcode").toString());
            
            out.println("<hr/>");
            //out.println(obsdm.getRecordsByBookingCode(bcode));
            out.println(oblpvm.getRecordsByBookingCode(bcode));
            
            int totalprice=obsdm.getTotalPriceForBookingCode(bcode);
            out.println("<br/>total price to pay Rs."+totalprice+"/=");
            
            %>
        <hr/>
        <form name="form1" method="post" action="PaymentController">
            <a href="index.jsp" target="this.open()"> if pay later then bring booking code and id proof at hall
             before 30 minutes of show start time</a>
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
