<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Sound</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body bgcolor="cyan">
        
       
           
        
        <div style=" background-image: url(image/s1.jpg);background-size: 100% 200px;  width: 100%; height: 200px;  ">
            <marquee onmouseover="this.stop()" onmouseout="this.start()" style="color: yellow; font-size: 20px; "><i>All cinema hall are at Bhopal !!!</i></marquee>
            <h4 style="display: inline ; position: absolute; top: 0px; right: 10px; ">
                
                <a href="contact.jsp" target="frame1"  
                   style="color: chartreuse;">Contact</a>|
                <a href="movieinfo.jsp" target="frame1"  
                   style="color: chartreuse;">Movie</a>|
                <a href="login.jsp" target="this.open()" style="color:chartreuse ;">login</a><br/>
                <a href="BookingForm1.jsp" target="frame1" style="color:yellow ;">Online Booking</a>
                
            </h4>
            
        </div>
        <div style="position: relative;margin-left: 30px; margin-right: 30px;background-color: white; ">
            <iframe name="frame1"  src="movieinfo.jsp" width="100%" height="500" 
                    frameborder="0" style="background: url(image/sultan.jpg) right bottom no-repeat, 
                    url(image/raees.jpg) left top no-repeat salmon ;
                    background-size: 250px 100%;" > 
                
            </iframe>
        </div>
    </body>
</html>
