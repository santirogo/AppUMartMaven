/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import com.google.gson.Gson;
import dao.CarritoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import vo.CarritoVO;
import vo.ProductoVO;

/**
 *
 * @author Carlos Alberto
 */
@WebServlet(name = "AgregarCarritoServlet", urlPatterns = {"/AgregarCarritoServlet"})
public class AgregarCarritoServlet extends HttpServlet {

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
        try(PrintWriter out = response.getWriter()){
            response.setContentType("application/json");
            //processRequest(request, response);
        
            CarritoDAO carritoDAO = new CarritoDAO();
            CarritoVO carritoVO = CarritoVO.getCarrito();
            ProductoVO producto = new ProductoVO();
//            HttpSession sesion = request.getSession();
//            ArrayList CarroSesion = (ArrayList) sesion.getAttribute("carrito");
             //ArrayList<ProductoVO> Carris = new Gson().fromJson(CarroSesion, ArrayList.class);
            

            
            
            String nombre= request.getParameter("nombre");
            String tienda= request.getParameter("tienda");
            int cantidad= Integer.parseInt(request.getParameter("cantidad"));
            String P = "";
            P=request.getParameter("opcion");
            
            if (P.equals("1")){
            HttpSession sesion = request.getSession();
            ArrayList CarroSesion = (ArrayList) sesion.getAttribute("carrito");
            
            ArrayList arregloCarro= new ArrayList();
            arregloCarro.add(nombre);
            arregloCarro.add(tienda);
            arregloCarro.add(cantidad);
            
            ArrayList<ProductoVO> Carro= new ArrayList();
            Carro=carritoDAO.Agregar(arregloCarro, CarroSesion);
            sesion = request.getSession();
            
                for (int i = 0; i < Carro.size(); i++) {
                    System.out.println(Carro.get(i).getNombre());
            System.out.println(Carro.get(i).getID());
            System.out.println(Carro.get(i).getTienda());
                }
            
            
            sesion.setAttribute("carrito", Carro);
            //sesion.setAttribute("carrito", new Gson().toJson(Carro));
            
        }
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
