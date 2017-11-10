/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.EnviarMail;
import dao.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONObject;
import vo.UsuarioVO;

/**
 *
 * @author ayoro
 */
public class RegistroUsuarioServlet extends HttpServlet {
    private UsuarioDAO usuario;
    private EnviarMail correo;
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
        PrintWriter out = response.getWriter();
            String toSend = request.getParameter("correo");
            String partesCorreo[] = toSend.split("@");
            JSONObject json = new JSONObject();
            if (partesCorreo[1].equalsIgnoreCase("correo.usa.edu.co")) {
//                this.numero = (int) (Math.random()*10000)+1;
                this.correo = new EnviarMail();
                String cod = this.correo.getCod();
            try {
                EnviarMail.sendMail(toSend,cod);
            } catch (Exception ex) {
                Logger.getLogger(RegistroUsuarioServlet.class.getName()).log(Level.SEVERE, null, ex);
            }

                json.put("confirmacion", "ok");

                json.put("universidad", "si");
            } else {
                json.put("universidad", "no");
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        PrintWriter out = response.getWriter();
            this.usuario = new UsuarioDAO();
            int num = Integer.parseInt(request.getParameter("numero"));
            JSONObject json = new JSONObject();
            System.out.println("n1: "+num);
            System.out.println("n2: "+this.correo.getCod());
            if(num == Integer.parseInt(this.correo.getCod())){
                String correo = request.getParameter("correo");
                String nombre = request.getParameter("nombre");
                String pass = request.getParameter("pass");
                String celular = request.getParameter("celular");
                UsuarioVO user = new UsuarioVO();
                user.setCorreo(correo);
                user.setNombre(nombre);
                user.setPassword(pass);
                user.setCelular(celular);
                user.setPuntuacion(5);
                
                HttpSession session = request.getSession();
                session.setAttribute("correo", correo);

                boolean inserto = this.usuario.insertar(user);
                
                if (!inserto) {
                    json.put("confirmacion", "ok");
                }else{
                    json.put("confirmacion", "error");
                }
                json.put("coincidencia", "ok");
            }else{
                json.put("coincidencia", "error");
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
