/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package Modelo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JComponent;
import javax.swing.JOptionPane;
/**
 *
 * @author Ale
 */
public class UsuarioD {
    private Connection conexion;

    public UsuarioD() {
        conexion = Conexion.getConnection();
    }

    public boolean agregarUsuario(Usuario usuario) {
        boolean resultado = false;
        try {
            PreparedStatement ps = conexion.prepareStatement("INSERT INTO tablausers (ID, nombre, apellido, edad, rol) VALUES (?, ?, ?, ?, ?)");
            ps.setInt(1, usuario.getID());
            ps.setString(2, usuario.getNombre());
            ps.setString(3, usuario.getApellido());
            ps.setInt(4, usuario.getEdad());
            ps.setString(5, usuario.getRol());
            resultado = ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return resultado;
    }

    public List<Usuario> seleccionarUsuarios() {
        List<Usuario> usuarios = new ArrayList<>();
        try {
            PreparedStatement ps = conexion.prepareStatement("SELECT * FROM tablausers");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                int edad = rs.getInt("edad");
                String rol = rs.getString("rol");
                Usuario usuario = new Usuario(id, nombre, apellido, edad, rol);
                usuarios.add(usuario);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return usuarios;
    } 
    public boolean borrarUsuario(int id) {
        boolean borrado = false;
        try {
            PreparedStatement ps = conexion.prepareStatement("DELETE FROM tablausers WHERE ID = ?");
            ps.setInt(1, id);
            borrado = ps.executeUpdate() > 0;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        return borrado;
        }  
    
        public boolean editarUsuario(Usuario usuario) {
        boolean resultado = false;
        try {
            PreparedStatement ps = conexion.prepareStatement("UPDATE tablausers SET nombre = ?, apellido = ?, edad = ?, rol = ? WHERE ID = ?");
            ps.setString(1, usuario.getNombre());
            ps.setString(2, usuario.getApellido());
            ps.setInt(3, usuario.getEdad());
            ps.setString(4, usuario.getRol());
            ps.setInt(5, usuario.getID());
            resultado = ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return resultado;
    }    
        
    public List<Asesor> seleccionarAsesores() {
        List<Asesor> asesores = new ArrayList<>();
        try {
            PreparedStatement ps = conexion.prepareStatement("SELECT * FROM tablausers WHERE rol= 'Asesor';");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                int edad = rs.getInt("edad");
                String rol = rs.getString("rol");
                Asesor asesor = new Asesor(id, nombre, apellido, edad, rol);
                asesores.add(asesor);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return asesores;
    } 
   
    
    
}
