/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import util.Conexion;
import vo.CarritoVO;
import vo.ProductoVO;

/**
 *
 * @author Carlos Alberto
 */
public class CarritoDAO {

    private Connection conexion;
    private CarritoVO carritoVO = new CarritoVO();

    public CarritoDAO() {
        try {
            this.conexion = Conexion.getConnection();
        } catch (URISyntaxException ex) {
            Logger.getLogger(CarritoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList Agregar(ArrayList producto, ArrayList<ProductoVO> sesion) {
        boolean b = false;

        int x = 0;
        if (sesion != null) {
            for (int i = 0; i < sesion.size(); i++) {
                this.carritoVO.agregarProducto(sesion.get(i));
            }
        }
        System.out.println(producto.get(1));
        String query = "select id from Tiendas where nombre='" + producto.get(1) + "'";

        try {
            int id = 0;

            //PreparedStatement preparedStmt = null;
            Statement st = this.conexion.createStatement();
            ResultSet rs = st.executeQuery(query);

            ArrayList carro = new ArrayList();
            ProductoVO prod = new ProductoVO();

            while (rs.next()) {
                id = rs.getInt(1);
            }

            query = "select * from productos where nombre='" + producto.get(0) + "' and tienda=" + id;

            rs = st.executeQuery(query);

            if (rs != null) {

                if (this.carritoVO.getProductos() == null) { //Revisa si esta vacio para agregar
                    while (rs.next()) {

                        prod.setID(rs.getString(1));
                        prod.setNombre(rs.getString(2));
                        prod.setCategoria(rs.getString(3));
                        prod.setPrecio(rs.getInt(4));
                        prod.setCantidad((int) producto.get(2));
                        prod.setTienda(rs.getInt(7));
                        System.out.println("AIDI:" + rs.getInt(7));

                    }
                    carritoVO.agregarProducto(prod);
                    b = true;
                    return carritoVO.getProductos();

                } else if (this.carritoVO.getProductos() != null) {
                    int i = 0;
                    int a = 0;
                    for (i = 0; i < carritoVO.getProductos().size(); i++) {
                        //Aumenta la cantidad del producto ya ingresado
                        if (producto.get(0).equals(carritoVO.getProductos().get(i).getNombre())) {
                            int cant = carritoVO.getProductos().get(i).getCantidad();
                            int cant2 = (int) producto.get(2);
                            carritoVO.getProductos().get(i).setCantidad(cant + cant2);

                        } else {
                            a++;
                        }

                    }

                    if (a == carritoVO.getProductos().size()) {

                        while (rs.next()) {

                            prod.setID(rs.getString(1));
                            prod.setNombre(rs.getString(2));
                            prod.setCategoria(rs.getString(3));
                            prod.setPrecio(rs.getInt(4));
                            prod.setCantidad((int) producto.get(2));
                            prod.setTienda(rs.getInt(7));

                        }
                        carritoVO.agregarProducto(prod);
                        b = true;
                        return carritoVO.getProductos();

                    }

                }

            } else {
                System.out.println("PRODUCTO NO ENCONTADO :/");

            }

        } catch (SQLException e) {
            System.out.println("Failed to make insertion!");
            e.printStackTrace();
        }

        return this.carritoVO.getProductos();
    }

    public String Precio() {
        ProductoVO productos = new ProductoVO();
        ArrayList<ProductoVO> productosVO = carritoVO.getProductos();
        int x = 0;
        
        
        for (int i = 0; i < productosVO.size(); i++) {
            productos = productosVO.get(i);
            x = productos.getPrecio() + x;
        }

        String xs = Integer.toString(x);
        return xs;
    }

    public String Cantidad() {
        ArrayList<ProductoVO> productosVO = carritoVO.getProductos();
        int x = productosVO.size();

        String xs = Integer.toString(x);
        return xs;
    }

    public String PrecioTotal(ArrayList<ProductoVO> CarroSesion) {

        for (int i = 0; i < CarroSesion.size(); i++) {
            this.carritoVO.agregarProducto(CarroSesion.get(i));
        }
        int x = 0;
        for (int i = 0; i < carritoVO.getProductos().size(); i++) {
            x = x + carritoVO.getProductos().get(i).getCantidad();
        }
        String xs = Integer.toString(x);
        return xs;

    }

    public void borrar(String ID, ArrayList<ProductoVO> CarroSesion) {
        for (int i = 0; i < CarroSesion.size(); i++) {
            this.carritoVO.agregarProducto(CarroSesion.get(i));
        }

        for (int i = 0; i < carritoVO.getProductos().size(); i++) {

            if (ID.equals(carritoVO.getProductos().get(i).getID())) {
                carritoVO.getProductos().remove(i);

            }

        }

    }

}
