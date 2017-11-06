<%-- 
    Document   : BookingSnack3
    Created on : 20 Feb, 2017, 12:40:47 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="obdst" class="models.BookingSnackTempModel"/>
    </head>
    <body>
        ${result}
        <%= obdst.getRecordsWithDeleteAndEditButton("../SnackTempEditDeleteController")%>
                        
    </body>
</html>
