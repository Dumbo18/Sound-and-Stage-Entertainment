<%-- 
    Document   : CreateLayoutPlan
    Created on : 1 Feb, 2017, 1:11:02 PM
    Author     : Dear Kallu
--%>
<jsp:useBean id="obSeat" class="models.SeatModel" />
<jsp:useBean id="obPV" class="models.LayoutPlanHallViewModel"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            int hallcode=Integer.parseInt(request.getParameter("cmbhallcode"));
            
            
            String plandate=request.getParameter("txtplandate");
            double starttime=Double.parseDouble(request.getParameter("txtstarttime"));
            double endtime=Double.parseDouble(request.getParameter("txtendtime"));
            int moviecode=Integer.parseInt(request.getParameter("cmbmoviecode"));
            
            session.setAttribute("hallcode", hallcode);
            session.setAttribute("plandate", plandate);
            session.setAttribute("starttime", starttime);
            session.setAttribute("endtime", endtime);
            session.setAttribute("moviecode", moviecode);
            
            boolean check=obPV.checkPlanExistsOnDateAndStartTimeForAHall(hallcode, plandate, starttime);
            if(check==true)
            {
                out.println("<br/>plan for hall/date/starttime already created");
                return;
            }
            out.println("<br/>"+plandate+", "+starttime+", "+
                    endtime+", "+moviecode);
            
            %>
           
        <form name="form1" method="post" action="../LayoutPlanController">
            <%= obSeat.showSeatsByHallCode(hallcode, "chk") %>
                    <br/>
                    <input type="submit" value="Register New Layout Plan"/>
        </form>
    </body>
</html>
