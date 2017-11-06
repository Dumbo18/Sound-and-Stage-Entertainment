<%-- 
    Document   : layoutplan
    Created on : 31 Jan, 2017, 12:33:52 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
                    

            
    
    
    
    
            function show(){
               document.getElementById("c1").disabled=true; }
           
            
        </script>
        <style>
           
input[type="checkbox"] {
    display:inline-block;
    width:30px;
    height:30px;
    
    
   
    
}
        </style>
    </head>
    <body>
        <form name="frm23" action="demo2.jsp">
            <input id="" value="hello" />
            <table align="center">
                
                    <tr>
                        <td>S</td>
                        <td><input id="c1" type="checkbox" name="s" value="s1" onchange="show()" /></td>
                        <td><input  type="checkbox" name="s" value="s2" disabled checked  /></td>
                    <td><input  type="checkbox" name="s" value="s3"/></td>
                    <td><input  type="checkbox" name="s" value="s4"/></td>
                    <td><input  type="checkbox" name="s" value="s5"/></td>
                        <td><input type="checkbox" name="s" value="s6"/></td>
                    <td><input  type="checkbox" name="s" value="s7" /></td>
                    <td><input  type="checkbox" name="s" value="s8"/></td>
                    <td><input  type="checkbox" name="s" value="s9"/></td>
                    <td><input  type="checkbox" name="s" value="s10"/></td>
                </tr>
                <tr>
                        <td>R</td>
                        <td><input  type="checkbox" name="s" value="r1" 
                                   /></td>
                    <td><input  type="checkbox" name="s" value="r2"/></td>
                    <td><input  type="checkbox" name="s" value="r3"/></td>
                    <td><input  type="checkbox" name="s" value="r4"/></td>
                    <td><input  type="checkbox" name="s" value="r5"/></td>
                        <td><input type="checkbox" name="s" value="r6"/></td>
                    <td><input  type="checkbox" name="s" value="r7"/></td>
                    <td><input  type="checkbox" name="s" value="r8"/></td>
                    <td><input  type="checkbox" name="s" value="r9"/></td>
                    <td><input  type="checkbox" name="s" value="r10"/></td>
                </tr>
                     
                <tr>
                        <td>P</td>
                        <td><input  type="checkbox" name="p" value="p1" 
                                   /></td>
                    <td><input  type="checkbox" name="p" value="p2"/></td>
                    <td><input  type="checkbox" name="p" value="p3"/></td>
                    <td><input  type="checkbox" name="p" value="p4"/></td>
                    <td></td>
                        <td></td>
                    <td></td>
                    <td><input  type="checkbox" name="p" value="p5"/></td>
                    <td><input  type="checkbox" name="p" value="p6"/></td>
                    <td><input  type="checkbox" name="p" value="p7"/></td>
                </tr>
                <tr>
                        <td>Q</td>
                        <td><input  type="checkbox" name="p" value="Q1" 
                                   /></td>
                    <td><input  type="checkbox" name="p" value="Q2"/></td>
                    <td><input  type="checkbox" name="p" value="Q3"/></td>
                    <td><input  type="checkbox" name="p" value="Q4"/></td>
                    <td></td>
                        <td></td>
                    <td></td>
                    <td><input  type="checkbox" name="p" value="Q5"/></td>
                    <td><input  type="checkbox" name="p" value="Q6"/></td>
                    <td><input  type="checkbox" name="p" value="Q7"/></td>
                </tr>
                <tr>
                        <td>T</td>
                        <td><input  type="checkbox" name="p" value="t1" 
                                   /></td>
                    <td><input  type="checkbox" name="p" value="t2"/></td>
                    <td><input  type="checkbox" name="p" value="t3"/></td>
                    <td><input  type="checkbox" name="p" value="t4"/></td>
                    <td></td>
                        <td></td>
                    <td></td>
                    <td><input  type="checkbox" name="p" value="t5"/></td>
                    <td><input  type="checkbox" name="p" value="t6"/></td>
                    <td><input  type="checkbox" name="p" value="t7"/></td>
                </tr>
                <tr>
                    <td>   </td>
                </tr>
                <tr>
                    <td style="color: red;">Exit</td>
                </tr>
                
                <tr>
                    <td colspan="10" align="center">
                        
                        <label  align="center" style="color: gray; 
                                border: dotted; border-color: royalblue;  ">\\\\\\\\\\\\\\\\\\\\Screen///////////////////</label>
                    </td>
                </tr>
                <tr>
                    <td colspan="10" align="center">
                        <input type="submit" value="book"   /></td>
                </tr>
            </table>
            <p align="center"></p>
        </form>
        
        <span id="spn"></span>
    </body>
</html>
