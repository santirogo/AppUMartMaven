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
import vo.PedidosVO;
import vo.TiendaVO;

/**
 *
 * @author Carlos Alberto
 */
public class PedidosDAO {

    private Connection conexion;

    public PedidosDAO() {
        try {
            this.conexion = Conexion.getConnection();
        } catch (URISyntaxException ex) {
            Logger.getLogger(PedidosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insert(PedidosVO pedido) {
              
        try {
            //1.Establecer la consulta
            String consulta = "INSERT INTO Pedidos(ID, vendedor, comprador, productos, comentario, checker)"
                    + "VALUES(?,?,?,?,?,?)";
            //2. Crear el PreparedStament
            PreparedStatement statement
                    = this.conexion.prepareStatement(consulta);
            //-----------------------------------
            statement.setString(1, pedido.getID());
            statement.setString(2, pedido.getVendedor());
            statement.setString(3, pedido.getComprador());
            statement.setString(4, pedido.getProductos());
            statement.setString(5, pedido.getComentario());
            statement.setBoolean(6, pedido.getChecker());
            //--------------------------------------
            //3. Hacer la ejecucion
            statement.execute();
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
    public ArrayList<PedidosVO> listarPedidos(String correo){
        
        
        
        ArrayList<PedidosVO> respuesta = new ArrayList();
        String consulta = "SELECT * FROM Pedidos where Vendedor='"+correo+"'";
        try {
            //----------------------------
            //Statement
            Statement statement
                    = this.conexion.createStatement();
            //Ejecucion
            ResultSet resultado
                    = statement.executeQuery(consulta);
            //----------------------------
            //Recorrido sobre el resultado
            while (resultado.next()) {

                String id = resultado.getString("ID");
                String vendedor = resultado.getString("Vendedor");
                String comprador = resultado.getString("Comprador");
                String productos = resultado.getString("Productos");
                String comentario = resultado.getString("Comentario");
                Boolean checker = resultado.getBoolean("Checker");
                

                PedidosVO p = new PedidosVO();

                p.setID(id);
                p.setVendedor(vendedor);
                p.setComprador(comprador);
                p.setProductos(productos);
                p.setComentario(comentario);
                p.setChecker(checker);
                respuesta.add(p);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return respuesta;
    }

    
    
    
    public PedidosVO infoPedido(String ID){
    
    PedidosVO p = new PedidosVO();
        String consulta = "SELECT * FROM Pedidos where ID='"+ID+"'";
        try {
            
            //----------------------------
            //Statement
            Statement statement
                    = this.conexion.createStatement();
            //Ejecucion
            ResultSet resultado
                    = statement.executeQuery(consulta);
            //----------------------------
            //Recorrido sobre el resultado
            while (resultado.next()) {

                String id = resultado.getString("ID");
                String vendedor = resultado.getString("Vendedor");
                String comprador = resultado.getString("Comprador");
                String productos = resultado.getString("Productos");
                String comentario = resultado.getString("Comentario");
                Boolean checker = resultado.getBoolean("Checker");
                
                p.setID(id);
                p.setVendedor(vendedor);
                p.setComprador(comprador);
                p.setProductos(productos);
                p.setComentario(comentario);
                p.setChecker(checker);
                
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return p;
    
    
    }
    
    
    public void checker(String ID){
    
            String query = "UPDATE Pedidos SET checker=true where id='" + ID + "'";
        PreparedStatement preparedStmt = null;
        try {         
                    preparedStmt = this.conexion.prepareStatement(query);
                    preparedStmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
            
    
    }
    
    
    
    public Integer count(String Vendedor){
        
        int count =0;
        String query = "SELECT COUNT(*) FROM Pedidos where Vendedor='"+Vendedor+"'";
          try {

             PreparedStatement stmt = null;

            stmt = this.conexion.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            
            while(rs.next()){
                count=rs.getInt(1);
            }
            return count;
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        
    
    
    return null;
    }
    
    public boolean checkNoti(String correo){
         
        ArrayList<Boolean> array = new ArrayList<>();
        boolean x= true;
        
       try {
            String query = "SELECT checker from Pedidos where vendedor='"+correo+"'";

             PreparedStatement stmt = null;

            stmt = this.conexion.prepareStatement(query);
            
            ResultSet res = stmt.executeQuery();
            
            while(res.next()){
            
                x = res.getBoolean("checker");
                array.add(x);
            
            }
            
            for (int i = 0; i < array.size(); i++) {
               
                if (!array.get(i)) {
                    return array.get(i);
                }else if (i==array.size()) {
                    return true;
                }
           }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
         
       return false;

    }
    

}
