<%-- 
    Document   : BookingForm3
    Created on : 6 Feb, 2017, 12:42:45 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>3</title>
        
            
        <script type="text/javascript" language="JavaScript">
 
        var secs;
        var timerID = null;
        var timerRunning = false;
        var delay = 1000;
 
        function InitializeTimer(seconds) {
            // Set the length of the timer, in seconds
            secs = seconds;
            StopTheClock();
            StartTheTimer();
        }
 
        function StopTheClock() {
            if (timerRunning)
                clearTimeout(timerID);
            timerRunning = false;
        }
 
        function StartTheTimer() {
            if (secs == 0) {
                StopTheClock();
                
               
                    //window.location.href = window.location.href;
                    location.assign("BookingCrashedController");
                //alert("Your page has been refreshed !!!!");
            }
            else {
                //self.status = 'Remaining: ' + secs;
                
                document.getElementById("lbltime").innerText = secs + " ";
                secs = secs - 1;
                
                timerRunning = true;
                timerID = self.setTimeout("StartTheTimer()", delay);
            }
            
    }
    var myVar=setInterval(function () {myT()}, 1000);
        var counter = 1;
        function myT() {
        
        
        
        
        document.getElementById("prog").value=counter ;
        counter=counter+1;
}
            
        
    
    </script>
        
      
        
    </head>
    <body bgcolor="orange" onload="InitializeTimer(30)">
        
       <%
           String bookingpagestatus=(String)application.getAttribute("bookingpageopened");
           if(bookingpagestatus.equals("true"))
           {
               response.sendRedirect("BookingPageStatusOpenedController");
           }
           else
            application.setAttribute("bookingpageopened", "true");
           %>
           
           
           
       <jsp:useBean id="oblphv" class="models.LayoutPlanHallViewModel"/>
       <jsp:useBean id="obs" class="models.SnackModel"/>
      
       <%
           String cmbvalue=request.getParameter("cmbstarttime");
           String[] arr=cmbvalue.split(",");
           int hallcode=Integer.parseInt(arr[0]);
           String bookingdate=arr[1];
           double starttime=Double.parseDouble(arr[2]);
           out.println("<br/>new hallcode is: "+hallcode);
           
           %><br/>
           
           <font>This page will be refreshed after
           <Label ID="lbltime" runat="server" Style="font-weight: bold; "></Label></font>
        <font>seconds</font><br/>
        <progress id="prog" max="30" ></progress> %
        
           
        <div id="load_me" >
           <form id="frm" name="form1" method="post" action="RegisterBookingController">
               
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
                    
                   
                </table>  

               <br/>
               <% 
                   String checkform=oblphv.getGridByPlanAndHallForBooking(hallcode, bookingdate, starttime, "chkseat");
                   if(checkform.equals("NO plan created for the hall!!!"))
                   {
                       out.println(checkform);
                       return;
                   }
                   else
                   out.println(checkform);
                   
                   %>
               <br/>
               
               <br/>
               <p align="center"><input type="submit" value="Confirm Booking"/></p>
           </form>
               </div>
                   
    </body>
</html>
