/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import com.google.gson.Gson;
import dao.CarritoDAO;
import dao.EnviarMail;
import dao.ProductoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONArray;
import org.json.JSONObject;
import vo.ProductoVO;

/**
 *
 * @author Carlos Alberto
 */
@WebServlet(name = "InfoCheckOutServlet", urlPatterns = {"/InfoCheckOutServlet"})
public class InfoCheckOutServlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */

            CarritoDAO carrito = new CarritoDAO();
            ProductoVO productos = new ProductoVO();
            ArrayList<ProductoVO> Arreglo = new ArrayList();
            JSONArray array = new JSONArray();
            JSONObject coment = new JSONObject();
            JSONObject fin = new JSONObject();
            EnviarMail mail = new EnviarMail();
            HttpSession session = request.getSession();
            
            ArrayList<ProductoVO> CarroSesion = (ArrayList) session.getAttribute("carrito");
            // ArrayList<ProductoVO> Carro = new Gson().fromJson(CarroSesion, ArrayList.class);

            Arreglo = CarroSesion;
            //Arreglo =(ArrayList<ProductoVO>) session.getAttribute("carrito");
            
            
            
            String opcion="";

            opcion = request.getParameter("opcion1");
            String comentario = request.getParameter("comment");

//            for (int i = 0; i < Arreglo.size(); i++) {
//                JSONObject json = new JSONObject();
//                productos = (ProductoVO) Arreglo.get(i);
//
//                        //json.put("ID", "Papitas2");
//                        json.put("nombre", "Papitas");
//                        json.put("cantidad", "2");
//                        json.put("precio", "100");
//                        json.put("Comentario", comentario);
//                        array.put(json);
//            }
//            coment.put("Comentario", comentario);
//            array.put(coment);
//            fin.put("Productos", array);
//            out.print(fin);
            System.out.println(CarroSesion.get(0).getNombre());
            System.out.println("opcion1:"+opcion);
            if (opcion.equals("3")) {
//                productos.setNombre("Papitas");
//            productos.setCantidad(2);
//            productos.setPrecio(100);
//            productos.setID("Papitas1");
//            productos.setTienda(1);
//                
//                Arreglo.add(productos);
                for (int i = 0; i < Arreglo.size(); i++) {
                    String correo = "";
                    ArrayList<String> cadena = new ArrayList();
                    ArrayList<ProductoVO> prod = new ArrayList();
                    prod.add(Arreglo.get(i));
                    Arreglo.remove(i);

                    for (int j = 0; j < Arreglo.size(); j++) {

                        if (Arreglo.get(j) != null) {
                            if (Arreglo.get(i).getTienda() == Arreglo.get(j).getTienda()) {
                                prod.add(Arreglo.get(j));
                                Arreglo.remove(j);
                            }
                        }
                    }

                    
                    for (int j = 0; j < prod.size(); j++) {
                        String orden = "\n"+"Producto: " + prod.get(i).getNombre() + "\n"+"Cantidad: " + Integer.toString(prod.get(i).getCantidad()) + "\n"+"Precio: " + Integer.toString(prod.get(i).getPrecio());
                        //String orden = "" + "Papitas" + "" + "2" + "" + "100";
                        cadena.add(orden);
                        cadena.add(comentario);
                    }
                    
                    for (int j = 0; j < prod.size(); j++) {
                        
                    }
                    
                    
                    System.out.println("idtienda:"+prod.get(i).getTienda());
                    correo = mail.CorreoTienda(prod.get(i).getTienda());
                    //correo = mail.CorreoTienda(1);
                    System.out.println("Correo:"+correo);
                    
                    mail.sendCheckOut(correo, cadena);
                    
                    session.setAttribute("carrito", null);

                }
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
