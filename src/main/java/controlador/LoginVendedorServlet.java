/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.VendedorDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONObject;
import vo.VendedorVO;

/**
 *
 * @author Nicolas
 */
public class LoginVendedorServlet extends HttpServlet {

    JSONObject json;
    VendedorDAO dao;
    VendedorVO vo;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            json = new JSONObject();
            dao = new VendedorDAO();
            vo = new VendedorVO();
            HttpSession session = request.getSession();
            vo = (VendedorVO) session.getAttribute("vendedor");

            if (vo == null) {

                vo = new VendedorVO();
                session.setAttribute("vendedor", vo);

            }

            String correo = request.getParameter("correo");
            String password = request.getParameter("password");
            String celular = dao.buscarCelVendedor(correo);
            vo.setCorreo(correo);

            vo.setPassword(password);
            System.out.println("-------------------------" + correo + "---" + password);

            if (!dao.loggear(vo)) {
                json.put("confirmacion", "NAK");
                System.out.println("No se pudo loggear");
            } else {
                json.put("confirmacion", "ACK");
                session.setAttribute("correo", correo);
                session.setAttribute("celular", celular);
                

                System.out.println("OOOOKKKKKKKKKKKK");
            }

            out.print(json);

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
