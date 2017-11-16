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

/**
 *
 * @author ayoro
 */
public class AgregarProductoServlet extends HttpServlet {

    private ProductoDAO producto;
    private ArrayList<String> categorias;
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
            
            this.producto = new ProductoDAO();
            /* TODO output your page here. You may use following sample code. */
            String nombre = request.getParameter("nombre"); 
            String categoria = request.getParameter("categoria");
            int precio = Integer.parseInt(request.getParameter("precio"));
            int cant = Integer.parseInt(request.getParameter("cantidad"));
            int idTienda = Integer.parseInt(request.getParameter("tienda"));
            String imag = request.getParameter("imagen");
            
            ProductoVO productoVO = new ProductoVO();
            JSONObject json = new JSONObject();
            
            
            
            //switch(nombre){
                
                
                    
            productoVO.setNombre(nombre);
            productoVO.setCategoria(categoria);
            productoVO.setPrecio(precio);
            
            if (!this.producto.insertar(productoVO)) {
                json.put("confirmacion","NAK");
                System.out.println("No se pudo agregar producto");
            } else {
                json.put("confirmacion","ACK");
                System.out.println("Producto agregado exitosamente");
            }
            
            out.print(json);
            productoVO.setCantidad(cant);
            productoVO.setTienda(idTienda);
            productoVO.setRutaImagen(imag);

        
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
            this.producto = new ProductoDAO();
            this.categorias = producto.getCategorias();

            array = new JSONArray();

            for (String cat : categorias) {

                json = new JSONObject();

                json.put("cat", cat);
                array.put(json);
            }
            JSONObject mainJson = new JSONObject();
            mainJson.put("categorias", array);

            out.print(mainJson);
        

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
//        processRequest(request, response);

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            System.out.println("PPPOOOOOOOOOOSSSSSSSSSTTTTTT");
            this.producto = new ProductoDAO();
            /* TODO output your page here. You may use following sample code. */
            String nombre = request.getParameter("nombre");
            String categoria = request.getParameter("categoria");

            int precio = -1;
            int cantidad = -1;
            try {
                precio = Integer.parseInt(request.getParameter("precio"));
                cantidad = Integer.parseInt(request.getParameter("cantidad"));
            } catch (NumberFormatException e) {

            }

            String imagen = request.getParameter("imagen");
            //int idTienda = Integer.parseInt(request.getParameter("tienda"));
            HttpSession mySession = request.getSession();
            String correo = (String) mySession.getAttribute("correo");
            VendedorDAO vDAO = new VendedorDAO();
            String celular = vDAO.buscarCelVendedor(correo);
            this.tienda = new TiendaDAO();
            this.tVO = tienda.mostrarPorVendedor(celular);
            int idTienda = tVO.getId();

            ProductoVO productoVO = new ProductoVO();
            JSONObject json = new JSONObject();

            //switch(nombre){
            productoVO.setID(nombre+Integer.toString(idTienda));
            productoVO.setNombre(nombre);
            productoVO.setCategoria(categoria);
            productoVO.setPrecio(precio);
            productoVO.setCantidad(cantidad);
            productoVO.setTienda(idTienda);
            productoVO.setRutaImagen(imagen);

            if (precio == -1 || cantidad == -1) {
                json.put("confirmacion", "NAK");
            } else if (!this.producto.insertar(productoVO)) {
                json.put("confirmacion", "NAK");
                System.out.println("No se pudo agregar producto");
            } else {
                json.put("confirmacion", "ACK");
                System.out.println("Producto agregado exitosamente");
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
