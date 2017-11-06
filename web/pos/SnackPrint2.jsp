<%-- 
    Document   : SnackPrint2
    Created on : 22 Feb, 2017, 12:21:34 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="objspm" class="models.SnackPaymentModel"/>
        <jsp:useBean id="objbsdm" class="models.BookingSnackModel"/>
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
        <% int bcode = Integer.parseInt(request.getParameter("txtbcode"));
        boolean check=objspm.CheckRecordsExistByBookingCode(bcode);
            if(check==false)
            {
                out.println("Payment is not done");
                return;
            }
            %>
           <%=objspm.getRecordsByBookingCode(bcode)%>
           <%=objbsdm.getRecordsByBookingCode(bcode) %>
           
           <button onclick="window.print()">Print</button>
    </body>
</html>
