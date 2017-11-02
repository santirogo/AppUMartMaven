/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.ProductoDAO;
import dao.TiendaDAO;
import dao.VendedorDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONArray;
import org.json.JSONObject;
import vo.ProductoVO;
import vo.TiendaVO;
import vo.VendedorVO;

/**
 *
 * @author Nicolas
 */
public class ProductosBodegaServlet extends HttpServlet {

    private ArrayList<ProductoVO> vo;
    private ProductoDAO dao;
    private TiendaDAO tienda;
    private TiendaVO tVO;
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
        PrintWriter out = response.getWriter();

            this.dao = new ProductoDAO();
            HttpSession mySession = request.getSession();
            String correo = (String) mySession.getAttribute("correo");
            VendedorDAO vDAO = new VendedorDAO();
            String celular = vDAO.buscarCelVendedor(correo);
            
            this.tienda = new TiendaDAO();
            this.tVO = tienda.mostrarPorVendedor(celular);
            int id = tVO.getId();

            this.vo = dao.productosPorTienda(id);

            array = new JSONArray();

            for (ProductoVO producto : vo) {

                json = new JSONObject();

                json.put("nombre", producto.getNombre());
                json.put("precio", producto.getPrecio());
                json.put("categoria", producto.getCategoria());
                json.put("cantidad", producto.getCantidad());
                json.put("imagen", producto.getRutaImagen());
                array.put(json);
            }
            JSONObject mainJson = new JSONObject();
            mainJson.put("productos", array);

            out.print(mainJson);
        
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
