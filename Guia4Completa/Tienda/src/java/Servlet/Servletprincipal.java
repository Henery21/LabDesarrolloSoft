/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author ernes
 */
public class Servletprincipal extends HttpServlet {

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
            out.println("<title>Servlet Servletprincipal</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Servletprincipal at " + request.getContextPath() + "</h1>");
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
       
         String accion = request.getParameter("accion");
        if (accion == null) {
            request.getRequestDispatcher("/index.html").forward(request, response);
        } else if (accion.equals("Login")) {
            request.getRequestDispatcher("/Login.html").forward(request, response);
        } else if (accion.equals("Panel")) {
             request.getRequestDispatcher("/Panel.html").forward(request, response);
        } else if (accion.equals("Contacto")) {
             request.getRequestDispatcher("/Contacto.html").forward(request, response);
        } 
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
        String accion = request.getParameter("accion");

        if (accion.equals("Login")) {
            String usuario = request.getParameter("usuario");
            String contrasenia = request.getParameter("contrasena");

            try (PrintWriter print = response.getWriter()) {
                if (usuario.equals("Admin") && contrasenia.equals("Root")) {
                    request.getRequestDispatcher("/Panel.html").forward(request, response);
                } else {
                    print.println("<!DOCTYPE html>");
                    print.println("<html>");
                    print.println("<head>");
                    print.println("<title> Login Tienda Lacteos </title>");
                    print.println("</head>");
                    print.println("<body>");
                    print.println("<h2>La contraseña o el usuario son erroneos</h2>");
                    print.println("</body>");
                    print.println("</html>");
                }
            }
        }
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
