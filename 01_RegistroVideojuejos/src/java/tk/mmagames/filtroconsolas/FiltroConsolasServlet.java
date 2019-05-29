/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tk.mmagames.filtroconsolas;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tk.mmagames.filjuegos.FiltroJuegos;

/**
 *
 * @author cice
 */
public class FiltroConsolasServlet extends HttpServlet {

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
        String plataforma = request.getParameter("plataforma");
        
        try {
            FiltroConsolas gestor = new FiltroConsolas();
            ResultSet filcon = gestor.getConsolas(plataforma);
            System.out.println("TODO CORRECTO");
            //Forward
            RequestDispatcher dispatcher;
            if (plataforma.equals("Ps4")){
                dispatcher = getServletContext().getRequestDispatcher("/consolasps4.jsp");
            } else if(plataforma.equals("Xbox One")){
                 dispatcher = getServletContext().getRequestDispatcher("/consolasxbox.jsp");
            }else if(plataforma.equals("Nintendo Switch")){
                
                dispatcher = getServletContext().getRequestDispatcher("/consolasswitch.jsp");
            }
            
            else {
                dispatcher = getServletContext().getRequestDispatcher("/incorrecto.html");
            }
            request.setAttribute("datos",filcon);
            dispatcher.forward(request, response);
        } catch (Exception e){
            e.printStackTrace();
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
