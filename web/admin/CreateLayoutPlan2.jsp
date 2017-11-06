<%-- 
    Document   : CreateSeat1
    Created on : 30 Jan, 2017, 3:44:20 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seat</title>
        <script type="text/javascript" src="image/jquery-ui.js"></script>
        <script type="text/javascript" src="image/jquery-ui.css"></script>
        <script type="text/javascript" src="image/jquery-1.8.3.min.js"></script>
        <script type="text/javascript">
            $(function() {
               alert('ok');
               
               
            });
        </script>
    </head>
    <body>
        <jsp:useBean id="obh" class="models.HallModel" />
         <jsp:useBean id="obm" class="models.MovieModel"/>
        <%
            int theatercode=Integer.parseInt(request.getParameter("cmbtheatercode"));
            %>
        <form name="frm1" method="post" action="CreateLayoutPlan.jsp">
            <table align="center" >
                <tr><td>Select Hall:</td><td> <%= obh.getComboByTheaterCode("cmbhallcode", theatercode) %></td>
                </tr>
                <tr>
                    <td>enter date: </td>
                    <td><input type="text" id="txtp" name="txtplandate" required/></td>
                </tr>
                <tr>
                    <td>start time: </td>
                    <td><input type="text" name="txtstarttime" required /></td>
                </tr>
                <tr>
                    <td>end time: </td>
                    <td><input type="text" name="txtendtime" required/></td>
                </tr>
                <tr>
                    <td>select movie</td>
                    <td><%= obm.getCombo("cmbmoviecode") %></td>
                </tr>
                <tr><td colspan="2"><input type="submit" value="Create new LayoutPlan"/></td></tr>
            </table>
        </form>
    </body>
</html>
