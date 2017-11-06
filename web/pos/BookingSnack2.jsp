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
        <jsp:useBean id="obsm" class="models.SnackModel"/>
        <jsp:useBean id="obdst" class="models.BookingSnackTempModel"/>
    </head>
    <body>
        <% 
            String checkpaystate=(String)session.getAttribute("checkpaystate");
            if(checkpaystate==null || checkpaystate.length()<=0)
            {
                String sessionbookingcode=request.getParameter("txtbcode");
                int bcode=0;
                if(sessionbookingcode!=null && sessionbookingcode.length()>0)
                {
                    bcode = Integer.parseInt(request.getParameter("txtbcode"));
                    session.setAttribute("bookingcode", bcode);
                }
                else
                {
                    bcode=(Integer)session.getAttribute("bookingcode");
                }
                
            boolean check=obbs.checkPaidOrNotByBookingCode(bcode);
             if(check==false)
                {
                    out.println("Payment is not Done!!!!");
                    return;
                }
             else
                 session.setAttribute("checkpaystate", "true");
             
            
            }
            %>
            <form method="post" action="../BookingSnackTempController">
                <table align="center" border="1">
                    <tr>
                        <td>Select Snack :</td>
                        <td><%=obsm.getCombo("cmb1") %></td>
                    </tr>
                    <tr>
                        <td>Quantity :</td>
                        <td><input type="text" name="txtquantity"/></td>
                    </tr>
                     <tr>
                        
                         <td align="center" colspan="2"><input type="submit" value="Save"/></td>
                    </tr>
                   
                    
                </table>
            </form>
             <%= obdst.getRecordsWithDeleteAndEditButton("../SnackTempEditDeleteController")%>
             <br/>
             <br/>
             
                  <form name='form1' method='post' action='BookingSnackConfirmPayment.jsp'>
                  <input type='submit' name='btnsubmit' value='Confirm Purchase and Make Payment' />
                  </form>
            
         
    </body>
</html>
