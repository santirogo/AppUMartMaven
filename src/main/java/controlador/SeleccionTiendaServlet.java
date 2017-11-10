/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.ProductoDAO;
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
import vo.ProductoVO;
import vo.TiendaVO;

/**
 *
 * @author ayoro
 */
public class SeleccionTiendaServlet extends HttpServlet {
    private ProductoDAO producto;
    private TiendaDAO tienda;
    private int idT;
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
        
        int idTienda = Integer.parseInt(request.getParameter("nombre"));
        this.idT = idTienda;
        System.out.println("Holaaaaa recibi id :* "+this.idT);
        
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
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            this.producto = new ProductoDAO();
            this.tienda = new TiendaDAO();
            System.out.println("POSTTTTTTTT");
            
//            String nombreTienda = request.getParameter("nombre");
//            int idTienda = 1;
            ArrayList <ProductoVO> productos = this.producto.productosPorTienda(this.idT);
            String Infotienda = this.tienda.NombreTienda(this.idT);
            String Logotienda = this.tienda.LogoTienda(this.idT);
            System.out.println(Infotienda);
            System.out.println(Logotienda);
            JSONArray jArray = new JSONArray();
            
            for (int i = 0; i < productos.size(); i++) {
                JSONObject objeto = new JSONObject();
                objeto.put("nombre", productos.get(i).getNombre());
                objeto.put("precio", productos.get(i).getPrecio());
                objeto.put("ruta", productos.get(i).getRutaImagen());
                
                jArray.put(objeto);
            }
            
            
            JSONObject fin = new JSONObject();
            fin.put("arreglo", jArray);
            fin.put("tienda", this.idT);
            fin.put("empresa", Infotienda);
            fin.put("logo", Logotienda);
            
            out.print(fin);
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
