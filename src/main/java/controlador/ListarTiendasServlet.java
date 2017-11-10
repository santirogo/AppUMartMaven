/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.TiendaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;
import vo.TiendaVO;

/**
 *
 * @author Nicolas
 */
public class ListarTiendasServlet extends HttpServlet {
    private ArrayList<TiendaVO>tiendas;
    private TiendaDAO t;
    private JSONObject json;
    private JSONArray array;

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
            this.t=new TiendaDAO();
            
            this.tiendas = t.listarTodo();
            
            array = new JSONArray();
            
            
            
            for (TiendaVO tienda : tiendas) {
                
            json = new JSONObject();
            

            json.put("id",tienda.getId());
            json.put("nombre", tienda.getNombre());
            json.put("vendedor", tienda.getVendedor());
            String punt = String.valueOf(tienda.getPuntuacion());
            json.put("puntuacion", punt);
            json.put("idfondo",tienda.getIdFondo());
            array.put(json);
            }
            JSONObject mainJson = new JSONObject();
            mainJson.put("tiendas",array);
            
            
            out.print(mainJson);
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
