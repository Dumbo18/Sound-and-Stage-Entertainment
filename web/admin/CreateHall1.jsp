<%-- 
    Document   : CreateHall1
    Created on : 30 Jan, 2017, 3:06:25 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="obh" class="models.HallModel"/>
    </head>
    <body>
        <%= session.getAttribute("result")%>

        <% 
            session.removeAttribute("result");
            
            
          
            Object otcode = session.getAttribute("theatercode");
            int theatercode=0;
            if(otcode==null)
            {
                theatercode=Integer.parseInt(request.getParameter("cmbtheatercode"));
                session.setAttribute("theatercode", theatercode);
            }
            else
                theatercode=(Integer)session.getAttribute("theatercode");
            
            
            %>
            <form name="frm1" method="post" action="../HallController">
                <table border="1" align="center">
                    <tr>
                        <td>
                            Hall Name :
                        </td>
                        <td><input type="text" name="txthallname" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center" ><input type="submit" value="Create Hall"/></td>
                    </tr>
                </table>
                    
            </form>
            <hr/>
            <%= obh.getRecordsWithEditAndDeleteButtonByTheaterCode(theatercode,
                    "../HallEditDeleteController") %>
            
    </body>
</html>
