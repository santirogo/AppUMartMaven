/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.EnviarMail;
import dao.VendedorDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class RegistrarVendedorServlet extends HttpServlet {

    private VendedorDAO dao;
    private VendedorVO vo;
    private JSONObject json;
    private EnviarMail sender;
    private String correo;
    private String celular;
    HttpSession session;

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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

            System.out.println("Entre al geeeeeeeeeeeeeeeeeet");

            if (request.getParameter("codigo") != null) {
                System.out.println("I got the coooooode");

                if (request.getParameter("codigo").equals(sender.getCod())) {
                    dao.insertar(vo);
                    json.put("registro", "ok");
                    session.setAttribute("correo", correo);
                    session.setAttribute("celular", celular);

                } else {
                    json.put("registro", "fail");

                }

            }

            out.print(json);
        
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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            System.out.println("Entre al servleeeeeeeeeeeeet");
            
            json = new JSONObject();
            dao = new VendedorDAO();
            correo = request.getParameter("correo");
            celular = request.getParameter("celular");
            String nombre = request.getParameter("nombre");
            String password = request.getParameter("password");
            session = request.getSession();
            session.setAttribute("correo", correo);
            session.setAttribute("celular", celular);
            vo = (VendedorVO) session.getAttribute("vendedor");

            if (vo == null) {

                vo = new VendedorVO();
                session.setAttribute("vendedor", vo);

            }
            vo.setCorreo(correo);
            vo.setCelular(celular);
            vo.setNombre(nombre);
            vo.setPassword(password);
            String array[] = correo.split("@");

            if (dao.buscar(vo)) {
                json.put("existe", "si");
            } else if (array.length == 1 || !array[1].equals("correo.usa.edu.co")) {
                json.put("sergista", "no");
                System.out.println("No es de la sergioooooooo");

            } else {
                json.put("existe", "no");

                json.put("sergista", "si");

                sender = new EnviarMail();
                String cod = sender.getCod();
            try {
                //session.setAttribute("codigo", cod);
                EnviarMail.sendMail(correo,cod);
                //if (request.getParameter("codigo") != null) {
                //  System.out.println("I got the coooooode");

                //if (request.getParameter("codigo").equals(sender.getCod())) {
                //  dao.insertar(vo);
                //json.put("registro", "ok");
                //} else {
                //  json.put("registro", "fail");
                //}
            } catch (Exception ex) {
                Logger.getLogger(RegistrarVendedorServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            }
            out.print(json);

        

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
