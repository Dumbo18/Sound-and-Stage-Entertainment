/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package listeners;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 *
 * @author Dear Kallu
 */
public class MyContextListener implements ServletContextListener
{

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext sc=sce.getServletContext();
        sc.setAttribute("bookingpageopened", "false");
        System.out.println("context initialized and bookingpageopened is set to false...");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        ServletContext sc=sce.getServletContext();
        sc.removeAttribute("bookingpageopened");
        System.out.println("context destroyed and bookingpageopened is removed from servletcontext...");
    }
    
    
}
