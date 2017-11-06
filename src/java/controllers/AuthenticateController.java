/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.LoggerModel;
import tp.UserMasterBean;

/**
 *
 * @author Dear Kallu
 */
@WebServlet(name = "AuthenticateController", urlPatterns = {"/AuthenticateController"})
public class AuthenticateController extends HttpServlet {

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
            out.println("<title>Servlet AuthenticateController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AuthenticateController at " + request.getContextPath() + "</h1>");
            
            String username=request.getParameter("txtusername");
            String password=request.getParameter("txtpassword");
            int usertype=Integer.parseInt(request.getParameter("cmbusertype"));
            
            tp.UserMasterBean obum=new UserMasterBean();
            obum.setUsername(username);
            obum.setPassword(password);
            obum.setUsertype(usertype);
            boolean check=obum.Authenticate();
            if(check==true)
            {
                java.util.Map<String,String> user=obum.getOneRecordValue();
                HttpSession session=request.getSession();
                session.setAttribute("user", user);
                LoggerModel oblogger=new LoggerModel();
                oblogger.insertFromWebpage(session, "login");
            }
            if(check==true && usertype==0)
            {
                RequestDispatcher rd=request.getRequestDispatcher("admin/AdminMenu.jsp");
                rd.forward(request, response);
            }
            else if(check==true && usertype==1)
            {
                RequestDispatcher rd=request.getRequestDispatcher("pos/POSMenu.jsp");
                rd.forward(request, response);
                
            }
            else
            {
                out.println("invalid username/password according to usertype selected");
                out.println("<hr/>");
                RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
                rd.include(request, response);
                
            }
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
