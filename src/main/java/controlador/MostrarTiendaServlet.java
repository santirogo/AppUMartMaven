/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.PedidosDAO;
import dao.SendNotification;
import dao.TiendaDAO;
import dao.VendedorDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONArray;
import org.json.JSONObject;
import vo.TiendaVO;

/**
 *
 * @author Nicolas
 */
public class MostrarTiendaServlet extends HttpServlet {

    private TiendaDAO t;
    private TiendaVO vo;
    private JSONObject json;

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
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            this.t=new TiendaDAO();
            
            HttpSession mySession = request.getSession();
            String correo = (String)mySession.getAttribute("correo");
            String buleano= request.getParameter("boolean");
            
            SendNotification sender = new SendNotification();
            PedidosDAO pDAO = new PedidosDAO();
            VendedorDAO vDAO = new VendedorDAO();
            String celular = vDAO.buscarCelVendedor(correo);
            System.out.println("ceeeelluuuullaaarr de vendeeedoorr"+celular);
            this.vo = t.mostrarPorVendedor(celular);
            
           
            
            json = new JSONObject();
            
            json.put("id",vo.getId());
            json.put("nombre", vo.getNombre());
            System.out.println("Json nooooombreeeeeeee"+vo.getNombre());
            json.put("vendedor", vo.getVendedor());
            String punt = String.valueOf(vo.getPuntuacion());
            json.put("puntuacion", punt);
            json.put("idfondo",vo.getIdFondo());
            
            json.put("correo",correo);
            
            
            boolean check = pDAO.checkNoti(correo);
            
            if( check == false){
                json.put("boolean", "false");
                sender.send();
            }else{
                json.put("boolean", "true");
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(MostrarTiendaServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(MostrarTiendaServlet.class.getName()).log(Level.SEVERE, null, ex);
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