/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dear Kallu
 */
public class LogoutModel 
{
    public String getLogoutButton(HttpSession session, 
            HttpServletResponse response,
            String actionName) throws Exception
    {
        String res="";
        Object ouser=session.getAttribute("user");
        if(ouser==null)
        {
            response.sendRedirect(actionName);
        }
        
        res="<form name='formlogout' method='post' action='"+actionName+"'>";
        res+="<input type='submit' name='btnlogoutsubmit' value='Logout'/>";
        res+="</form>";
        return res;
    }
    
}
