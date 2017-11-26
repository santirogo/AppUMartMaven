/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import vo.PedidosVO;
import dao.PedidosDAO;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author Diego Alvarez <diesazul96@hotmail.com>
 */

public class CalificacionesServlet extends HttpServlet {
    
    private ArrayList<PedidosVO> pedidos;
    private PedidosDAO p;
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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CalificacionesServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CalificacionesServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        
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
        
        System.out.println("ENTRE AL JODIDO SERVLET!!!");
        
        PrintWriter out = response.getWriter();
        HttpSession sesion = request.getSession();
        String correo = (String) sesion.getAttribute("correo");
        
        System.out.println("TU CORREO PANITA: "+correo);

        this.p=new PedidosDAO();

        this.pedidos = p.calificarPedidos(correo);

        System.out.println("TUS PEDIDOS OME: "+this.pedidos);
        
        array = new JSONArray();

        for (PedidosVO pedido : pedidos) {
            json = new JSONObject();
            
            json.put("id",pedido.getID());
            json.put("vendedor", pedido.getVendedor());
            json.put("comprador",pedido.getComprador());
            json.put("productos",pedido.getProductos());
            
            array.put(json);
        }
        
        JSONObject mainJson = new JSONObject();
        mainJson.put("pedidos",array);
        System.out.println("FUIMONOOOS MIJO");
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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            String id = request.getParameter("id");
            double cali =  Double.parseDouble(request.getParameter("cali"));
            String seller = request.getParameter("seller");
            System.out.println("EL PEDIDO ES: "+id+" CON CALIFICACIÓN: "+cali);

            this.p=new PedidosDAO();
            boolean califico = p.calificar(id,cali,seller);

            json = new JSONObject();
            json.put("califico", califico);
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