/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONObject;
import vo.UsuarioVO;

/**
 *
 * @author ayoro
 */
public class EditarCompradorServlet extends HttpServlet {
    private UsuarioDAO usuario;
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
        PrintWriter out = response.getWriter();
            this.usuario = new UsuarioDAO();
            JSONObject json = new JSONObject();
            int opcion = -1;
            try {
                opcion = Integer.parseInt(request.getParameter("opcion"));
            } catch (Exception e) {
                json.put("error", "numero");
            }
            String correo = request.getParameter("correo");
            
            if (opcion == 1) {
                String nombre = request.getParameter("nombre");
                UsuarioVO u = new UsuarioVO();
                u.setNombre(nombre);
                u.setCorreo(correo);
                this.usuario.editarNombre(u);
            }else if(opcion == 2){
                String celular = request.getParameter("celular");
                UsuarioVO u = new UsuarioVO();
                u.setCelular(celular);
                u.setCorreo(correo);
                this.usuario.editarCelular(u);
            }else if(opcion == 3){
                String contrasena = request.getParameter("contrasena");
                UsuarioVO u = new UsuarioVO();
                u.setPassword(contrasena);
                u.setCorreo(correo);
                this.usuario.editarContrasena(u);
            }
            
            
            
            System.out.println("opcion: "+opcion);
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
