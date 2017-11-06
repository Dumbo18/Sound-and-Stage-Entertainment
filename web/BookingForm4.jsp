<%-- 
    Document   : BookingForm4
    Created on : 10 Feb, 2017, 2:57:26 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="red">
        
        <jsp:useBean id="oblpvm" class="models.LayoutPlanHallViewModel"/>
        <jsp:useBean id="obsm" class="models.SnackModel"/>
        
        <%
            String[] seatsuniquecode=request.getParameterValues("chkseat");
        
if(seatsuniquecode==null)
            {
                out.println("no seats booked");
                return;
            }
            
            for(int i=0;i<seatsuniquecode.length;i++)
            {
                int seatuniquelayoutplancode=Integer.parseInt(seatsuniquecode[i]);
                int price=oblpvm.getSeatPriceByUniqueLayoutPlanCode(seatuniquelayoutplancode);
                out.println("<br/>"+seatuniquelayoutplancode+", "+price);
            }
            session.setAttribute("seatsselected", seatsuniquecode);
           %>
            <form name="form1" method="post" action="RegisterBookingController">
                <table align="center">
                    <tr>
                        <td>Custmer Name</td>
                        <td><input type="text" name="txtcustname" required/></td>
                        
                        
                    </tr>
                    
                    <tr>
                        <td>Contact Number</td>
                        <td><input type="text" name="txtcontactno" required /></td>
                    </tr>
                    <tr>
                        <td>Id Proof Type</td>
                                <td><select name="cmbidprooftype">
                                        <option value="UID">Adhar Card</option> 
                                        <option value="License">License</option> 
                                        <option value="Pancard">Pan Card</option> 
                                        <option value="VoterId">Voter Card</option> 
                            
                                    </select></td>
                    </tr>
                    <tr>
                        <td>Id Proof Number</td>
                        <td><input type="text" name="txtidproofno" required /></td>
                    </tr>
                    
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="Register Booking"</td>
                    </tr>
                </table>  
            </form>
    </body>
</html>
