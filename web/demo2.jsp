<%-- 
    Document   : demo2
    Created on : 31 Jan, 2017, 1:09:36 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
       <% String str=request.getParameter("gy");
            %>
            ${str}
        <c:forEach var="show" items="${paramValues.s}" >
           <br/> <c:out value="${show}" />
        </c:forEach>
        <c:forEach var="show1" items="${paramValues.p}" >
           <br/> <c:out value="${show1}" />
           <c:set var="size1" value="${show1}" /><br/>
           ${fn:length(size1)}
        </c:forEach>
        
    </body>
</html>
