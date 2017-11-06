<%-- 
    Document   : ViewLogByUser
    Created on : 15 Mar, 2017, 2:51:28 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="objuser" class="tp.UserMasterBean"/>
        
    </head>
    <body>
       <script type="text/javascript">
        function change()
        {
            var vl=parseInt(document.form1.slt.value)
            //document.getElementById("sett").value=v1;
            window.location.replace("ViewLogByUser.jsp?ut="+vl);
        }
        
        </script>
        <form name="form1" method="post" action="../ViewLogByUserController">
            <table align="center">
                <tr>
                    <td>User Type</td>
                    <td>
                        <select name="slt" onchange="change()">
                            <option>select item</option>
                            <option value="0">Admin</option>
                            <option value="1">POS Officer</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>UserName</td>
                    
                    <%
                        String str = request.getParameter("ut");
                        int ut=0;
                        if(str!=null)
                        {
                           ut += Integer.parseInt(str);
                        }
                        
                       %>
                       <td><%= objuser.getComboByUserType(ut , "cmbuser") %></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Show Log"/></td>
                </tr>
            </table>
        </form>
                
            
                ${result}
    </body>
</html>
