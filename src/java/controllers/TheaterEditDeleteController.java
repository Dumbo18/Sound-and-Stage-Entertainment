/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.TheaterModel;

/**
 *
 * @author Dear Kallu
 */
@WebServlet(name = "TheaterEditDeleteController", urlPatterns = {"/TheaterEditDeleteController"})
public class TheaterEditDeleteController extends HttpServlet {

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
            out.println("<title>Servlet TheaterEditDeleteController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TheaterEditDeleteController at " + request.getContextPath() + "</h1>");
            String operation = request.getParameter("operation");
            int id = Integer.parseInt(request.getParameter("id"));
            out.println("<br/>operation="+operation+","+id);
            if(operation.equals("delete"))
            {
                TheaterModel obt = new TheaterModel();
                String result = obt.deleteByTheaterCode(id);
                HttpSession session = request.getSession();
                session.setAttribute("result", result);
                response.sendRedirect("admin/CreateTheater.jsp");
                
                        
            }
            else if(operation.equals("edit"))
            {
                out.println("operation="+operation);
                TheaterModel obt=new TheaterModel();
                Map<String, String> map=obt.getOneRecordByTheaterCode(id);
                String form = "<form name='form1' method='post' action='TheaterEditController'>";
                form+="<input type='hidden' name='txttheatercode' value='"+id+"'/>";
                form +="<table border='1' align='center'> " +
                "<tr>" +
                "<td>Theater Name :</td> " +
                "<td><input type='text' name='txtname' required value='"+ map.get("NAME") +"' /></td> " +
                "</tr> " +
                "<tr> " +
                "<td>Theater Location :</td> " +
                "<td><input type='text' name='txtlocation' required value='"+map.get("LOCATION")+"' /></td> " +
                "</tr> " +
                "<tr> " +
                "<td colspan='2' align='center'><input type='submit' value='Register new theater'/></td> " +
                "</tr> " +
                "</table>"+
                        "</form>";
                
                
                out.println(form);
                
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
