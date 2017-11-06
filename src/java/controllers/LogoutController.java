/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.LoggerModel;


/**
 *
 * @author Dear Kallu
 */
@WebServlet(name = "LogoutController", urlPatterns = {"/LogoutController"},
        asyncSupported = true)
public class LogoutController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LogoutController</title>");            
            out.println("</head>");
            out.println("<body>");
            //out.println("<h1>Servlet LogoutController at " + request.getContextPath() + "</h1>");
            
            HttpSession session=request.getSession();
            LoggerModel oblogger=new LoggerModel();
            oblogger.insertFromWebpage(session, "logout");
            
            Enumeration<String> e1= session.getAttributeNames();
            while(e1.hasMoreElements()==true)
            {
                String key=e1.nextElement();
                out.println("<br/>key="+key);
                out.flush();
                
                session.removeAttribute(key);
            }
            session.invalidate();
            
            out.println("<br/>session expired");
            //out.println("<br/><a href='index.jsp'>please go back to login page</a>");
            out.println("<progress id='progress' max='50'></progress>");
            out.flush();
            int i=0;
            
            while(i<=50)
            {
                out.println("<script type='text/javascript'>");
                out.println("document.getElementById('progress').value='"+i+"';");
                out.flush();
                out.println("</script>");
                try
                {
                    if(i==25)
                    {
                        out.println("<br/>session removed...");
                        out.flush();
                    }
                    Thread.sleep(100);
                }
                catch(Exception e)
                {
                    out.println(e);
                    out.flush();
                }
                out.println("</script>");
                i++;
            }
           
            out.println("<script type='text/javascript'>");
            out.println("window.location='index.jsp';");
            out.println("</script>");
            

            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
