/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tk.mmagames.validadoradmin;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tk.mmagames.validador.Usuario;
import tk.mmagames.validador.ValidadorUsuarios;

/**
 *
 * @author cice
 */
public class ValidadorAdminServlet extends HttpServlet {

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

        //recoger datos
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        //procesado
        Admin a1 = new Admin(email, password);

        try {
            ValidadorAdmin va = new ValidadorAdmin();
            boolean correcto = va.validarAdmin(a1);

            if (correcto == true) {
                //usuario correcto
                System.out.println("correcto");
                HttpSession misession = request.getSession(true);
                misession.setMaxInactiveInterval(60);
                misession.setAttribute("validado", true);

                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/indexadmin.jsp");
                dispatcher.forward(request, response);

            } else {
                // usuario incorrecto
                System.out.println("incorrecto");

                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/validadorusuarios.jsp");
                request.setAttribute("mensaje", "El usuario y/o la contraseña son erroneos");
                dispatcher.forward(request, response);

            }

        } catch (Exception e) {
            //error servidor
            System.out.println("error");
            e.printStackTrace();
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/error.html");
            dispatcher.forward(request, response);

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
