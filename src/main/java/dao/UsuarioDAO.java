package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import util.Conexion;
import vo.UsuarioVO;

public class UsuarioDAO {
     private Connection conexion;

    public UsuarioDAO() {
        Conexion db = Conexion.getConexion();
        this.conexion = db.getConnection();
    }
    
    public boolean insertar(UsuarioVO usuario) {
        boolean resultado = false;
        try {
            System.out.println("entro al insetar");
            //1.Establecer la consulta
            String consulta = "INSERT INTO Usuarios VALUES(?,?,?,?,?)";
            //2. Crear el PreparedStament
            PreparedStatement statement
                    = this.conexion.prepareStatement(consulta);
            //-----------------------------------
            statement.setString(1, usuario.getCelular());
            statement.setString(2, usuario.getNombre());
            statement.setString(3, usuario.getCorreo());
            statement.setString(4, usuario.getPassword());
            statement.setDouble(5, usuario.getPuntuacion());
            //--------------------------------------
            //3. Hacer la ejecucion
            resultado = statement.execute();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return resultado;
    }
    
    
    public boolean editarNombre(UsuarioVO usuario) {
        boolean result = false;
        String query = "update Usuarios set Nombre = ? where Correo = ?";
        PreparedStatement preparedStmt = null;
        try {
            preparedStmt = this.conexion.prepareStatement(query);
            preparedStmt.setString(1, usuario.getNombre());
            preparedStmt.setString(2, usuario.getCorreo());
            
            if (preparedStmt.executeUpdate() > 0) {
                result = true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;
    }
    
    public boolean editarCelular(UsuarioVO usuario) {
        boolean result = false;
        String query = "update Usuarios set Celular = ? where Correo = ?";
        PreparedStatement preparedStmt = null;
        try {
            preparedStmt = this.conexion.prepareStatement(query);
            preparedStmt.setString(1, usuario.getCelular());
            preparedStmt.setString(2, usuario.getCorreo());
            
            if (preparedStmt.executeUpdate() > 0) {
                result = true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;
    }
    
    public boolean editarContrasena(UsuarioVO usuario) {
        boolean result = false;
        String query = "update Usuarios set Contrasena = ? where Correo = ?";
        PreparedStatement preparedStmt = null;
        try {
            preparedStmt = this.conexion.prepareStatement(query);
            preparedStmt.setString(1, usuario.getPassword());
            preparedStmt.setString(2, usuario.getCorreo());
            
            if (preparedStmt.executeUpdate() > 0) {
                result = true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;
    }
    
    public boolean borrar(UsuarioVO usuario) {
        boolean result = false;
        String query = "delete from Usuarios where Correo = ?";
        PreparedStatement preparedStmt = null;
        try {
            preparedStmt = this.conexion.prepareStatement(query);
            preparedStmt.setString(1, usuario.getCorreo());
            result = preparedStmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;
    }
    
    public boolean loggear(UsuarioVO usuario) {

        boolean res = false;
        String query = "select * from Usuarios where Correo = ? and Contrasena = ?";

        try {
            PreparedStatement preparedStmt = this.conexion.prepareStatement(query);

            preparedStmt.setString(1, usuario.getCorreo());
            preparedStmt.setString(2, usuario.getPassword());

            ResultSet rs = preparedStmt.executeQuery();

            if (rs.next()) {
                res = true;
            }

        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return res;
    }
}
