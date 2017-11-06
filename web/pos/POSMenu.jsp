<%-- 
    Document   : POSMenu
    Created on : 25 Jan, 2017, 2:19:39 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:useBean id="objlogout" class="models.LogoutModel"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            a{
                color: yellow;
            }
        </style>
        <script type="text/javascript">
       var myVar=setInterval(function () {myTimer()}, 1000);
        var counter = 0;
        function myTimer() {
        var date = new Date();
        
        
        
        document.getElementById("demo").innerHTML = date.toTimeString();
        //document.getElementById("demo2").innerHTML = date.getMinutes();
        //document.getElementById("demo3").innerHTML = date.getSeconds();
        
        
        
        document.getElementById("demo1").innerHTML = date.toDateString();
}
</script>
    </head>
    <body style="background-image: url('image/design-pictures-7.jpg');
          background-repeat: no-repeat;  " >
        <div id="maind" style=" position: absolute; 
             
             width: 100%; height: 200px; ">
            
            <label id="demo" ></label><br/>
            
            <label id="demo1" style=" color: yellowgreen; "></label>
            <label style=" position: inherit; float: right; right:25px;"><%= objlogout.getLogoutButton(session, response, "LogoutController") %></label>
            <p style="font-size: 40px; font-family: fantasy; 
               color: yellow;
               " align="center">POS Officer page</p>
            
            <a href="index.jsp" >Home</a>|
            <!--<a href="BookingForm1.jsp" target="frame2">Book Now</a>-->
            
            <a href="pos/BookingSnack1.jsp" target="frame2">Book Snack</a>|
            <a href="pos/BookingPayment1.jsp" target="frame2">Collect Payment</a>|
            <a href="pos/BookingCancel1.jsp" target="frame2">Cancel Booking</a>|
            <a href="pos/BookingPrint1.jsp" target="frame2">Print Bill</a>|
            <a href="pos/SnackPrint1.jsp" target="frame2">Snack Bill Print</a>|
            <a href="pos/BookingCancelUnpaid1.jsp" target="frame2">Cancel Unpaid Booking </a>|
            <a href="pos/ChangePassword.jsp" >Change Password</a>
            
            
            </div>
         <div id="below" 
              style="position: relative; top: 200px; margin-left: 30px; margin-right: 30px;  "> 
             <iframe name="frame2"   width="100%" height="500" 
                  frameborder="0"  > 
         </div>
        
    </body>
</html>
