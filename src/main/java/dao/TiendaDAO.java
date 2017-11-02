package dao;

import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import util.Conexion;
import vo.ProductoVO;
import vo.TiendaVO;

/**
 *
 * @author Carlos Alberto
 */
public class TiendaDAO {

    private Connection conexion;

    public TiendaDAO() {
        Conexion db = Conexion.getConexion();
        this.conexion = db.getConnection();
    }

    public boolean insertar(TiendaVO tienda) {
        Boolean b;

        try {

            String query = " insert into Tiendas (id,nombre, vendedor, puntuacion, idfondo)"
                    + " values (?, ?, ?, ?, ?)";

            PreparedStatement preparedStmt = this.conexion.prepareStatement(query);

            preparedStmt.setInt(1, tienda.getId());
            preparedStmt.setString(2, tienda.getNombre());
            preparedStmt.setString(3, tienda.getVendedor());
            preparedStmt.setDouble(4, tienda.getPuntuacion());
            preparedStmt.setString(5, tienda.getIdFondo());

            preparedStmt.execute();

            System.out.println("You made it, the insertion is ok!");
            b = true;
            return b;

        } catch (SQLException e) {
            System.out.println("Failed to make insertion!");
            b = false;
            e.printStackTrace();
        }
        return b;
    }

    public ArrayList<TiendaVO> listarTodo() {
        //1.Consulta
        ArrayList<TiendaVO> respuesta = new ArrayList();
        String consulta = "SELECT * FROM Tiendas";
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

                int id = resultado.getInt("id");
                String nombre = resultado.getString("nombre");
                String vendedor = resultado.getString("vendedor");
                double puntuacion = resultado.getDouble("puntuacion");
                String idfondo = resultado.getString("idfondo");

                TiendaVO t = new TiendaVO();

                t.setId(id);
                t.setNombre(nombre);
                t.setVendedor(vendedor);
                t.setPuntuacion(puntuacion);
                t.setIdFondo(idfondo);
                respuesta.add(t);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return respuesta;
    }

    public int calcularId() {

        try {

            String query = "SELECT MAX(ID) as id FROM TIENDAS";

            Statement stmt = null;

            stmt = this.conexion.createStatement();
            ResultSet res = stmt.executeQuery(query);
            if (res.next()) {
                return res.getInt("id") + 1;
            } else {
                return 1;
            }

        } catch (SQLException e) {
            System.out.println("Failed to make insertion!");
            e.printStackTrace();
        }
        return 0;
    }

    public String buscarCelVendedor(String correo) {

        try {

            String query = "SELECT celular from Vendedores where correo=?";

            PreparedStatement stmt = null;

            stmt = this.conexion.prepareStatement(query);

            stmt.setString(1, correo);
            ResultSet res = stmt.executeQuery();

            if (res.next()) {
                return res.getString("celular");
            } else {
                return null;
            }

        } catch (SQLException e) {
            System.out.println("Failed to make insertion!");
            e.printStackTrace();
        }
        return null;
    }

    public TiendaVO mostrarPorVendedor(String celular) {
        TiendaVO t = new TiendaVO();
        //1.Consulta
        String query = "SELECT * FROM Tiendas where vendedor = ?";
        try {
            //----------------------------
            //Statement
            PreparedStatement stmt = null;

            stmt = this.conexion.prepareStatement(query);

            stmt.setString(1, celular);
            //----------------------------
            //Recorrido sobre el resultado
            ResultSet res = stmt.executeQuery();
            while (res.next()) {

                int id = res.getInt("id");
                String nombre = res.getString("nombre");
                String vendedor = res.getString("vendedor");
                double puntuacion = res.getDouble("puntuacion");
                String idfondo = res.getString("idfondo");

                t.setId(id);
                t.setNombre(nombre);
                t.setVendedor(vendedor);
                t.setPuntuacion(puntuacion);
                t.setIdFondo(idfondo);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return t;
    }
    
    public boolean editarNombre(TiendaVO tienda) {
        boolean result = false;
        String query = "update Tiendas set Nombre = ? where id = ?";
        PreparedStatement preparedStmt = null;
        try {
            preparedStmt = this.conexion.prepareStatement(query);
            preparedStmt.setString(1, tienda.getNombre());
            preparedStmt.setInt(2, tienda.getId());
            
            if (preparedStmt.executeUpdate() > 0) {
                result = true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;
    }
    
    public boolean editarFondo(TiendaVO tienda) {
        boolean result = false;
        String query = "update Tiendas set idfondo = ? where id = ?";
        PreparedStatement preparedStmt = null;
        try {
            preparedStmt = this.conexion.prepareStatement(query);
            preparedStmt.setString(1, tienda.getIdFondo());
            preparedStmt.setInt(2, tienda.getId());
            
            if (preparedStmt.executeUpdate() > 0) {
                result = true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;
    }
    
    public int obtenerId(String celular){
        try {

            String query = "SELECT id FROM TIENDAS WHERE vendedor = '"+celular+"'";

            Statement stmt = null;

            stmt = this.conexion.createStatement();
            ResultSet res = stmt.executeQuery(query);
            if(res.next()){
                return res.getInt("id");
            }else{
                return 0;
            }
 

        } catch (SQLException e) {
            System.out.println("Failed to make insertion!");
            e.printStackTrace();
        }
        return 0;
    }
    
    
    public String NombreTienda(int id) {

        String consulta = "select nombre from Tiendas where id=" + id;
        String nombreEmpresa="";
        try {
            //----------------------------
            //Statement
            Statement statement
                    = this.conexion.createStatement();
            //Ejecucion
            ResultSet resultado
                    = statement.executeQuery(consulta);
            //----------------------------
            while(resultado.next()){
            nombreEmpresa = resultado.getString("nombre");
            }
            return nombreEmpresa;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;

    }
    
        public String LogoTienda(int id) {

        String consulta = "select idfondo from Tiendas where id=" + id;
        String nombreEmpresa="";
        try {
            //----------------------------
            //Statement
            Statement statement
                    = this.conexion.createStatement();
            //Ejecucion
            ResultSet resultado
                    = statement.executeQuery(consulta);
            //----------------------------
            while(resultado.next()){
            nombreEmpresa = resultado.getString("idfondo");
            }
            return nombreEmpresa;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;

    }
    
}
